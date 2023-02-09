local config = _G.VOIDcontrol

if _G.Voidload == true then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID] Script allready injected on this account.","All")
    return
else
    _G.Voidload = true
end

setfpscap(config.FPScap)
game:GetService("RunService"):Set3dRenderingEnabled(false)

local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Character ~= nil


