import json
import pathlib
import os
import re


OUTPUT_DIR = "out"

os.makedirs(OUTPUT_DIR, exist_ok=True)


def parse_file(file: pathlib.Path):
    _class = {}
    enums = {}
    __enum = None
    __class = None
    function = None
    params_w_desc = []
    _return = None
    example = ""
    group = ""
    description = ""
    lookback_ref = []
    with open(file) as f:
        for index, line in (line_enum := enumerate(f)):
            lookback_ref.append(line.strip())
            line = line.strip()
            if line.startswith("class"):
                __class = line.split(" ")[1].strip("{").strip()
                _class[__class] = {}
                continue
            if line.startswith("enum "):
                __enum = line.split(" ")[1].strip("{").strip()
                enums[__enum] = {
                    "params": [],
                    "desc": "*".join(lookback_ref[2].strip().split("*")[1:]).strip(),
                }
                lookback_ref = []
            if __enum:
                text = ""
                while True:
                    idx, text = next(line_enum)
                    text = text.strip()
                    if text == "};":
                        break
                    enums[__enum]["params"].append(
                        {
                            "param": text.strip().split(" ")[0].strip(",").strip(),
                            "desc": text.strip().split("//!<")[1].strip(),
                        }
                    )
                __enum = None
                continue

            if __class:
                lookback_ref = []  # we don't need to store previous lines for classes
                if line.startswith("/**"):
                    idx, description = next(line_enum)
                    description = "*".join(description.strip().split("*")[1:]).strip()
                    continue
                if line.startswith("* \\ingroup"):
                    group = line.split(" ")[2]
                    continue
                if line.startswith("* @code"):
                    _text = ""
                    while True:
                        idx, text = next(line_enum)
                        text = text.strip()
                        if text.startswith("* @endcode"):
                            break
                        _text += "*".join(text.split("*")[1:]).strip() + "\n"
                    example = _text
                    continue
                if line.startswith("* @param"):
                    raw = line.split(" ")
                    param = raw[2]
                    desc = " ".join(raw[4:])
                    optional = False
                    if "<b>(optional)</b>" in desc:
                        optional = True
                        desc = desc.strip("<b>(optional)</b>").strip()
                    params_w_desc.append(
                        {
                            "param": param,
                            "desc": desc,
                            "type": "any",
                            "optional": optional,
                        }
                    )
                if line.startswith("*/"):
                    idx, raw_line = next(line_enum)
                    pattern = r"(\w+)\s+(\w+)\(([^)]*)\);"
                    matches = re.match(pattern, raw_line.strip())

                    if matches:
                        return_type = matches.group(1)
                        function = matches.group(2)
                        arguments = matches.group(3)
                        argument_list = [arg.strip() for arg in arguments.split(",")]

                        params = []
                        for arg in argument_list:
                            if arg != "void" and arg != [""] and arg:
                                type_name, param_name = arg.split()
                                if type_name is None or type_name == "void":
                                    type_name = "nil"
                                if type_name == "int":
                                    type_name = "integer"
                                if type_name == "bool":
                                    type_name = "boolean"
                                if "[]" in type_name:
                                    type_name = "table"
                                if type_name == "auto":
                                    type_name = "any"
                                param = {
                                    "param": param_name,
                                    "desc": "",
                                    "type": type_name,
                                    "optional": False,
                                }
                                params.append(param)
                        for i in params:
                            for j in params_w_desc:
                                if j["param"] == i["param"]:
                                    i["desc"] = j["desc"]
                                    i["optional"] = j["optional"]
                    else:
                        continue
                    _class[__class][function] = {
                        "params": params,
                        "returns": _return,
                        "return_type": return_type,
                        "example": example,
                        "group": group,
                        "description": description,
                    }
                    function = None
                    params = []
                    _return = None
                    example = ""
                    group = ""
                    description = ""
                    params_w_desc = []
    if _class:
        return _class, enums


def generate_lua_code(
    parsed_source: dict[str, dict[str, dict[str, None | str | list]]]
):
    lua_source = "-- lpp-vita lua source code\n\n"
    for enum, items in parsed_source["enums"].items():
        lua_source += "---\n"
        lua_source += f"---{items['desc']}\n"
        lua_source += "---\n"
        lua_source += f"{enum} = " + "{\n"
        for value, e_param in enumerate(items["params"]):
            lua_source += f"    --- {e_param['desc']}\n"
            lua_source += (
                f"    {e_param['param']} = {value}"
                + ("," if value != len(items["params"]) - 1 else "")
                + "\n"
            )
        lua_source += "}\n\n"

    for _class, methods in parsed_source["classes"].items():
        lua_source += f"{_class} = " + "{}\n\n"
        for function, metadata in methods.items():
            lua_source += "---\n"
            lua_source += f"---{metadata['description']}\n"
            lua_source += "---\n"
            lua_source += "---\n"
            lua_source += "---\n"
            params = "("
            for param in metadata["params"]:
                if param:
                    lua_source += f"---@param {param['param']}{'?' if param['optional'] else ''} {param['type']} {param['desc']}\n"
                    params += f"{param['param']}, "
            params = params.strip(", ") + ")"
            return_type = metadata["return_type"]
            if return_type is None or return_type == "void":
                return_type = "nil"
            if return_type == "int":
                return_type = "integer"
            if return_type == "bool":
                return_type = "boolean"
            if "[]" in return_type:
                return_type = "table"
            if return_type == "auto":
                return_type = "any"
            lua_source += f"---@return {return_type}\n"
            lua_source += f"function {_class}.{function}{params} end\n\n"
    return lua_source


directory_path = pathlib.Path(__file__).parent / "lpp-vita" / "doc"

parsed_classes = {"classes": {}, "enums": {}}
for file in directory_path.glob("*.cpp"):
    classes, enums = parse_file(file)
    parsed_classes["classes"].update(classes)
    parsed_classes["enums"].update(enums)

with open(os.path.join(OUTPUT_DIR, "parsed.json"), "w") as f:
    f.write(json.dumps(parsed_classes, indent=4, ensure_ascii=False))


lua_source = generate_lua_code(parsed_classes)

with open(os.path.join(OUTPUT_DIR, "lpp-vita.lua"), "w") as f:
    f.write(lua_source)
