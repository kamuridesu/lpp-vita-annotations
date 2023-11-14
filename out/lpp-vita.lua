-- lpp-vita lua source code

---
---Module that handles system related utilities.
---
IOFlags = {
    --- Read attribute.
    FREAD = 0,
    --- Write attribute.
    FWRITE = 1,
    --- Read/Write attribute.
    FRDWR = 2,
    --- Create/Write attribute.
    FCREATE = 3
}

---
---I/O seek modes to use with ::System.seekFile.
---
IOSeek = {
    --- Starts from the begin of the file.
    SET = 0,
    --- Starts from current position.
    CUR = 1,
    --- Starts from the end of the file.
    END = 2
}

---
---Power management timer features.
---
PowerTimer = {
    --- Automatic console suspension.
    AUTO_SUSPEND_TIMER = 0,
    --- Automatic screen disabling.
    SCREEN_OFF_TIMER = 1,
    --- Automatic screen dimming.
    SCREEN_DIMMING_TIMER = 2
}

---
---Image format modes to use with ::System.takeScreenshot.
---
ImgFmt = {
    --- 32bpp BMP format.
    FORMAT_BMP = 0,
    --- JPG format.
    FORMAT_JPG = 1,
    --- 8bpp paletted PNG format.
    FORMAT_PNG = 2
}

---
---Buttons schemes for ::System.setMessage.
---
BtnMode = {
    --- No buttons.
    BUTTON_NONE = 0,
    --- OK button only.
    BUTTON_OK = 1,
    --- CANCEL button only.
    BUTTON_CANCEL = 2,
    --- OK and CANCEL buttons.
    BUTTON_OK_CANCEL = 3,
    --- YES and NO buttons.
    BUTTON_YES_NO = 4
}

---
---Dialog states for system messages and system keyboard.
---
DlgState = {
    --- Dialog running.
    RUNNING = 0,
    --- Dialog finished successfully.
    FINISHED = 1,
    --- Dialog canceled by user.
    CANCELED = 2
}

---
---Mount permissions for partition mounting.
---
MntPerm = {
    --- Read only permissions.
    READ_ONLY = 0,
    --- Read/Write permissions.
    READ_WRITE = 1
}

---
---Module that handles network sockets.
---
NetProtocol = {
    --- TCP protocol
    TCP_SOCKET = 0,
    --- UDP protocol
    UDP_SOCKET = 1
}

---
---Module that handles network and online features.
---
HTTPMethod = {
    --- GET method
    GET_METHOD = 0,
    --- POST method
    POST_METHOD = 1,
    --- HEAD method
    HEAD_METHOD = 2,
    --- OPTIONS method
    OPTIONS_METHOD = 3,
    --- PUT method
    PUT_METHOD = 4,
    --- DELETE method
    DELETE_METHOD = 5,
    --- TRACE method
    TRACE_METHOD = 6,
    --- CONNECT method
    CONNECT_METHOD = 7
}

---
---Module that handles system keyboard.
---
KeyMode = {
    --- Text mode
    MODE_TEXT = 0,
    --- Password mode
    MODE_PASSWORD = 1
}

---
---Keyboard types to use with Keyboard.start.
---
KeyType = {
    --- Default type
    TYPE_DEFAULT = 0,
    --- Latin encode type
    TYPE_LATIN = 1,
    --- Basic number type
    TYPE_NUMBER = 2,
    --- Extended number type
    TYPE_NUMBER_EXT = 3
}

---
---Optional keyboard features usable.
---
KeyOption = {
    --- Multiline keyboard
    OPT_MULTILINE = 0,
    --- Disabled auto-cap on first letter
    OPT_NO_AUTOCAP = 1,
    --- Disabled word assistant
    OPT_NO_ASSISTANCE = 2
}

---
---Module that handles system registry.
---
RegType = {
    --- String type.
    TYPE_STRING = 0,
    --- Integer type.
    TYPE_NUMBER = 1,
    --- Binary Type.
    TYPE_BINARY = 2
}

---
---Module that handles audio features.
---
ShutterId = {
    --- Image capture shutter sound
    IMAGE_CAPTURE = 0,
    --- Video record start shutter sound
    VIDEO_CAPTURE_START = 1,
    --- Video record end shutter sound
    VIDEO_CAPTURE_END = 2
}

---
---Module that handles 2D GUI development through dear ImGui wrapper.
---
GuiTheme = {
    --- Dark Theme.
    DARK_THEME = 0,
    --- Light Theme.
    LIGHT_THEME = 1,
    --- Classic Theme
    CLASSIC_THEME = 2
}

---
---Window flags to use with ::Gui.initWindow.
---
WinFlags = {
    --- No flags.
    FLAG_NONE = 0,
    --- The window can't be collapsed.
    FLAG_NO_COLLAPSE = 1,
    --- The window can't be moved.
    FLAG_NO_MOVE = 2,
    --- The window can't be resized.
    FLAG_NO_RESIZE = 3,
    --- The window has no vertical scrollbar.
    FLAG_NO_SCROLLBAR = 4,
    --- The window doesn't show a label.
    FLAG_NO_TITLEBAR = 5,
    --- The window has an horizontal scrollbar.
    FLAG_HORIZONTAL_SCROLLBAR = 6
}

---
---Function mode to alter frequency of execution.
---
ConfigMode = {
    --- The function is executed only once.
    SET_ONCE = 0,
    --- The function is executed at every frame.
    SET_ALWAYS = 1
}

---
---Module that handles photo cameras hardware.
---
CameraType = {
    --- Front camera
    INNER_CAM = 0,
    --- Retro camera
    OUTER_CAM = 1
}

---
---Camera resolutions.
---
CameraRes = {
    --- VGA (640x480) resolution
    VGA_RES = 0,
    --- QVGA (320x240) resolution
    QVGA_RES = 1,
    --- QQVGA (160x120) resolution
    QQVGA_RES = 2,
    --- CIF (352x288) resolution
    CIF_RES = 3,
    --- QCIF (176x144) resolution
    QCIF_RES = 4,
    --- PSP (480x272) resolution
    PSP_RES = 5,
    --- NGP (640x360) resolution
    NGP_RES = 6
}

---
---Camera antiflicker modes.
---
CameraAntiFlick = {
    --- Automatic Antiflicker
    ANTIFLICKER_AUTO = 0,
    --- 50Hz Antiflicker
    ANTIFLICKER_50HZ = 1,
    --- 60Hz Antiflicker
    ANTIFLICKER_60HZ = 2
}

---
---Camera ISO speed mode.
---
CameraISO = {
    --- Automatic ISO speed mode
    ISO_AUTO = 0,
    --- 100/21 ISO speed mode
    ISO_100 = 1,
    --- 100/24 ISO speed mode
    ISO_200 = 2,
    --- 100/27 ISO speed mode
    ISO_400 = 3
}

---
---Camera White Balance mode.
---
CameraWB = {
    --- Automatic White Balance mode
    WB_AUTO = 0,
    --- Daylight White Balance mode
    WB_DAYLIGHT = 1,
    --- Cool White Fluorescent mode
    WB_CWF = 2,
    --- Standard Light Source A mode
    WB_SLSA = 3
}

