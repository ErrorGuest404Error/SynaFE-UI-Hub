--Beta-Testing SynaFE-UI Hub
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib(" [SynaFE-UI Hub Make By: ErrorGuest404Error ]", "Synapse")

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
local Tab = Window:NewTab("Setting")
local SettingSection = Tab:NewSection("Setting Stuff")


MainSection:NewToggle("First Person/Third Person Mode", "exit First Person", function(state)
    if state then

        local player = game.Players.LocalPlayer
 
player.CameraMode = Enum.CameraMode.LockFirstPerson

    else

        local player = game.Players.LocalPlayer
 
player.CameraMode = Enum.CameraMode.Classic

    end
end)