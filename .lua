--[[
while getgenv().JJsploit do
    pcall(function()
            for i, v in pairs(game:GetService("Workspace").Blocks.Block:GetDescendants()) do
                if v.Name == "Wedge" or v.Name == "Part" or v.Name == "Star" then
                    if
                        v.BrickColor ==
                            game:GetService("Players").LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor
                     then
                        tweenService, tweenInfo =
                            game:GetService("TweenService"),
                            TweenInfo.new(1, Enum.EasingStyle.Linear)
                        tween =
                            tweenService:Create(
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
                            tweenInfo,
                            {CFrame = CFrame.new(v.Position)}
                        )
                        tween:Play()
                    end
                end
            end
        end)
    wait()
end end)
]]

local TweenService = game:GetService("TweenService")
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})

local T1 = Window:MakeTab({
Name = "Farm",
Icon = "rbxassetid://",
PremiumOnly = false
})

-- v.Position
T1:AddToggle({
  Name = "Tween Farm",
  Default = false,
  Callback = function(Value)
      _G.TweenFarm = Value
    while wait() do
      if _G.TweenFarm == false then break end
    for i, v in pairs(game:GetService("Workspace").Blocks.Block:GetDescendants()) do
                if v.Name == "Wedge" or v.Name == "Part" or v.Name == "Star" then
                    if v.BrickColor == game:GetService("Players").LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor then
                        TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = v.Position}):Play()
                    end
                end
            end
end
  end    
})

T1:AddToggle({
  Name = "TP Farm",
  Default = false,
  Callback = function(Value)
      _G.TPFarm = Value
    while wait() do
      if _G.TPFarm == false then break end
    for i, v in pairs(game:GetService("Workspace").Blocks.Block:GetDescendants()) do
                if v.Name == "Wedge" or v.Name == "Part" or v.Name == "Star" then
                    if v.BrickColor == game:GetService("Players").LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Position
                    end
                end
            end
end
  end    
})