---
---Camera Backlight mode.
---
CameraBacklight = {
    --- Backlight disabled
    BACKLIGHT_OFF = 0,
    --- Backlight enabled
    BACKLIGHT_ON = 1
}

---
---Camera Nightmode mode.
---
CameraNightmode = {
    --- Nightmode disabled
    NIGHTMODE_OFF = 0,
    --- Nightmode for 10 lux or below
    NIGHTMODE_LOW = 1,
    --- Nightmode for 100 lux or below
    NIGHTMODE_MED = 2,
    --- Nightmode for over 100 lux
    NIGHTMODE_HIGH = 3
}

---
---Camera Reverse mode.
---
CameraReverse = {
    --- Reverse mode disabled
    REVERSE_OFF = 0,
    --- Mirror reverse mode
    REVERSE_MIRROR = 1,
    --- Flip reverse mode
    REVERSE_FLIP = 2,
    --- Flip and Mirror reverse mode
    REVERSE_BOTH = 3
}

---
---Camera effects.
---
CameraEffect = {
    --- No effect
    EFFECT_NONE = 0,
    --- Negative effect
    EFFECT_NEGATIVE = 1,
    --- Black and White effect
    EFFECT_BLACKWHITE = 2,
    --- Sepia effect
    EFFECT_SEPIA = 3,
    --- Blue Neon effect
    EFFECT_BLUE = 4,
    --- Red Neon effect
    EFFECT_RED = 5,
    --- Green Neon effect
    EFFECT_GREEN = 6
}

---
---Module that handles video files playback.
---
PlayMode = {
    --- Normal speed with audio
    NORMAL_MODE = 0,
    --- Fast Forward at 2x speed without audio
    FAST_FORWARD_2X_MODE = 1,
    --- Fast Forward at 4x speed without audio
    FAST_FORWARD_4X_MODE = 2,
    --- Fast Forward at 8x speed without audio
    FAST_FORWARD_8X_MODE = 3,
    --- Fast Forward at 16x speed without audio
    FAST_FORWARD_16X_MODE = 4,
    --- Fast Forward at 32x speed without audio
    FAST_FORWARD_32X_MODE = 5
}

---
---Module that handles 2D rendering.
---
ImageFilter = {
    --- Point filter
    FILTER_POINT = 0,
    --- Linear filter
    FILTER_LINEAR = 1
}

---
---Module that handles physical user input systems.
---
DevType = {
    --- Unpaired device
    UNPAIRED_DEV = 0,
    --- PSVITA controller device
    VITA_DEV = 1,
    --- Virtual controller device
    VIRTUAL_DEV = 2,
    --- Dualshock 3 device
    DS3_DEV = 3,
    --- Dualshock 4 device
    DS4_DEV = 4
}

---
---Available controls value.
---
Ctrl = {
    --- Digital Up button
    SCE_CTRL_UP = 0,
    --- Digital Down button
    SCE_CTRL_DOWN = 1,
    --- Digital Left button
    SCE_CTRL_LEFT = 2,
    --- Digital Right button
    SCE_CTRL_RIGHT = 3,
    --- Cross button
    SCE_CTRL_CROSS = 4,
    --- Circle button
    SCE_CTRL_CIRCLE = 5,
    --- Square button
    SCE_CTRL_SQUARE = 6,
    --- Triangle button
    SCE_CTRL_TRIANGLE = 7,
    --- L Trigger button
    SCE_CTRL_LTRIGGER = 8,
    --- R Trigger button
    SCE_CTRL_RTRIGGER = 9,
    --- Start button
    SCE_CTRL_START = 10,
    --- Select button
    SCE_CTRL_SELECT = 11,
    --- Power button
    SCE_CTRL_POWER = 12,
    --- Volume Up button
    SCE_CTRL_VOLUP = 13,
    --- Volume Down button
    SCE_CTRL_VOLDOWN = 14,
    --- PS button
    SCE_CTRL_PSBUTTON = 15
}

System = {}

---
---Open a file.
---
---
---
---@param filename string Filename to be opened.
---@param flags IOFlags An attribute flag.
---@return integer
function System.openFile(filename, flags) end

---
---Write into an opened file.
---
---
---
---@param handle integer A file handle opened with ::System.openFile.
---@param text string The text to write on file.
---@param len integer Length of the text.
---@return nil
function System.writeFile(handle, text, len) end

---
---Read from an opened file.
---
---
---
---@param handle integer A file handle opened with ::System.openFile.
---@param len integer Length of the string to read in bytes.
---@return string
function System.readFile(handle, len) end

---
---Move cursor of an opened file.
---
---
---
---@param handle integer A file handle opened with ::System.openFile.
---@param pos integer Position to set.
---@param seek IOSeek Start point for the position.
---@return nil
function System.seekFile(handle, pos, seek) end

---
---Calculate size of an opened file in bytes.
---
---
---
---@param handle integer A file handle opened with ::System.openFile.
---@return integer
function System.sizeFile(handle) end

---
---Extract info of a file/directory.
---
---
---
---@param filename string Filename to be checked.
---@return table
function System.statFile(filename) end

---
---Extract info of an opened file.
---
---
---
---@param handle integer A file handle opened with ::System.openFile.
---@return table
function System.statOpenedFile(handle) end

---
---Close an opened file.
---
---
---
---@param handle integer A file handle opened with ::System.openFile.
---@return nil
function System.closeFile(handle) end

---
---Check if a file exists.
---
---
---
---@param filename string Filename to be checked.
---@return boolean
function System.doesFileExist(filename) end

---
---Check if a folder exists.
---
---
---
---@param dirname string Folder name to be checked.
---@return boolean
function System.doesDirExist(dirname) end

---
---Rename or move a file.
---
---
---
---@param filename string Filename to be renamed.
---@param filename2 string New filename.
---@return nil
function System.rename(filename, filename2) end

---
---Copy a file.
---
---
---
---@param filename string Filename to be copied.
---@param filename2 string New filename.
---@return nil
function System.copyFile(filename, filename2) end

---
---Delete a file.
---
---
---
---@param filename string Filename to be removed.
---@return nil
function System.deleteFile(filename) end

---
---Delete a directory.
---
---
---
---@param dirname string Path to be removed.
---@return nil
function System.deleteDirectory(dirname) end

---
---Create a new directory.
---
---
---
---@param dirname string Path to be created.
---@return nil
function System.createDirectory(dirname) end

---
---List a directory contents.
---
---
---
---@param dirname string Path to be listed.
---@return table
function System.listDirectory(dirname) end

---
---Close the interpreter.
---
---
---
---@return nil
function System.exit() end

---
---Get unspoofed system firmware version.
---
---
---
---@return string
function System.getFirmware() end

---
---Get spoofed system firmware version.
---
---
---
---@return string
function System.getSpoofedFirmware() end

---
---Get factory system firmware version.
---
---
---
---@return string
function System.getFactoryFirmware() end

---
---Sleep the application for a certain time.
---
---
---
---@param msecs integer Time to wait in microseconds.
---@return nil
function System.wait(msecs) end

---
---Check if the battery is under charge.
---
---
---
---@return boolean
function System.isBatteryCharging() end

