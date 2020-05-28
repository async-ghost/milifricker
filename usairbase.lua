--@ credits to deto for ui lib @--
--! credits to people who made inf yield, Frost Explorer, and Invis Fling !--
-- * teleports and grab gun acs bypass and script by ghost and droid, enjoy * -- 

local Finity = loadstring(game:HttpGet("http://finity.vip/scripts/finity_lib.lua"))()
local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.RightShift)

local GunCategory = FinityWindow:Category("Guns")
local TeleportCategory = FinityWindow:Category("Teleports")
local MiscCategory = FinityWindow:Category("Misc")

local GrabGuns = GunCategory:Sector("Grab Guns")

local TeleportList = TeleportCategory:Sector("Teleport List")
local VehicleList = TeleportCategory:Sector("Vehicle TP List")

local MiscList = MiscCategory:Sector("Misc List")
local MiscWalkspeed = MiscCategory:Sector("WalkSpeed")
local MiscJumpPower = MiscCategory:Sector("Jump Power")

MiscWalkspeed:Cheat("Slider", "Walkspeed", function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end, {min = 0, max = 120, suffix = " studs/s"})

MiscJumpPower:Cheat("Slider", "Jump Power", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end, {min = 0, max = 500, suffix = "studs/y"})

VehicleList:Cheat("Button", "helicopter", function(Option)
	game.Workspace.OPFORHeli["Regen Button"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
VehicleList:Cheat("Button", "F-22", function(Option)
	game.Workspace.F22["Regen Button"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
VehicleList:Cheat("Button", "F-16", function(Option)
	game.Workspace["F-16"]["Regen Button"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
VehicleList:Cheat("Button", "A-10", function(Option)
	game.Workspace.A10["Regen Button"].Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
TeleportList:Cheat("Button", "spectator spawn", function(Option)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2835.29, 14006.8, 126.75)
end)
TeleportList:Cheat("Button", "hangar", function(Option)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5809.44043, 1.52344823, 1020.38947)
end)
MiscList:Cheat("Button", "Inf Yield", function(Option)
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
MiscList:Cheat("Button", "Invis Fling", function(Option)
	loadstring(game:HttpGet('https://pastebin.com/raw/MfaJrGKL'))()
end)
MiscList:Cheat("Button", "Frost Explorer", function(Option)
	loadstring(game:HttpGet("https://pastebin.com/raw/meA9wBb2"))()
end)
GrabGuns:Cheat("Button", "Grab Guns", function()
    game.Workspace.hk416.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

local CreditsCategory = FinityWindow:Category("Credits")
local CreditsCreator = CreditsCategory:Sector("Creators")

CreditsCreator:Cheat("Label", "detourious @ v3rmillion.net for sexy ui lib")
CreditsCreator:Cheat("Label", "ghost and droid for military fucker v1")

