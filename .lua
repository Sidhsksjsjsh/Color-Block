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
local workspace = game:GetService("Workspace")
local T1 = Window:MakeTab({
Name = "Farm",
Icon = "rbxassetid://",
PremiumOnly = false
})

local gamei = T1:AddParagraph("Game Info","Loading Content...")

T1:AddSlider({
  Name = "Height",
  Min = 0,
  Max = 20,
  Default = 5,
  Color = Color3.fromRGB(255,255,255),
  Increment = 1,
  ValueName = "TP Height",
  Callback = function(Value)
    _G.Height = Value
 end    
})

T1:AddToggle({
  Name = "Tween Farm",
  Default = false,
  Callback = function(Value)
      _G.TweenFarm = Value
      workspace.Gravity = 0

    while wait() do
      if _G.TweenFarm == false then break end
    for i, v in pairs(game:GetService("Workspace").Blocks.Block:GetDescendants()) do
                if v.Name == "Wedge" or v.Name == "Part" or v.Name == "Star" then
                    if v.BrickColor == game:GetService("Players").LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor then
                        TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = CFrame.new(v.Position + Vector3.new(0,_G.Height,0))}):Play()
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
      workspace.Gravity = 0

    while wait() do
      if _G.TPFarm == false then break end
    for i, v in pairs(game:GetService("Workspace").Blocks.Block:GetDescendants()) do
                if v.Name == "Wedge" or v.Name == "Part" or v.Name == "Star" then
                    if v.BrickColor == game:GetService("Players").LocalPlayer.PlayerGui.inGameGui.Frame.Color.BackgroundColor then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position + Vector3.new(0,_G.Height,0))
                    end
                end
            end
end
  end    
})

while wait() do
    gamei:Set(string.format("Game Mode: %s\nStage: %s",workspace.GameInfo.GameMode.Value,workspace.GameInfo.Stage.Value),"")
end