---
---Get current battery life percentage.
---
---
---
---@return integer
function System.getBatteryPercentage() end

---
---Get current battery life.
---
---
---
---@return integer
function System.getBatteryLife() end

---
---Get current battery capacity.
---
---
---
---@return integer
function System.getBatteryCapacity() end

---
---Get full battery capacity.
---
---
---
---@return integer
function System.getBatteryFullCapacity() end

---
---Get battery temperature.
---
---
---
---@return integer
function System.getBatteryTemp() end

---
---Get battery voltage.
---
---
---
---@return integer
function System.getBatteryVolt() end

---
---Get battery state of health percentage.
---
---
---
---@return integer
function System.getBatteryHealth() end

---
---Get battery cycles count.
---
---
---
---@return integer
function System.getBatteryCycles() end

---
---Disable a power management timer feature.
---
---
---
---@param timer PowerTimer The timer feature to disable.
---@return nil
function System.disableTimer(timer) end

---
---Enable a power management timer feature.
---
---
---
---@param timer PowerTimer The timer feature to enable.
---@return nil
function System.enableTimer(timer) end

---
---Reset a power management timer feature.
---
---
---
---@param timer PowerTimer The timer feature to reset.
---@return nil
function System.resetTimer(timer) end

---
---Set CPU clock speed.
---
---
---
---@param clock integer The clock to set in Mhz.
---@return nil
function System.setCpuSpeed(clock) end

---
---Set GPU clock speed.
---
---
---
---@param clock integer The clock to set in Mhz.
---@return nil
function System.setGpuSpeed(clock) end

---
---Set GPU Crossbar clock speed.
---
---
---
---@param clock integer The clock to set in Mhz.
---@return nil
function System.setBusSpeed(clock) end

---
---Get CPU clock speed.
---
---
---
---@return integer
function System.getCpuSpeed() end

---
---Get GPU clock speed.
---
---
---
---@return integer
function System.getGpuSpeed() end

---
---Get BUS clock speed.
---
---
---
---@return integer
function System.getBusSpeed() end

---
---Get GPU Crossbar clock speed.
---
---
---
---@return integer
function System.getGpuXbarSpeed() end

---
---Launches a binary file.
---
---
---
---@param filename string The file to start.
---@return nil
function System.launchEboot(filename) end

---
---Launches an installed application.
---
---
---
---@param titleid string The title ID of the application to start.
---@return nil
function System.launchApp(titleid) end

---
---Get free space for a given device.
---
---
---
---@param dev string The device name.
---@return nil
function System.getFreeSpace(dev) end

---
---Get total space for a given device.
---
---
---
---@param dev string The device name.
---@return nil
function System.getTotalSpace(dev) end

---
---Get account username.
---
---
---
---@return string
function System.getUsername() end

---
---Get console language.
---
---
---
---@return integer
function System.getLanguage() end

---
---Get console model.
---
---
---
---@return integer
function System.getModel() end

---
---Get console unique PsId.
---
---
---
---@return string
function System.getPsId() end

---
---Get running application title.
---
---
---
---@return string
function System.getTitle() end

---
---Get running application title ID.
---
---
---
---@return string
function System.getTitleID() end

---
---Extract info from an SFO file.
---
---
---
---@param filename string The filename to extract info from.
---@return table
function System.extractSfo(filename) end

---
---Extract a PBP file (synchronous).
---
---
---
---@param filename string The filename to extract.
---@param dirname string The path where to extract files.
---@return nil
function System.extractPbp(filename, dirname) end

---
---Extract a ZIP file (synchronous).
---
---
---
---@param filename string The filename to extract.
---@param dirname string The path where to extract files.
---@return nil
function System.extractZip(filename, dirname) end

---
---Extract a specific file from a ZIP file (synchronous).
---
---
---
---@param filename string The filename of the ZIP archive.
---@param file string The file to extract.
---@param destname string The filename where to extract file.
---@return nil
function System.extractFromZip(filename, file, destname) end

---
---Extract a ZIP file (asynchronous).
---
---
---
---@param filename string The filename to extract.
---@param dirname string The path where to extract files.
---@return nil
function System.extractZipAsync(filename, dirname) end

---
---Extract a specific file from a ZIP file (asynchronous).
---
---
---
---@param filename string The filename of the ZIP archive.
---@param file string The file to extract.
---@param destname string The filename where to extract file.
---@return nil
function System.extractFromZipAsync(filename, file, destname) end

---
---Compress a file or a folder in a ZIP file (synchronous).
---
---
---
---@param path string The filename or path to compress.
---@param filename string The filename of the resulting zip file.
---@param ratio? integer The compression ratio to use <b>(optional)</b>.
---@return nil
function System.compressZip(path, filename, ratio) end

---
---Add a file or a folder in a ZIP file (synchronous).
---
---
---
---@param path string The filename or path to compress.
---@param filename string The filename of the resulting zip file.
---@param parent string The parent folder inside the zip file where to place the path.
---@param ratio? integer The compression ratio to use <b>(optional)</b>.
---@return nil
function System.addToZip(path, filename, parent, ratio) end

---
---Get current state of an asynchronous task.
---
---
---
---@return integer
function System.getAsyncState() end

---
---Get result from a finished asynchronous task.
---
---
---
---@return string
function System.getAsyncResult() end

---
---Take a screenshot.
---
---
---
---@param filename string The filename of the screenshot output.
---@param format? ImgFmt The format to use for the output file <b>(optional)</b>.
---@param ratio? integer Compression ratio for JPG compression <b>(optional)</b>.
---@return nil
function System.takeScreenshot(filename, format, ratio) end

---
---Execute an URI call.
---
---
---
---@param uri string URI to exec.
---@return nil
function System.executeUri(uri) end

---
---Reboot the console.
---
---
---
---@return integer
function System.reboot() end

---
---Shutdown the console.
---
---
---
---@return integer
function System.shutdown() end

---
---Put the console in standby.
---
---
---
---@return integer
function System.standby() end

---
---Get if application is running in safe mode.
---
---
---
---@return boolean
function System.isSafeMode() end

---
---Start a system message instance.
---
---
---
---@param text string The text of the system message.
---@param progressbar boolean Progressbar mode.
---@param buttons? BtnMode Buttons scheme to use <b>(optional)</b>.
---@return nil
function System.setMessage(text, progressbar, buttons) end

---
---Get current system message instance state.
---
---
---
---@return DlgState
function System.getMessageState() end

---
---Set current progress for the system message instance.
---
---
---
---@param progress integer Progress percentage.
---@return nil
function System.setMessageProgress(progress) end

---
---Set a submessage for the system message instance.
---
---
---
---@param text string Submessage text to set.
---@return nil
function System.setMessageProgMsg(text) end

---
---Close the current system message instance.
---
---
---
---@return nil
function System.closeMessage() end

---
---Unmount an already mounted partition.
---
---
---
---@param idx integer The index number of the partition.
---@return nil
function System.unmountPartition(idx) end

---
---Mount an unmounted partition.
---
---
---
---@param idx integer The index number of the partition.
---@param perms MntPerm Permissions to set for the mounted partition.
---@return nil
function System.mountPartition(idx, perms) end

