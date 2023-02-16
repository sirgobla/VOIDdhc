local ModIDS = {
    123
}



 
local Bots = _G.Bots


local controller = _G.Controllers

local self = game.Players.LocalPlayer

if table.find(_G.Bots, game.Players.LocalPlayer.UserId) then
    local upperTorso =self.Character:FindFirstChild("UpperTorso")
    if upperTorso and upperTorso:FindFirstChild("OriginalSize") then
        upperTorso.OriginalSize:Destroy()
    end
end

function renamenames()
	for _,Player in pairs(game:GetService('Players'):GetChildren()) do
		if table.find(controller, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. Player.DisplayName)
				end
			end
		elseif
			table.find(Bots, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🤖]' .. Player.DisplayName)
				end
			end
		if
			Player.Character then
			if Player.Character.Parent.Name == 'Players' then
				if not Player.Character.UpperTorso:FindFirstChild('OriginalSize') then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]' .. Player.DisplayName)
				end
			end
		end
	end
	end
	end