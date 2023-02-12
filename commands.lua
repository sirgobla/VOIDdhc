local playerIDs = _G.VOIDcontrol.Bots
local v = _G.VOIDcontrol.Controllers
local dropping = false
local wallet = false
local dancing = false
local tpose = false
function get_words(str)
    words = {}
    for word in string.gmatch(str, "%w+") do
      table.insert(words, word)
    end
    table.remove(words, 1) -- remove the first word
    print("words:", words)
    print("Message:", str)
    return table.concat(words, " ")
  end

  

  
  -- Get the player's ID
  local playerID = game.Players.LocalPlayer.UserId
  
  -- Check if the player's ID is in the list
  local isInList = false
  for _, id in ipairs(playerIDs) do
      if tostring(id) == tostring(playerID) then
          isInList = true
          break
      end
  end
  
  -- Return an error if the player's ID is not in the list
  if not isInList then
    
    return error("Player ID not in list!")
  end

  local RunService = game:GetService("RunService")
  local MaxFPS = 30
setfpscap(MaxFPS)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(Data)
    local Player = game:GetService("Players")[Data.FromSpeaker]
    local Message = Data.Message
    local Channel = Data.OriginalChannel
    if(tostring(Player.UserId) == tostring(v)) then
        
        if Message == ".wallet" then
            if Player.UserId == v then
                if wallet == false then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet"))
                    wallet = true
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID] Wallet on.","All")
                else
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools(game.Players.LocalPlayer.Character:FindFirstChild("Wallet"))
                    wallet = false
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID] Wallet off.","All")
                end
        if Message == '.chat' then

            local msg_part = get_words(Message)
            if msg_part == nil or msg_part == '' or msg_part==' ' then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID] VOID ON TOP!","All")
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID] "..msg_part,"All")
        end
    end
        end
    end
end
        end)      