---
---Install an extracted app.
---
---
---
---@param dir string The path to the extracted app.
---@return nil
function System.installApp(dir) end

---
---Uninstall an installed app.
---
---
---
---@param titleid string The titleid of the app to uninstall.
---@return nil
function System.uninstallApp(titleid) end

---
---Check if an app is installed.
---
---
---
---@param titleid string The titleid of the app to check.
---@return boolean
function System.doesAppExist(titleid) end

---
---Retrieve params used at app boot.
---
---
---
---@return string
function System.getBootParams() end

---
---Load and start an user plugin.
---
---
---
---@param path string The path to the plugin to load.
---@return integer
function System.loadUserPlugin(path) end

---
---Load and start a kernel plugin.
---
---
---
---@param path string The path to the plugin to load.
---@return integer
function System.loadKernelPlugin(path) end

---
---Stop and unload a kernel plugin.
---
---
---
---@param plug_id integer The module identifier for the plugin to unload.
---@return nil
function System.unloadUserPlugin(plug_id) end

---
---Unmount a virtual mountpoint.
---
---
---
---@param mnt string The mountpoint to unmount.
---@return nil
function System.unmountMountpoint(mnt) end

Color = {}

---
---Create a new color.
---
---
---
---@param r integer R channel value.
---@param g integer G channel value.
---@param b integer B channel value.
---@param a? integer A channel value <B>(optional)</B>.
---@return integer
function Color.new(r, g, b, a) end

---
---Return the R channel value of a color.
---
---
---
---@param clr integer A color created with ::Color.new.
---@return integer
function Color.getR(clr) end

---
---Return the G channel value of a color.
---
---
---
---@param clr integer A color created with ::Color.new.
---@return integer
function Color.getG(clr) end

---
---Return the B channel value of a color.
---
---
---
---@param clr integer A color created with ::Color.new.
---@return integer
function Color.getB(clr) end

---
---Return the A channel value of a color.
---
---
---
---@param clr integer A color created with ::Color.new.
---@return integer
function Color.getA(clr) end

Socket = {}

---
---Create a server socket.
---
---
---
---@param port integer Port to use.
---@param protocol? NetProtocol Protocol to use <b>(optional)</b>.
---@return integer
function Socket.createServerSocket(port, protocol) end

---
---Connect to a server.
---
---
---
---@param host string Host to connect to.
---@param port integer Port to use.
---@param protocol? NetProtocol Protocol to use <b>(optional)</b>.
---@return integer
function Socket.connect(host, port, protocol) end

---
---Send data via socket.
---
---
---
---@param sock integer A valid socket id.
---@param data string Data to send.
---@return integer
function Socket.send(sock, data) end

---
---Send data via socket.
---
---
---
---@param sock integer A valid socket id.
---@param size integer Maximum size of the received data.
---@return string
function Socket.receive(sock, size) end

---
---Accept new connections for a server socket.
---
---
---
---@param sock integer A valid server socket id.
---@return integer
function Socket.accept(sock) end

---
---Close a socket.
---
---
---
---@param sock integer A valid socket id.
---@return nil
function Socket.close(sock) end

Network = {}

---
---Initialize network system.
---
---
---
---@return nil
function Network.init() end

---
---Terminate network system.
---
---
---
---@return nil
function Network.term() end

---
---Initialize debug FTP.
---
---
---
---@return nil
function Network.initFTP() end

---
---Terminate debug FTP.
---
---
---
---@return nil
function Network.termFTP() end

---
---Get console IP address.
---
---
---
---@return string
function Network.getIPAdddress() end

---
---Get console Mac address.
---
---
---
---@return string
function Network.getMacAdddress() end

---
---Check if WiFi is available.
---
---
---
---@return boolean
function Network.isWifiEnabled() end

---
---Get WiFi strength level.
---
---
---
---@return integer
function Network.getWifiLevel() end

---
---Download a file via HTTP protocol (synchronous).
---
---
---
---@param url string The url from where to download the file.
---@param file string Filename where to save the downloaded file.
---@param useragent? string Custom useragent to use <b>(optional)</b>.
---@param method? HTTPMethod Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata? string POST data to send with the HTTP request <b>(optional)</b>.
---@return nil
function Network.downloadFile(url, file, useragent, method, postdata) end

---
---Download a file via HTTP protocol (asynchronous).
---
---
---
---@param url string The url from where to download the file.
---@param file string Filename where to save the downloaded file.
---@param useragent? string Custom useragent to use <b>(optional)</b>.
---@param method? HTTPMethod Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata? string POST data to send with the HTTP request <b>(optional)</b>.
---@return nil
function Network.downloadFileAsync(url, file, useragent, method, postdata) end

---
---Get an HTTP request result (synchronous).
---
---
---
---@param url string The url where to send the HTTP request.
---@param useragent? string Custom useragent to use <b>(optional)</b>.
---@param method? HTTPMethod Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata? string POST data to send with the HTTP request <b>(optional)</b>.
---@return string
function Network.requestString(url, useragent, method, postdata) end

---
---Get an HTTP request result (asynchronous).
---
---
---
---@param url string The url where to send the HTTP request.
---@param useragent? string Custom useragent to use <b>(optional)</b>.
---@param method? HTTPMethod Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata? string POST data to send with the HTTP request <b>(optional)</b>.
---@return nil
function Network.requestStringAsync(url, useragent, method, postdata) end

Font = {}

---
---Load a .ttf/.pgf/.pvf/.woff/.pfa/.pfb/.fnt/.bdf font file.
---
---
---
---@param filename string The name of the font file
---@return integer
function Font.load(filename) end

---
---Unload a loaded font.
---
---
---
---@param font integer A valid font loaded with Font.load.
---@return nil
function Font.unload(font) end

---
---Set font size for drawing.
---
---
---
---@param font integer A valid font loaded with Font.load.
---@param size integer Size to set for Font.print calls in pixels.
---@return nil
function Font.setPixelSizes(font, size) end

---
---Calculate width for a given text and a given font.
---
---
---
---@param font integer A valid font loaded with Font.load.
---@param text string Text to calculate width of.
---@return integer
function Font.getTextWidth(font, text) end

---
---Calculate height for a given text and a given font.
---
---
---
---@param font integer A valid font loaded with Font.load.
---@param text string Text to calculate width of.
---@return integer
function Font.getTextHeight(font, text) end

---
---Print a text on screen using a font.
---
---
---
---@param font integer A valid font loaded with Font.load.
---@param x number X starting coordinate for the print.
---@param y number Y starting coordinate for the print.
---@param text string Text to print.
---@param color integer Color of the text (See ::Color).
---@return nil
function Font.print(font, x, y, text, color) end

Keyboard = {}

---
---Start a keyboard instance.
---
---
---
---@param title string The keyboard title.
---@param text string The keyboard initial text.
---@param length? integer The text maximum length <b>(optional)</b>.
---@param type? KeyType The keyboard type <b>(optional)</b>.
---@param mode? KeyMode The keyboard mode <b>(optional)</b>.
---@param opt? KeyOption Optional keyboard features to use <b>(optional)</b>.
---@return nil
function Keyboard.start(title, text, length, type, mode, opt) end

