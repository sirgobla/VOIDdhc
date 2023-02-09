-- Roblox GUI -- 

local dhcCalcGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
dhcCalcGui.Name = "dhc calculator "

local dhcFrame = Instance.new("Frame", dhcCalcGui)
dhcFrame.Name = "dhcFrame"
dhcFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
dhcFrame.Position = UDim2.new(0.35, 0, 0.35, 0)

local dhcLabel = Instance.new("TextLabel", dhcFrame)
dhcLabel.Name = "dhcLabel"
dhcLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
dhcLabel.Position = UDim2.new(0.1, 0, 0, 0)
dhcLabel.Text = "How much dhc do you need to drop?"

local dhcInput = Instance.new("TextBox", dhcFrame)
dhcInput.Name = "dhcInput"
dhcInput.Size = UDim2.new(0.8, 0, 0.2, 0)
dhcInput.Position = UDim2.new(0.1, 0, 0.3, 0)
dhcInput.Text = ""

local altsLabel = Instance.new("TextLabel", dhcFrame)
altsLabel.Name = "altsLabel"
altsLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
altsLabel.Position = UDim2.new(0.1, 0, 0.6, 0)
altsLabel.Text = "How many alts do you have?"

local altsInput = Instance.new("TextBox", dhcFrame)
altsInput.Name = "altsInput"
altsInput.Size = UDim2.new(0.8, 0, 0.2, 0)
altsInput.Position = UDim2.new(0.1, 0, 0.9, 0)
altsInput.Text = ""

local calculateButton = Instance.new("TextButton", dhcFrame)
calculateButton.Name = "calculateButton"
calculateButton.Size = UDim2.new(0.8, 0, 0.1, 0)
calculateButton.Position = UDim2.new(0.1, 0, 1.2, 0)
calculateButton.Text = "Calculate"

calculateButton.MouseButton1Click:Connect(function()
	local dhc = tonumber(dhcInput.Text)
	local alts = tonumber(altsInput.Text)

	local dhcCalcSystem = (30/100) * dhc
	local dhcAfterTax = dhc - dhcCalcSystem
	local minuteRate = (28000) * alts
	local minutesTimeCalc = dhc / 28000
	minutesTimeCalc = minutesTimeCalc / alts

	dhcLabel.Text = "Inputted amount: " .. tostring(dhc)
	altsLabel.Text = "Calculated: " .. tostring(math.floor(dhcAfterTax))
	altsInput.Text = "Tax: " .. tostring(math.floor(dhcCalcSystem))
	dhcInput.Text = "Rate: " .. tostring(math.floor(minuteRate)) .. "/minute"
	calculateButton.Text = "Bots/Alts: " .. tostring(math.floor(alts))
end)