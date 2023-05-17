
if [[ ! -d "lpp-vita" ]]; then
    git clone -n --depth=1 --filter=tree:0 https://github.com/Rinnegatamante/lpp-vita.git
    cd lpp-vita
    git sparse-checkout set --no-cone doc
    git checkout
    cd -
fi

echo Genrating annotations...
python3 parsers.py
echo Done!