---
---Get keyboard state.
---
---
---
---@return DlgState
function Keyboard.getState() end

---
---Get keyboard user input.
---
---
---
---@return string
function Keyboard.getInput() end

---
---Close current system keyboard instance.
---
---
---
---@return nil
function Keyboard.clear() end

Registry = {}

---
---Get a value for a given key.
---
---
---
---@param category string The category from which to take the value.
---@param name string The key related to the value.
---@param type RegType The type of the value.
---@return any
function Registry.getKey(category, name, type) end

---
---Get a value for a given system key.
---
---
---
---@param id integer The identifier of the key.
---@param type RegType The type of the value.
---@return any
function Registry.getSysKey(id, type) end

---
---Set a value for a given key.
---
---
---
---@param category string The category from which to take the value.
---@param name string The key related to the value.
---@param type RegType The type of the value.
---@param value any The value to set.
---@param size? integer The size of the value <b>(optional)</b>.
---@return nil
function Registry.setKey(category, name, type, value, size) end

Sound = {}

---
---Initialize audio subsystem.
---
---
---
---@return nil
function Sound.init() end

---
---Terminate audio subsystem.
---
---
---
---@return nil
function Sound.term() end

---
---Open an audio file.
---
---
---
---@param filename string Name of the file to open
---@return integer
function Sound.open(filename) end

---
---Play a sound.
---
---
---
---@param music integer A valid sound ID.
---@param loop? boolean If true, playback will loop <b>(optional)</b>.
---@return nil
function Sound.play(music, loop) end

---
---Pause a sound.
---
---
---
---@param music integer A valid sound ID.
---@return nil
function Sound.pause(music) end

---
---Resume a sound.
---
---
---
---@param music integer A valid sound ID.
---@return nil
function Sound.resume(music) end

---
---Close an opened sound.
---
---
---
---@param music integer A valid sound ID.
---@return nil
function Sound.close(music) end

---
---Check if a given sound is in playing state.
---
---
---
---@param music integer A valid sound ID.
---@return boolean
function Sound.isPlaying(music) end

---
---Set internal volume for a given sound.
---
---
---
---@param music integer A valid sound ID.
---@param volume integer Volume value to set.
---@return nil
function Sound.setVolume(music, volume) end

---
---Get internal volume for a given sound.
---
---
---
---@param music integer A valid sound ID.
---@return integer
function Sound.getVolume(music) end

---
---Get song title of a given sound.
---
---
---
---@param music integer A valid sound ID.
---@return string
function Sound.getTitle(music) end

---
---Get song author of a given sound.
---
---
---
---@param music integer A valid sound ID.
---@return string
function Sound.getAuthor(music) end

---
---Play a shutter sound.
---
---
---
---@param id ShutterId A valid shutter sound ID.
---@return nil
function Sound.playShutter(id) end

Gui = {}

---
---Init Gui sub-system.
---
---
---
---@return nil
function Gui.init() end

---
---Terminate Gui sub-system.
---
---
---
---@return nil
function Gui.term() end

---
---Init Gui drawing phase.
---
---
---
---@return nil
function Gui.initBlend() end

---
---Terminate Gui drawing phase.
---
---
---
---@return nil
function Gui.termBlend() end

---
---Change theme for the running Gui.
---
---
---
---@param theme GuiTheme The theme to set.
---@return nil
function Gui.setTheme(theme) end

---
---Change input mode for the running Gui.
---
---
---
---@param use_touch boolean Enable front touch usage for cursor movement.
---@param use_rear boolean Enable rearpad touch usage for cursor movement.
---@param use_buttons boolean Enable buttons usage for cursor movement.
---@param indirect_touch boolean If enabled, cursor is moved by dragging it. If disabled, cursor jumps to the touched location.
---@return nil
function Gui.setInputMode(use_touch, use_rear, use_buttons, indirect_touch) end

---
---Init screen menubar.
---
---
---
---@return boolean
function Gui.initMainMenubar() end

---
---Terminate screen menubar.
---
---
---
---@return nil
function Gui.termMainMenubar() end

---
---Init a menu.
---
---
---
---@param label string The label to show.
---@param enabled? boolean The menu status to set <b>(optional)</b>.
---@return boolean
function Gui.initMenu(label, enabled) end

---
---Terminate a menu.
---
---
---
---@return nil
function Gui.termMenu() end

---
---Draw a menu item.
---
---
---
---@param label string The label to show.
---@param selected? boolean The item checked status <b>(optional)</b>.
---@param enabled? boolean The item status to set <b>(optional)</b>.
---@return boolean
function Gui.drawMenuItem(label, selected, enabled) end

---
---Draw a text.
---
---
---
---@param label string The label to show.
---@param color? integer A valid color (See ::Color) <b>(optional)</b>.
---@return nil
function Gui.drawText(label, color) end

---
---Draw a greyed out text.
---
---
---
---@param label string The label to show.
---@return nil
function Gui.drawDisabledText(label) end

---
---Draw a text with automatic newlines to fit the window.
---
---
---
---@param label string The label to show.
---@return nil
function Gui.drawWrappedText(label) end

---
---Draw a button.
---
---
---
---@param label string The label to show.
---@param width? number The width of the button <b>(optional)</b>.
---@param height? number The height of the button <b>(optional)</b>.
---@return boolean
function Gui.drawButton(label, width, height) end

---
---Draw a small button.
---
---
---
---@param label string The label to show.
---@return boolean
function Gui.drawSmallButton(label) end

---
---Draw a checkbox.
---
---
---
---@param label string The label to show.
---@param status boolean The initial checked status of the checkbox.
---@return boolean
function Gui.drawCheckbox(label, status) end

---
---Draw a radiobutton.
---
---
---
---@param label string The label to show.
---@param status boolean The initial checked status of the radiobutton.
---@return boolean
function Gui.drawRadioButton(label, status) end

---
---Make next element be drawn on current line.
---
---
---
---@return nil
function Gui.resetLine() end

---
---Init a window.
---
---
---
---@param label string The label to show.
---@param flags WinFlags The flags to use with the window.
---@return nil
function Gui.initWindow(label, flags) end

---
---Terminate a window.
---
---
---
---@return nil
function Gui.termWindow() end

---
---Set next window position.
---
---
---
---@param x number X coordinate of the window position in pixels.
---@param y number Y coordinate of the window position in pixels.
---@param mode ConfigMode A mode to use for the function.
---@return nil
function Gui.setWindowPos(x, y, mode) end

---
---Set next window size.
---
---
---
---@param w number of the window in pixels.
---@param h number Height of the window in pixels.
---@param mode ConfigMode A mode to use for the function.
---@return nil
function Gui.setWindowSize(w, h, mode) end

---
---Draw a separator.
---
---
---
---@return nil
function Gui.drawSeparator() end

---
---Draw a tooltip when cursor hover on the previous item.
---
---
---
---@param label string The label to show.
---@return nil
function Gui.drawTooltip(label) end

---
---Draw a combobox.
---
---
---
---@param label string The label to show.
---@param index integer The currently selected element.
---@param elements table The elements to use for the combobox.
---@return integer
function Gui.drawComboBox(label, index, elements) end

