require("lpp-vita")

local white = Color.new(255, 255, 255, 0)

while true do
	Graphics.initBlend()
	Screen.clear()
	Graphics.debugPrint(5, 5, "Hello World", white)
	Graphics.debugPrint(5, 25, "Press TRIANGLE to return to the sample selector", white)
	Graphics.termBlend()
	Screen.flip()
	Controls.lockHomeButton()
	if Controls.check(Controls.read(), Ctrl.SCE_CTRL_TRIANGLE) then
		Controls.read()
		Controls.unlockHomeButton()
	end
end
