--Beta-Testing SynaFE-UI Hub
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SynaFE-UI Hub", "Synapse")

--MAIN
local Tab = Window:NewTab("Commands")
local MainSection = Tab:NewSection("Commands")

--GAME-SCRIPTS
local Tab = Window:NewTab("GamesScripts")
local GameScriptsSection = Tab:NewSection("Games")

--FeAdminCmdsScripts
local Tab = Window:NewTab("FeAdminCmds")
local FeAdminCmdsScriptsSection = Tab:NewSection("FeAdminCmdsScripts")

--KeybindsCmds
local Tab = Window:NewTab("KeybindsCmds")
local KeybindsCmdsSection = Tab:NewSection("Keybinds")

--UIStuff
local Tab = Window:NewTab("UI")
local UIStuffSection = Tab:NewSection("UIStuff")

--Setting
local Tab = Window:NewTab("🛠️Setting")
local SettingSection = Tab:NewSection("Setting Stuff")

--Pro-SynaFE-UI-Hub
local Tab = Window:NewTab("🥏ProSynaFEUIHub")
local SettingSection = Tab:NewSection("Buy with Robux [Coming soon]")


MainSection:NewToggle("First Person/Third Person Mode", "exit First Person", function(state)
    if state then

        local player = game.Players.LocalPlayer
 
player.CameraMode = Enum.CameraMode.LockFirstPerson

    else

        local player = game.Players.LocalPlayer
 
player.CameraMode = Enum.CameraMode.Classic

    end
end)

MainSection:NewToggle("Bypass Fly", "Fly Mode", function(state)
    if state then

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

        Fly(true)

    else

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 

        Fly(false)
            
    end
end)

MainSection:NewButton("god mode", "Reset", function()
    local player = game:GetService("Players").LocalPlayer
local character = player:WaitForChild("Character")

local Tool = script.Parent

Tool.Equipped:Connect(function()
	if character then
		local forceField = Instance.new("ForceField")
		forceField.Visible = false
		forceField.Parent = character
	end
end)

Tool.Unequipped:Connect(function()
    character.ForceField:Destroy()
end)
end)