---
---Draw a listbox.
---
---
---
---@param label string The label to show.
---@param index integer The currently selected element.
---@param elements table The elements to use for the combobox.
---@return integer
function Gui.drawListBox(label, index, elements) end

---
---Draw a color picker.
---
---
---
---@param label string The label to show.
---@param color integer The currently picked color (See ::Color)
---@param alpha? boolean If true, alpha value will be pickable, not otherwise. <b>(optional)</b>.
---@return integer
function Gui.drawColorPicker(label, color, alpha) end

---
---Draw a progressbar.
---
---
---
---@param fraction number Progress value to show in 0.0 - 1.0 range.
---@param w? number Width of the element in pixels <b>(optional)</b>.
---@param h? number Height of the element in pixels <b>(optional)</b>.
---@return nil
function Gui.drawProgressbar(fraction, w, h) end

---
---Draw an image in the Gui subsystem.
---
---
---
---@param img integer A valid image ID.
---@param width? number Width in pixels of the widget <b>(optional)</b>.
---@param height? number Height in pixels of the widget <b>(optional)</b>.
---@param img_x? number Source image X coordinate <b>(optional)</b>.
---@param img_y? number Source image Y coordinate <b>(optional)</b>.
---@param img_w? number Source image width <b>(optional)</b>.
---@param img_h? number Source image height <b>(optional)</b>.
---@param color? integer Image tint color (See ::Color) <b>(optional)</b>.
---@return nil
function Gui.drawImage(img, width, height, img_x, img_y, img_w, img_h, color) end

---
---Set next widget position.
---
---
---
---@param x number X coordinate in pixels.
---@param y number Y coordinate in pixels.
---@return nil
function Gui.setWidgetPos(x, y) end

---
---Set next widgets width.
---
---
---
---@param w number Width of the element in pixels.
---@return nil
function Gui.setWidgetWidth(w) end

---
---Reset next widgets width to original values.
---
---
---
---@return nil
function Gui.resetWidgetWidth() end

Camera = {}

---
---Init camera hardware.
---
---
---
---@param type CameraType Camera to init.
---@param resolution CameraRes Output resolution.
---@param framerate integer Output framerate.
---@return nil
function Camera.init(type, resolution, framerate) end

---
---Terminate camera hardware.
---
---
---
---@return nil
function Camera.term() end

---
---Return current camera output as image.
---
---
---
---@return integer
function Camera.getOutput() end

---
---Set camera brightness.
---
---
---
---@param value integer Value to set.
---@return nil
function Camera.setBrightness(value) end

---
---Get current camera brightness.
---
---
---
---@return integer
function Camera.getBrightness() end

---
---Set camera saturation.
---
---
---
---@param value number Value to set.
---@return nil
function Camera.setSaturation(value) end

---
---Get current camera saturation.
---
---
---
---@return integer
function Camera.getSaturation() end

---
---Set camera sharpness percentage.
---
---
---
---@param value integer Value to set.
---@return nil
function Camera.setSharpness(value) end

---
---Get current camera sharpness.
---
---
---
---@return integer
function Camera.getSharpness() end

---
---Set camera contrast.
---
---
---
---@param value integer Value to set.
---@return nil
function Camera.setContrast(value) end

---
---Get current camera contrast.
---
---
---
---@return integer
function Camera.getContrast() end

---
---Set camera reverse mode.
---
---
---
---@param mode CameraReverse Mode to set.
---@return nil
function Camera.setReverse(mode) end

---
---Get current camera reverse mode.
---
---
---
---@return CameraReverse
function Camera.getReverse() end

---
---Set camera effect.
---
---
---
---@param effect CameraEffect Effect to set.
---@return nil
function Camera.setEffect(effect) end

---
---Get current camera effect.
---
---
---
---@return CameraEffect
function Camera.getEffect() end

---
---Set camera zoom.
---
---
---
---@param value integer Value to set.
---@return nil
function Camera.setZoom(value) end

---
---Get current camera zoom.
---
---
---
---@return integer
function Camera.getZoom() end

---
---Set camera antiflicker mode.
---
---
---
---@param mode CameraAntiFlick Mode to set.
---@return nil
function Camera.setAntiFlicker(mode) end

---
---Get current camera antiflicker mode.
---
---
---
---@return CameraAntiFlick
function Camera.getAntiFlicker() end

---
---Set camera ISO speed mode.
---
---
---
---@param mode CameraISO Mode to set.
---@return nil
function Camera.setISO(mode) end

---
---Get current camera ISO speed mode.
---
---
---
---@return CameraISO
function Camera.getISO() end

---
---Set camera gain.
---
---
---
---@param value integer Value to set.
---@return nil
function Camera.setGain(value) end

---
---Get current camera gain.
---
---
---
---@return integer
function Camera.getGain() end

---
---Set camera white balance mode.
---
---
---
---@param mode CameraWB Mode to set.
---@return nil
function Camera.setWhiteBalance(mode) end

---
---Get current camera white balance mode.
---
---
---
---@return CameraWB
function Camera.getWhiteBalance() end

---
---Set camera backlight mode.
---
---
---
---@param mode CameraBacklight Mode to set.
---@return nil
function Camera.setBacklight(mode) end

---
---Get current camera backlight mode.
---
---
---
---@return CameraBacklight
function Camera.getBacklight() end

---
---Set camera nightmode mode.
---
---
---
---@param mode CameraNightmode Mode to set.
---@return nil
function Camera.setNightmode(mode) end

---
---Get current camera nightmode mode.
---
---
---
---@return CameraNightmode
function Camera.getNightmode() end

Screen = {}

---
---Clear the screen framebuffer.
---
---
---
---@param clr? integer Color of the screen after the clear <B>(optional)</B>.
---@return nil
function Screen.clear(clr) end

---
---Flip the screen.
---
---
---
---@return nil
function Screen.flip() end

---
---Get a pixel color from the screen framebuffer.
---
---
---
---@param x integer X coordinate of the pixel.
---@param y integer Y coordinate of the pixel.
---@return integer
function Screen.getPixel(x, y) end

---
---Wait screen vertical synchronization (VSync).
---
---
---
---@return nil
function Screen.waitVblankStart() end

Render = {}

---
---Create a vertex.
---
---
---
---@param x number X coordinate of the vertex.
---@param y number Y coordinate of the vertex.
---@param z number Z coordinate of the vertex.
---@param u number U coordinate for texture mapping.
---@param v number v coordinate for texture mapping.
---@param n1 number Normal X coordinate of the vertex.
---@param n2 number Normal Y coordinate of the vertex.
---@param n3 number Normal Z coordinate of the vertex.
---@return integer
function Render.createVertex(x, y, z, u, v, n1, n2, n3) end

---
---Destroy a vertex.
---
---
---
---@param v integer Vertex ID created with Render.createVertex to destroy.
---@return nil
function Render.destroyVertex(v) end

---
---Load a set of vertices as 3D model.
---
---
---
---@param v table A table with the model vertices.
---@param texture integer A valid image ID.
---@return integer
function Render.loadModel(v, texture) end

---
---Load an .obj model.
---
---
---
---@param filename string Name of the file to load.
---@param texture integer Texture ID to use.
---@return integer
function Render.loadObject(filename, texture) end

---
---Free a model.
---
---
---
---@param model integer A valid model ID.
---@return nil
function Render.unloadModel(model) end

---
---Print a model on screen.
---
---
---
---@param model integer A valid model ID.
---@param x number X coordinate of the model.
---@param y number Y coordinate of the model.
---@param z number Z coordinate of the model.
---@param angleX number X rotation value of the model.
---@param angleY number Y rotation value of the model.
---@param angleZ number Z rotation value of the model.
---@param unbind? boolean Draw the model unbinded from camera instance <b>(optional)</b>.
---@return nil
function Render.drawModel(model, x, y, z, angleX, angleY, angleZ, unbind) end

---
---Set a given texture for a model.
---
---
---
---@param model integer A valid model ID.
---@param texture integer Texture ID to use.
---@return nil
function Render.useTexture(model, texture) end

---
---Set view camera instance settings.
---
---
---
---@param x number X coordinate of the camera.
---@param y number Y coordinate of the camera.
---@param z number Z coordinate of the camera.
---@param rot_x number X related rotation value of the camera.
---@param rot_y number Y related rotation value of the camera.
---@param rot_z number Z related rotation value of the camera.
---@return nil
function Render.setCamera(x, y, z, rot_x, rot_y, rot_z) end

Mic = {}

---
---Start a microphone recording phase.
---
---
---
---@param time integer The time to record in seconds.
---@param samplerate integer The samplerate of the output in Hz.
---@return integer
function Mic.start(time, samplerate) end

---
---Stop microphone recording and save result.
---
---
---
---@param filename string The filename of the resulting WAV file.
---@return nil
function Mic.stop(filename) end

---
---Pause microphone recording.
---
---
---
---@return nil
function Mic.pause() end

---
---Resume microphone recording.
---
---
---
---@return nil
function Mic.resume() end

---
---Check if the microphone is recording.
---
---
---
---@return boolean
function Mic.isRecording() end

Video = {}

---
---Init video sub-system.
---
---
---
---@return nil
function Video.init() end

---
---Terminate video sub-system.
---
---
---
---@return nil
function Video.term() end

---
---Open an MP4 video file.
---
---
---
---@param filename string Filepath of the file to reproduce.
---@param loop? boolean If true, playback will loop <b>(optional)</b>.
---@return nil
function Video.open(filename, loop) end

---
---Close the current video playback.
---
---
---
---@return nil
function Video.close() end

---
---Get the current video frame as image.
---
---
---
---@return integer
function Video.getOutput() end

---
---Pause current video playback.
---
---
---
---@return nil
function Video.pause() end

---
---Resume current video playback.
---
---
---
---@return nil
function Video.resume() end

---
---Get current playback state.
---
---
---
---@return boolean
function Video.isPlaying() end

---
---Set internal volume for current video playback.
---
---
---
---@param volume integer Volume value to set.
---@return nil
function Video.setVolume(volume) end

---
---Get internal volume for current video playback.
---
---
---
---@return integer
function Video.getVolume() end

---
---Get current time for current video playback.
---
---
---
---@return number
function Video.getTime() end

---
---Jump to a specific position for current video playback.
---
---
---
---@param time number The position in milliseconds where to jump in the video playback.
---@return nil
function Video.jumpToTime(time) end

---
---Set play mode for current video playback.
---
---
---
---@param mode PlayMode The mode to set.
---@return nil
function Video.setPlayMode(mode) end

---
---Open a subtitles file for current video playback.
---
---
---
---@param fname string The file to use as subtitles source.
---@return nil
function Video.openSubs(fname) end

---
---Close currently opened subtitles file.
---
---
---
---@return nil
function Video.closeSubs() end

---
---Get current available subtitles for the video playback.
---
---
---
---@return string
function Video.getSubs() end

Timer = {}

---
---Create a new system timer.
---
---
---
---@return integer
function Timer.new() end

---
---Get a system timer time.
---
---
---
---@param timer integer The timer ID to get the time of.
---@return integer
function Timer.getTime(timer) end

---
---Set a system timer time.
---
---
---
---@param timer integer The timer ID to set the time of.
---@param msecs integer The time to set in milliseconds.
---@return nil
function Timer.setTime(timer, msecs) end

---
---Destroy a system timer.
---
---
---
---@param timer integer The timer ID to destroy.
---@return nil
function Timer.destroy(timer) end

---
---Pause a system timer.
---
---
---
---@param timer integer The timer ID to pause.
---@return nil
function Timer.pause(timer) end

---
---Resume a system timer.
---
---
---
---@param timer integer The timer ID to resume.
---@return nil
function Timer.resume(timer) end

---
---Reset a system timer time.
---
---
---
---@param timer integer The timer ID to reset.
---@return nil
function Timer.reset(timer) end

---
---Check if a system timer is in playing state.
---
---
---
---@param timer integer The timer ID to check.
---@return boolean
function Timer.isPlaying(timer) end

Graphics = {}

---
---Initialize drawing phase.
---
---
---
---@return nil
function Graphics.initBlend() end

---
---Terminate drawing phase.
---
---
---
---@return nil
function Graphics.termBlend() end

---
---Print a text on screen using system font.
---
---
---
---@param x number X coordinate of the text position in pixels.
---@param y number Y coordinate of the text position in pixels.
---@param text string Text to print.
---@param color integer A valid color (See ::Color).
---@return nil
function Graphics.debugPrint(x, y, text, color) end

---
---Draw a pixel.
---
---
---
---@param x number X coordinate of the pixel position in pixels.
---@param y number Y coordinate of the pixel position in pixels.
---@param color integer A valid color (See ::Color).
---@param image? integer Image to draw on <b>(optional)</b>.
---@return nil
function Graphics.drawPixel(x, y, color, image) end

---
---Get a pixel color from a loaded image.
---
---
---
---@param x integer X coordinate of the pixel.
---@param y integer Y coordinate of the pixel.
---@param img integer A valid image ID.
---@return integer
function Graphics.getPixel(x, y, img) end

---
---Draw a line.
---
---
---
---@param x1 number Starting X coordinate of the line in pixels.
---@param x2 number Ending X coordinate of the line in pixels.
---@param y1 number Starting Y coordinate of the line in pixels.
---@param y2 number Ending Y coordinate of the line in pixels.
---@param color integer A valid color (See ::Color).
---@return nil
function Graphics.drawLine(x1, x2, y1, y2, color) end

---
---Draw a rectangle.
---
---
---
---@param x1 number Starting X coordinate of the rectangle in pixels.
---@param x2 number Ending X coordinate of the rectangle in pixels.
---@param y1 number Starting Y coordinate of the rectangle in pixels.
---@param y2 number Ending Y coordinate of the rectangle in pixels.
---@param color integer A valid color (See ::Color).
---@return nil
function Graphics.fillRect(x1, x2, y1, y2, color) end

---
---Draw an empty rectangle.
---
---
---
---@param x1 number Starting X coordinate of the rectangle in pixels.
---@param x2 number Ending X coordinate of the rectangle in pixels.
---@param y1 number Starting Y coordinate of the rectangle in pixels.
---@param y2 number Ending Y coordinate of the rectangle in pixels.
---@param color integer A valid color (See ::Color).
---@return nil
function Graphics.fillEmptyRect(x1, x2, y1, y2, color) end

---
---Draw a circle.
---
---
---
---@param x number X coordinate of the circle in pixels.
---@param y number Y coordinate of the circle in pixels.
---@param rad number Radius size of the circle.
---@param color integer A valid color (See ::Color).
---@return nil
function Graphics.fillCircle(x, y, rad, color) end

---
---Create an empty image.
---
---
---
---@param width integer Image width.
---@param height integer Image height.
---@param color? integer A valid color (See ::Color) <b>(optional)</b>.
---@return integer
function Graphics.createImage(width, height, color) end

---
---Load a .png/.jpg/.bmp image.
---
---
---
---@param filename string Name of the file to open.
---@return integer
function Graphics.loadImage(filename) end

---
---Save a loaded image to a .png/.bmp image.
---
---
---
---@param img integer A valid image ID.
---@param filename string The filename of the screenshot output.
---@param format? ImgFmt The format to use for the output file <b>(optional)</b>.
---@return nil
function Graphics.saveImage(img, filename, format) end

---
---Load a .png/.jpg/.bmp image (asynchronous).
---
---
---
---@param filename string Name of the file to open.
---@return nil
function Graphics.loadImageAsync(filename) end

---
---Load a .gif animated image.
---
---
---
---@param filename string Name of the file to open.
---@return integer
function Graphics.loadAnimatedImage(filename) end

---
---Gets the number of frames of a loaded animated image.
---
---
---
---@param img integer A valid image ID.
---@return integer
function Graphics.getImageFramesNum(img) end

---
---Set current active frame for a loaded animated image.
---
---
---
---@param img integer A valid image ID.
---@param frame integer The frame to set as active.
---@return nil
function Graphics.setImageFrame(img, frame) end

---
---Free a loaded image.
---
---
---
---@param img integer A valid image ID.
---@return nil
function Graphics.freeImage(img) end

---
---Set filters to use for a given image.
---
---
---
---@param img integer A valid image ID.
---@param min_filter ImageFilter Min filter to use.
---@param mag_filter ImageFilter Mag filter to use.
---@return nil
function Graphics.setImageFilters(img, min_filter, mag_filter) end

---
---Get an image width.
---
---
---
---@param img integer A valid image ID.
---@return integer
function Graphics.getImageWidth(img) end

---
---Get an image height.
---
---
---
---@param img integer A valid image ID.
---@return integer
function Graphics.getImageHeight(img) end

---
---Draw an image.
---
---
---
---@param x number X coordinate of the image in pixels.
---@param y number Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param color? integer Image tint color (See ::Color) <b>(optional)</b>.
---@return nil
function Graphics.drawImage(x, y, img, color) end

---
---Draw a rotated image.
---
---
---
---@param x number X coordinate of the image in pixels.
---@param y number Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param rad number Rotation radius.
---@param color? integer Image tint color (See ::Color) <b>(optional)</b>.
---@return nil
function Graphics.drawRotateImage(x, y, img, rad, color) end

---
---Draw a scaled image.
---
---
---
---@param x number X coordinate of the image in pixels.
---@param y number Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param x_scale number Scale value for X parameter.
---@param y_scale number Scale value for Y parameter.
---@param color? integer Image tint color (See ::Color) <b>(optional)</b>.
---@return nil
function Graphics.drawScaleImage(x, y, img, x_scale, y_scale, color) end

---
---Draw a part of an image.
---
---
---
---@param x number X coordinate of the image in pixels.
---@param y number Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param x_start integer Image X coordinate for the partial drawing.
---@param y_start integer Image Y coordinate for the partial drawing.
---@param width number Partial drawing width.
---@param height number Partial drawing height.
---@param color? integer Image tint color (See ::Color) <b>(optional)</b>.
---@return nil
function Graphics.drawPartialImage(x, y, img, x_start, y_start, width, height, color) end

---
---Draw an image with several effects.
---
---
---
---@param x number X coordinate of the image in pixels.
---@param y number Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param x_start integer Image X coordinate for the partial drawing.
---@param y_start integer Image Y coordinate for the partial drawing.
---@param width number Partial drawing width.
---@param height number Partial drawing height.
---@param rad number Rotation radius.
---@param x_scale number Scale value for X parameter.
---@param y_scale number Scale value for Y parameter.
---@param color? integer Image tint color (See ::Color) <b>(optional)</b>.
---@return nil
function Graphics.drawImageExtended(x, y, img, x_start, y_start, width, height, rad, x_scale, y_scale, color) end

---
---Initialize a rescaler.
---
---
---
---@param x integer X coordinate of the rescaler output.
---@param y integer Y coordinate of the rescaler output.
---@param x_scale number Scale value for X parameter.
---@param y_scale number Scale value for Y parameter.
---@return nil
function Graphics.initRescaler(x, y, x_scale, y_scale) end

---
---Terminate a rescaler.
---
---
---
---@return nil
function Graphics.termRescaler() end

Controls = {}

---
---Read pressed buttons.
---
---
---
---@param port? integer Device port to use <b>(optional)</b>.
---@return integer
function Controls.read(port) end

---
---Check if a button is pressed.
---
---
---
---@param bitmask integer A controls bitmask returned by Controls.read.
---@param value Ctrl A control value to check.
---@return boolean
function Controls.check(bitmask, value) end

---
---Changes vibration intensity for Dualshock devices.
---
---
---
---@param port integer Device port to use.
---@param small integer Intensity for small sensor.
---@param large integer Intensity for large sensor.
---@return nil
function Controls.rumble(port, small, large) end

---
---Set lightbar color for Dualshock 4 devices.
---
---
---
---@param port integer Device port to use.
---@param color integer An RGBA color value (See ::Color).
---@return nil
function Controls.setLightbar(port, color) end

---
---Locks default PS button functionality.
---
---
---
---@return nil
function Controls.lockHomeButton() end

---
---Unlocks default PS button functionality.
---
---
---
---@return nil
function Controls.unlockHomeButton() end

---
---Get info about controllers.
---
---
---
---@return table
function Controls.getDeviceInfo() end

---
---Check if an headset is plugged in.
---
---
---
---@return boolean
function Controls.headsetStatus() end

---
---Return set controller enter button.
---
---
---
---@return Ctrl
function Controls.getEnterButton() end

---
---Enable gyroscope sensor.
---
---
---
---@return nil
function Controls.enableGyro() end

---
---Enable accelerometer sensor.
---
---
---
---@return nil
function Controls.enableAccel() end

---
---Disable gyroscope sensor.
---
---
---
---@return nil
function Controls.disableGyro() end

---
---Disable accelerometer sensor.
---
---
---
---@return nil
function Controls.disableAccel() end

Database = {}

---
---Open/Create an SQLite database.
---
---
---
---@param filename string Filename of the database to open.
---@return integer
function Database.open(filename) end

---
---Close an opened database
---
---
---
---@param db integer A valid database handle.
---@return nil
function Database.close(db) end

---
---Execute a query.
---
---
---
---@param db integer A valid database handle.
---@param query string An SQL query to execute.
---@return table
function Database.execQuery(db, query) end

