local States = {}

States.Auto_Refresh = true

local function GetOrientation()
	local PosX, PosY, PosZ = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame:ToOrientation()
	return CFrame.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.X, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Y, game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Z) * CFrame.fromOrientation(0, PosY, 0)
end

local function GetCamPos()
	return workspace.CurrentCamera.CFrame
end

spawn(function()
	while wait() do
		if States.Auto_Refresh == true then
			pcall(function()
				if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
					if game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("Home").hud.Topbar.titleBar.Title.Text ~= "Lights out" then
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					else
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
								wait(.075)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetOrientation()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
								wait(.075)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					end
				end
			end)
		end
	end
end)

workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really black").Name)

COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = COREGUI
	notLoaded.Text = 'AquaUI is waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

local Aqua = Instance.new("ScreenGui")
local EXEFrame = Instance.new("Frame")
local EXETopbar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local exeBar = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local HOMEFRame = Instance.new("Frame")
local HOMETopbar = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local CMDFrame = Instance.new("Frame")
local findCmd = Instance.new("TextBox")
local CMDTopbar = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local cmdHandler = Instance.new("ScrollingFrame")
local cmdUIList = Instance.new("UIListLayout")
local cmdText = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local NOTIFrame = Instance.new("Frame")
local NOTITopbar = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local UICorner_9 = Instance.new("UICorner")
local cmdTitle = Instance.new("TextLabel")
local Background4 = Instance.new("Frame")
local Notify6 = Instance.new("TextLabel")
local Notify5 = Instance.new("TextLabel")
local Notify4 = Instance.new("TextLabel")
local Notify3 = Instance.new("TextLabel")
local Notify2 = Instance.new("TextLabel")
local Notify1 = Instance.new("TextLabel")
local Prefix = ";"

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

Aqua.Name = randomString()
Aqua.Parent = COREGUI
Aqua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

EXEFrame.Name = "EXEFrame"
EXEFrame.Parent = Aqua
EXEFrame.Active = true
EXEFrame.BackgroundColor3 = Color3.fromRGB(34, 38, 42)
EXEFrame.BackgroundTransparency = 0.200
EXEFrame.BorderSizePixel = 0
EXEFrame.ClipsDescendants = true
EXEFrame.Position = UDim2.new(0.307267934, 0, 0.819197059, 0)
EXEFrame.Size = UDim2.new(0, 525, 0, 95)
EXEFrame.ZIndex = 2

EXETopbar.Name = "EXETopbar"
EXETopbar.Parent = EXEFrame
EXETopbar.Active = true
EXETopbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
EXETopbar.BorderSizePixel = 0
EXETopbar.Size = UDim2.new(0, 525, 0, 20)

Title.Name = "Title"
Title.Parent = EXETopbar
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 5, 0, 0)
Title.Size = UDim2.new(0, 195, 0, 20)
Title.Font = Enum.Font.GothamMedium
Title.Text = "Executor"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = EXETopbar

exeBar.Name = "exeBar"
exeBar.Parent = EXEFrame
exeBar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
exeBar.BorderSizePixel = 0
exeBar.Position = UDim2.new(0.304761916, 0, 0.410526305, 0)
exeBar.Size = UDim2.new(0, 335, 0, 25)
exeBar.Font = Enum.Font.Code
exeBar.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
exeBar.Text = ""
exeBar.TextColor3 = Color3.fromRGB(255, 255, 255)
exeBar.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = exeBar

UICorner_3.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_3.Parent = EXEFrame

HOMEFRame.Name = "HOMEFRame"
HOMEFRame.Parent = Aqua
HOMEFRame.Active = true
HOMEFRame.BackgroundColor3 = Color3.fromRGB(34, 38, 42)
HOMEFRame.BackgroundTransparency = 0.200
HOMEFRame.BorderSizePixel = 0
HOMEFRame.ClipsDescendants = true
HOMEFRame.Position = UDim2.new(0.307732075, 0, 0.485824823, 0)
HOMEFRame.Size = UDim2.new(0, 525, 0, 225)

HOMETopbar.Name = "HOMETopbar"
HOMETopbar.Parent = HOMEFRame
HOMETopbar.Active = true
HOMETopbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
HOMETopbar.BorderSizePixel = 0
HOMETopbar.Size = UDim2.new(0, 525, 0, 20)

Title_2.Name = "Title"
Title_2.Parent = HOMETopbar
Title_2.Active = true
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Position = UDim2.new(0, 5, 0, 0)
Title_2.Size = UDim2.new(0, 170, 0, 20)
Title_2.Font = Enum.Font.GothamMedium
Title_2.Text = "Home"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14.000
Title_2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = HOMETopbar

UICorner_5.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_5.Parent = HOMEFRame

CMDFrame.Name = "CMDFrame"
CMDFrame.Parent = Aqua
CMDFrame.Active = true
CMDFrame.BackgroundColor3 = Color3.fromRGB(34, 38, 42)
CMDFrame.BackgroundTransparency = 0.200
CMDFrame.BorderSizePixel = 0
CMDFrame.ClipsDescendants = true
CMDFrame.Position = UDim2.new(0.171679363, 0, 0.484614253, 0)
CMDFrame.Size = UDim2.new(0, 175, 0, 325)

findCmd.Name = "findCmd"
findCmd.Parent = CMDFrame
findCmd.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
findCmd.BackgroundTransparency = 1.000
findCmd.BorderSizePixel = 0
findCmd.Position = UDim2.new(0, 0, 0.0645161271, 0)
findCmd.Size = UDim2.new(0, 175, 0, 20)
findCmd.Font = Enum.Font.Code
findCmd.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
findCmd.PlaceholderText = "Search Here"
findCmd.Text = ""
findCmd.TextColor3 = Color3.fromRGB(255, 255, 255)
findCmd.TextSize = 14.000

CMDTopbar.Name = "CMDTopbar"
CMDTopbar.Parent = CMDFrame
CMDTopbar.Active = true
CMDTopbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
CMDTopbar.BorderSizePixel = 0
CMDTopbar.Size = UDim2.new(0, 175, 0, 20)

Title_3.Name = "Title"
Title_3.Parent = CMDTopbar
Title_3.Active = true
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0, 5, 0, 0)
Title_3.Size = UDim2.new(0, 170, 0, 20)
Title_3.Font = Enum.Font.GothamMedium
Title_3.Text = "Commands"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14.000
Title_3.TextXAlignment = Enum.TextXAlignment.Left

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = CMDTopbar

cmdHandler.Name = "cmdHandler"
cmdHandler.Parent = CMDFrame
cmdHandler.Active = true
cmdHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmdHandler.BackgroundTransparency = 1.000
cmdHandler.BorderSizePixel = 0
cmdHandler.Position = UDim2.new(0, 0, 0.12512216, 0)
cmdHandler.Size = UDim2.new(0, 175, 0, 297)
cmdHandler.CanvasSize = UDim2.new(0, 0, 9, 0)

cmdUIList.Name = "cmdUIList"
cmdUIList.Parent = cmdHandler
cmdUIList.SortOrder = Enum.SortOrder.LayoutOrder
cmdUIList.Padding = UDim.new(0, 5)

cmdText.Name = "cmdText"
cmdText.Parent = nil
cmdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmdText.BackgroundTransparency = 1.000
cmdText.BorderColor3 = Color3.fromRGB(27, 42, 53)
cmdText.Position = UDim2.new(0, 0, 1.02752786e-07, 0)
cmdText.Size = UDim2.new(0, 175, 0, 22)
cmdText.Font = Enum.Font.SourceSans
cmdText.TextColor3 = Color3.fromRGB(255, 255, 255)
cmdText.TextSize = 14.000

UICorner_7.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_7.Parent = CMDFrame

NOTIFrame.Name = "NOTIFrame"
NOTIFrame.Parent = Aqua
NOTIFrame.Active = true
NOTIFrame.BackgroundColor3 = Color3.fromRGB(34, 38, 42)
NOTIFrame.BackgroundTransparency = 0.200
NOTIFrame.BorderSizePixel = 0
NOTIFrame.ClipsDescendants = true
NOTIFrame.Position = UDim2.new(0.699320614, 0, 0.484614253, 0)
NOTIFrame.Size = UDim2.new(0, 225, 0, 125)

NOTITopbar.Name = "NOTITopbar"
NOTITopbar.Parent = NOTIFrame
NOTITopbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
NOTITopbar.BorderSizePixel = 0
NOTITopbar.Size = UDim2.new(1, 0, 0, 20)

Title_4.Name = "Title"
Title_4.Parent = NOTITopbar
Title_4.Active = true
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0, 5, 0, 0)
Title_4.Size = UDim2.new(0, 170, 0, 20)
Title_4.Font = Enum.Font.GothamMedium
Title_4.Text = "Notification"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14.000
Title_4.TextXAlignment = Enum.TextXAlignment.Left

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = NOTITopbar

UICorner_9.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_9.Parent = NOTIFrame

cmdTitle.Name = "cmdTitle"
cmdTitle.Parent = NOTIFrame
cmdTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmdTitle.BackgroundTransparency = 1.000
cmdTitle.Position = UDim2.new(0.0529999994, 0, 0.216000006, 0)
cmdTitle.Size = UDim2.new(0, 200, 0, 75)
cmdTitle.Font = Enum.Font.SourceSans
cmdTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
cmdTitle.TextSize = 14.000

Background4.Name = "Background4"
Background4.Parent = Aqua
Background4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background4.BorderSizePixel = 0
Background4.Position = UDim2.new(0.0154639352, 0, 0.519107938, 0)
Background4.Size = UDim2.new(0, 250, 0, 119)
Background4.Active = true
Background4.Draggable = true

Notify6.Name = "Notify6"
Notify6.Parent = Background4
Notify6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify6.BackgroundTransparency = 2.000
Notify6.BorderSizePixel = 0
Notify6.Position = UDim2.new(0, 0, -0.00512820482, 0)
Notify6.Size = UDim2.new(0, 250, 0, 20)
Notify6.Font = Enum.Font.GothamBlack
Notify6.Text = ""
Notify6.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify6.TextScaled = true
Notify6.TextSize = 14.000
Notify6.TextWrapped = true

Notify5.Name = "Notify5"
Notify5.Parent = Background4
Notify5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify5.BackgroundTransparency = 1.000
Notify5.BorderSizePixel = 0
Notify5.Position = UDim2.new(0, 0, 0.162939027, 0)
Notify5.Size = UDim2.new(0, 250, 0, 20)
Notify5.Font = Enum.Font.GothamBlack
Notify5.Text = ""
Notify5.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify5.TextScaled = true
Notify5.TextSize = 14.000
Notify5.TextWrapped = true

Notify4.Name = "Notify4"
Notify4.Parent = Background4
Notify4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify4.BackgroundTransparency = 1.000
Notify4.BorderSizePixel = 0
Notify4.Position = UDim2.new(0, 0, 0.331006259, 0)
Notify4.Size = UDim2.new(0, 250, 0, 20)
Notify4.Font = Enum.Font.GothamBlack
Notify4.Text = ""
Notify4.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify4.TextScaled = true
Notify4.TextSize = 14.000
Notify4.TextWrapped = true

Notify3.Name = "Notify3"
Notify3.Parent = Background4
Notify3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify3.BackgroundTransparency = 1.000
Notify3.BorderSizePixel = 0
Notify3.Position = UDim2.new(0, 0, 0.499073505, 0)
Notify3.Size = UDim2.new(0, 250, 0, 20)
Notify3.Font = Enum.Font.GothamBlack
Notify3.Text = ""
Notify3.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify3.TextScaled = true
Notify3.TextSize = 14.000
Notify3.TextWrapped = true

Notify2.Name = "Notify2"
Notify2.Parent = Background4
Notify2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify2.BackgroundTransparency = 1.000
Notify2.BorderSizePixel = 0
Notify2.Position = UDim2.new(0, 0, 0.667140722, 0)
Notify2.Size = UDim2.new(0, 250, 0, 20)
Notify2.Font = Enum.Font.GothamBlack
Notify2.Text = ""
Notify2.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify2.TextScaled = true
Notify2.TextSize = 14.000
Notify2.TextWrapped = true

Notify1.Name = "Notify1"
Notify1.Parent = Background4
Notify1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify1.BackgroundTransparency = 1.000
Notify1.BorderSizePixel = 0
Notify1.Position = UDim2.new(0, 0, 0.835207999, 0)
Notify1.Size = UDim2.new(0, 250, 0, 20)
Notify1.Font = Enum.Font.GothamBlack
Notify1.Text = ""
Notify1.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify1.TextScaled = true
Notify1.TextSize = 14.000
Notify1.TextWrapped = true

local Versions = "1.0"
local Cmd = {}

Cmd[#Cmd + 1] = {Text = "versions "..Versions,Title = "Script versions"}
Cmd[#Cmd + 1] = {Text = "script by LocalPlayer#7434",Title = "Script owner"}
Cmd[#Cmd + 1] =	{Text = "cmd / cmds",Title = "Show commands bar"}
Cmd[#Cmd + 1] =	{Text = "rejoin / rj",Title = "Rejoin the game"}
Cmd[#Cmd + 1] =	{Text = "leave / leaveserver / quit",Title = "Leave the server"}
Cmd[#Cmd + 1] =	{Text = "admin / giveadmin [plr]",Title = "Give a commands to player"}
Cmd[#Cmd + 1] =	{Text = "unadmin / removeadmin [plr]",Title = "Remove a commands from player"}
Cmd[#Cmd + 1] =	{Text = "kill [plr]",Title = "Kill the player"}
Cmd[#Cmd + 1] =	{Text = "killall",Title = "Kill all players"}
Cmd[#Cmd + 1] =	{Text = "killguard / killsguard",Title = "Kill all guards"}
Cmd[#Cmd + 1] =	{Text = "killinmate / killsinmate",Title = "Kill all inmates"}
Cmd[#Cmd + 1] =	{Text = "killcriminal / killscriminal",Title = "Kill all criminals"}
Cmd[#Cmd + 1] =	{Text = "tase [plr]",Title = "Tase the player"}
Cmd[#Cmd + 1] =	{Text = "loopkill / loopkills [plr]",Title = "Loop kills player"}
Cmd[#Cmd + 1] =	{Text = "unloopkill / unloopkills [plr]",Title = "Unloop kills player"}
Cmd[#Cmd + 1] =	{Text = "loopkillall / loopkillsall",Title = "Loop kills all players"}
Cmd[#Cmd + 1] =	{Text = "loopkillguard / loopkillsguard",Title = "Loop kills all guards"}
Cmd[#Cmd + 1] =	{Text = "loopkillinmate / loopkillinmates",Title = "Loop kills all inmates"}
Cmd[#Cmd + 1] =	{Text = "loopkillcriminal / loopkillcriminals",Title = "Loop kills all criminals"}
Cmd[#Cmd + 1] =	{Text = "unloopkillall / unloopkillsall",Title = "Unloop kills all players"}
Cmd[#Cmd + 1] =	{Text = "unloopkillguard / unloopkillsguard",Title = "Unloop kills all guards"}
Cmd[#Cmd + 1] =	{Text = "unloopkillinmate / unloopkillinmates",Title = "Unloop kills all inmates"}
Cmd[#Cmd + 1] =	{Text = "unloopkillcriminal / unloopkillcriminals",Title = "Unloop kills all criminals"}
Cmd[#Cmd + 1] =	{Text = "inmate / inmates / prisoner / prisoners",Title = "Become inmate team"}
Cmd[#Cmd + 1] =	{Text = "guard / guards / cop / polices",Title = "Become guard team"}
Cmd[#Cmd + 1] =	{Text = "crim / criminals / criminal",Title = "Become criminal team"}
Cmd[#Cmd + 1] =	{Text = "neutral / neutrals",Title = "Become neutral team"}
Cmd[#Cmd + 1] =	{Text = "re / refresh",Title = "Respawn on old position"}
Cmd[#Cmd + 1] =	{Text = "res / respawn",Title = "Respawn on respawn pads"}
Cmd[#Cmd + 1] =	{Text = "goto / to [plr]",Title = "Teleports to the player"}
Cmd[#Cmd + 1] =	{Text = "bring [plr]",Title = "Teleports player to you"}
Cmd[#Cmd + 1] =	{Text = "tp / teleport [plr] [plr2]",Title = "Teleports player to another player"}
Cmd[#Cmd + 1] =	{Text = "arrest [plr] [time]",Title = "Arrest player that is a criminal"}
Cmd[#Cmd + 1] =	{Text = "arrestall / arrestothers",Title = "Arrest all criminals"}
Cmd[#Cmd + 1] =	{Text = "spamarrest / looparrest [plr]",Title = "Spam arrest player & lag player and server"}
Cmd[#Cmd + 1] =	{Text = "unspamarrest / unlooparrest [plr]",Title = "Stop spam arrest player"}
Cmd[#Cmd + 1] =	{Text = "clearloopkill / clearloopkills",Title = "clear all loop kills table"}
Cmd[#Cmd + 1] =	{Text = "auto / autore / autorefresh",Title = "Auto respawn on old position when died"}
Cmd[#Cmd + 1] =	{Text = "unauto / unautore / unautorefresh",Title = "Stop auto respawn on old position when died"}
Cmd[#Cmd + 1] = {Text = "antitp / antibring",Title = "You are cannot be bring by another exploiter"}
Cmd[#Cmd + 1] = {Text = "unantitp / unantibring",Title = "You are can be bring by another exploiter"}
Cmd[#Cmd + 1] = {Text = "killsaura [plr]",Title = "Gives player a kill aura"}
Cmd[#Cmd + 1] = {Text = "nokillsaura [plr]",Title = "Remove a kill aura from player"}
Cmd[#Cmd + 1] = {Text = "addvirus / virus [plr]",Title = "Virus player"}
Cmd[#Cmd + 1] = {Text = "removevirus / revirus [plr]",Title = "Remove a virus from a player"}
Cmd[#Cmd + 1] = {Text = "antifling",Title = "Activate anti fling"}
Cmd[#Cmd + 1] = {Text = "unantifling",Title = "Unactivate anti fling"}
Cmd[#Cmd + 1] = {Text = "god",Title = "Become a god mode"}
Cmd[#Cmd + 1] = {Text = "ungod",Title = "Unbecome a god mode"}
Cmd[#Cmd + 1] =	{Text = "view / spectate / watch [plr]",Title = "Spectates the player"}
Cmd[#Cmd + 1] =	{Text = "unview / unspectate / stopwatch",Title = "Unspectates the player"}
Cmd[#Cmd + 1] =	{Text = "fastpunch / speedpunchh",Title = "Activate fast punch"}
Cmd[#Cmd + 1] =	{Text = "slowpunch / nofastpunch / normalspeedpunch",Title = "unactivate fast punch"}
Cmd[#Cmd + 1] =	{Text = "superpunch / onepunch",Title = "Activate super punch"}
Cmd[#Cmd + 1] =	{Text = "nosuperpunch / normalpunch",Title = "Unactivate super punch"}
Cmd[#Cmd + 1] =	{Text = "prefix / newprefix / changeprefix [prefix text]",Title = "Changes prefix"}
Cmd[#Cmd + 1] =	{Text = "red",Title = "Changes name tag color to red color"}
Cmd[#Cmd + 1] = {Text = "antilag / boostfps",Title = "Boost a little fps"}
Cmd[#Cmd + 1] = {Text = "unantilag",Title = "Stop boost the fps"}
Cmd[#Cmd + 1] = {Text = "noclip / noclips",Title = "Activate no clips"}
Cmd[#Cmd + 1] = {Text = "clip / clips",Title = "Unactivate no clips"}
Cmd[#Cmd + 1] =	{Text = "orange",Title = "Changes name tag color to orange color"}
Cmd[#Cmd + 1] =	{Text = "blue",Title = "Changes name tag color to blue color"}
Cmd[#Cmd + 1] =	{Text = "black",Title = "Changes name tag color to black color"}
Cmd[#Cmd + 1] =	{Text = "purple",Title = "Changes name tag color to purple color"}
Cmd[#Cmd + 1] =	{Text = "brown",Title = "Changes name tag color to brown color"}
Cmd[#Cmd + 1] =	{Text = "white",Title = "Changes name tag color to white color"}
Cmd[#Cmd + 1] =	{Text = "pink",Title = "Changes name tag color to pink color"}
Cmd[#Cmd + 1] =	{Text = "grey",Title = "Changes name tag color to grey color"}
Cmd[#Cmd + 1] =	{Text = "green",Title = "Changes name tag color to green color"}
Cmd[#Cmd + 1] =	{Text = "yellow",Title = "Changes name tag color to yellow color"}
Cmd[#Cmd + 1] =	{Text = "getpos",Title = "Prints positions"}
Cmd[#Cmd + 1] =	{Text = "unload / destroygui",Title = "Unload the scripts"}
Cmd[#Cmd + 1] =	{Text = "reload / update",Title = "Reload the script to new version"}
Cmd[#Cmd + 1] =	{Text = "How to open console?",Title = "To open console chat /console or press F9 or Fn + F9"}
Cmd[#Cmd + 1] =	{Text = "lagserver / disconnect",Title = "Lag server and disconnect after 5 minutes of lagging"}
Cmd[#Cmd + 1] =	{Text = "unlagserver / undisconnect",Title = "Stop lag server"}
Cmd[#Cmd + 1] =	{Text = "speed / setspeed / walkspeed [count]",Title = "Changes walk speeds"}
Cmd[#Cmd + 1] =	{Text = "jumppower / setjumppower [count]",Title = "Changes jump powers"}
Cmd[#Cmd + 1] =	{Text = "hipheight / sethipheight [count]",Title = "Changes hip heights"}
Cmd[#Cmd + 1] =	{Text = "gravity / setgravity [count]",Title = "Changes gravity"}
Cmd[#Cmd + 1] =	{Text = "resetspeed / resetwalkspeed",Title = "Reset walk speeds"}
Cmd[#Cmd + 1] =	{Text = "resetjumppower / rejumppower",Title = "Reset jump powers"}
Cmd[#Cmd + 1] =	{Text = "resethipheight / rehipheight",Title = "Reset hip heights"}
Cmd[#Cmd + 1] =	{Text = "resetgravity / regravity",Title = "Reset gravity"}
Cmd[#Cmd + 1] =	{Text = "makecrim [plr]",Title = "Make the player become a criminal"}
Cmd[#Cmd + 1] =	{Text = "makecrimall",Title = "Make all players become a criminals"}
Cmd[#Cmd + 1] =	{Text = "loopbring [plr]",Title = "Loop bring player"}
Cmd[#Cmd + 1] =	{Text = "unloopbring ",Title = "Unloop bring player"}
Cmd[#Cmd + 1] =	{Text = "baseballbat / bat",Title = "Gets bat"}
Cmd[#Cmd + 1] =	{Text = "superknife",Title = "Gets super knife"}
Cmd[#Cmd + 1] =	{Text = "firespeed / setfirespeed [count]",Title = "Changes fire speed for the gun"}
Cmd[#Cmd + 1] =	{Text = "autofire",Title = "Changes gun ststes to auto fire"}
Cmd[#Cmd + 1] =	{Text = "semifire",Title = "Changes gun ststes to semi fire"}
Cmd[#Cmd + 1] =	{Text = "burst / burstbullets / bullets [count]",Title = "Changes a bullets for the gun will come out when shot"}
Cmd[#Cmd + 1] =	{Text = "reloadtime / reloadtimes [count]",Title = "Changes reload times for the gun"}
Cmd[#Cmd + 1] =	{Text = "gun / guns / allguns",Title = "Obtains all guns"}
Cmd[#Cmd + 1] =	{Text = "autogun / autoguns / autoallguns",Title = "Activate auto gun when respawned"}
Cmd[#Cmd + 1] =	{Text = "unautogun / unautoguns / unautoallguns",Title = "Unactivate auto gun when respawned"}
Cmd[#Cmd + 1] =	{Text = "taserbypass / antitaser / lock",Title = "Bypass taser when got tased"}
Cmd[#Cmd + 1] =	{Text = "untaserbypass / notaserbypass / unlock",Title = "Unbypass taser when got tased"}
Cmd[#Cmd + 1] =	{Text = "nodoors / deletedoors",Title = "Deletes all doors"}
Cmd[#Cmd + 1] =	{Text = "restoredoors / doors",Title = "Restores all doors"}
Cmd[#Cmd + 1] =	{Text = "nowalls / deletewalls - delete walls",Title = "Deletes all walls"}
Cmd[#Cmd + 1] =	{Text = "walls / restorewalls - restore walls",Title = "Restore all walls"}
Cmd[#Cmd + 1] =	{Text = "anticrash / antivest",Title = "Anti crash when someone spamming armor"}
Cmd[#Cmd + 1] =	{Text = "unanticrash / unantivest",Title = "Unanti crash when someone spamming armor"}
Cmd[#Cmd + 1] =	{Text = "antishield / noshield",Title = "Anti shield users"}
Cmd[#Cmd + 1] =	{Text = "unantishield",Title = "Unanti shield users"}
Cmd[#Cmd + 1] =	{Text = "gatetower",Title = "Teleports to the gate tower"}
Cmd[#Cmd + 1] =	{Text = "tower",Title = "Teleports to the yard tower"}
Cmd[#Cmd + 1] =	{Text = "sewer",Title = "Teleports to the sewer"}
Cmd[#Cmd + 1] = {Text = "yard",Title = "Teleports to yard"}
Cmd[#Cmd + 1] =	{Text = "backnexus",Title = "Teleports to the back nexus"}
Cmd[#Cmd + 1] =	{Text = "nexus",Title = "Teleports to the nexus"}
Cmd[#Cmd + 1] =	{Text = "gate",Title = "Teleports to the gate"}
Cmd[#Cmd + 1] = {Text = "findowner / checkscriptowner",Title = "Find a script owner in the server"}
Cmd[#Cmd + 1] = {Text = "getplayer / getplayers",Title = "Get a players counts in the server"}
Cmd[#Cmd + 1] = {Text = "rapidfire",Title = "Activate rapid fire"}
Cmd[#Cmd + 1] = {Text = "autorapidfire",Title = "Auto activate rapid fire"}
Cmd[#Cmd + 1] = {Text = "unautorapidfire",Title = "Unauto activate rapid fire"}
Cmd[#Cmd + 1] =	{Text = "armory",Title = "Teleports to the armory"}
Cmd[#Cmd + 1] =	{Text = "cafe - teleport to cafe",Title = "Teleports to the cafeteria"}
Cmd[#Cmd + 1] =	{Text = "crimbase / criminalbase",Title = "Teleports to the criminals base"}
Cmd[#Cmd + 1] =	{Text = "lunchroom",Title = "Teleports to the cafeteria room"}
Cmd[#Cmd + 1] =	{Text = "spamchat [delay]",Title = "Spam the chat"}
Cmd[#Cmd + 1] =	{Text = "unspamchat",Title = "Unspam the chat"}
Cmd[#Cmd + 1] =	{Text = "savepos / saveposition",Title = "Saves positions"}
Cmd[#Cmd + 1] =	{Text = "loadpos / loadposition",Title = "Loads positions"}
Cmd[#Cmd + 1] =	{Text = "notify",Title = "Send a message when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "nonotify",Title = "Stop send a message when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "copychat",Title = "Copies all players chats"}
Cmd[#Cmd + 1] =	{Text = "uncopychat",Title = "uncopies all players chats"}
Cmd[#Cmd + 1] =	{Text = "chatnotify",Title = "Chats when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "unchatnotify / nochatnotify",Title = "Stop chat when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "opengate",Title = "Open the gate"}
Cmd[#Cmd + 1] =	{Text = "antifell / antivoid",Title = "Activate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =	{Text = "unantifell / unantivoid",Title = "Unactivate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =	{Text = "beam [plr]",Title = "Shoot a beam to player"}
Cmd[#Cmd + 1] =	{Text = "lagbeam / beam2 [plr]",Title = "Shoot a beam to player but lag"}
Cmd[#Cmd + 1] =	{Text = "crash / beam3 [plr]",Title = "Shoot a beam to player but even more lag"}
Cmd[#Cmd + 1] = {Text = "antispamarrest",Title = "Activate anti spam arrest"}
Cmd[#Cmd + 1] = {Text = "unantispamarrest",Title = "Unactivate anti spam arrest"}
Cmd[#Cmd + 1] =	{Text = "!getprefix",Title = "If you for get prefix you can type this in chat"}
Cmd[#Cmd + 1] = {Text = "fly / flight [speed]",Title = "Enables flight"}
Cmd[#Cmd + 1] = {Text = "unfly",Title = "Disables flight"}
Cmd[#Cmd + 1] = {Text = "vfly / vflight [speed]",Title = "Enables vehicle flight"}
Cmd[#Cmd + 1] = {Text = "unvfly / unvflight",Title = "Disables vehicle flight"}

local Mouse = game.Players.LocalPlayer:GetMouse()

for i = 1,#Cmd do
	local clone = cmdText:Clone()
	clone.Text = Cmd[i].Text
	clone.Name = "COMMANDS"
	local Ins = Instance.new("StringValue", clone)
	Ins.Name = "Title"
	Ins.Value = Cmd[i].Title
	local Ins2 = Instance.new("StringValue", clone)
	Ins2.Name = "TopbarName"
	Ins2.Value = Cmd[i].Text:split(" ")[1]
	clone.Parent = cmdHandler
	clone.MouseButton1Click:Connect(function()
		exeBar:CaptureFocus()
		exeBar.Text = clone.Text:split(" ")[1]
		exeBar.CursorPosition = #exeBar.Text + 1
	end)
end

Mouse.Move:Connect(function()
	local Guis = game:GetService("CoreGui"):GetGuiObjectsAtPosition(Mouse.X, Mouse.Y)
	local Gui
	for i,v in pairs(Guis) do
		if v.Parent == cmdHandler then
			Gui = v
		end
	end
	if Gui ~= nil then
		local PositionX
		local PositionY
		local X = Mouse.X
		local Y = Mouse.Y
		if Mouse.X > 200 then
			PositionX = Mouse.X - 201
		else
			PositionX = Mouse.X + 21
		end
		if Mouse.Y > (Mouse.ViewSizeY-96) then
			PositionY = Mouse.Y - 97
		else
			PositionY = Mouse.Y
		end
		NOTIFrame.Visible = true
		NOTIFrame.Position = UDim2.new(0, PositionX, 0, PositionY)
		Title_4.Text = Gui.TopbarName.Value
		cmdTitle.Text = Gui.Title.Value
	else
		NOTIFrame.Visible = false
	end
end)

if DisableScript then
	DisableScript()
end

local Slient = false
local ScriptDisabled = false
local LoopBeam = {}
local LoopKill = {}
local LoopTase = {}
local Virus = {}
local KillAura = {}
local Admin = {}
local Watching = nil
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

local function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _, Player in ipairs(game.Players:GetPlayers()) do
		if string.lower(Player.Name):match(string.lower(String)) or string.lower(Player.DisplayName):match(string.lower(String)) then
			table.insert(Yes, Player)
		end
	end
	if #Yes > 0 then
		return Yes[1]
	elseif #Yes < 1 then
		return nil
	end
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local function GetPos()
	return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end

local function GetTeam()
	return game.Players.LocalPlayer.TeamColor.Name
end

function Goto(Player, Distance)
	local Distance = Distance or CFrame.new(0, 0, 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * Distance
end

function Split(Arguaments, Split)
	if not Arguaments or not Split then return end
	return Arguaments:split(Split)
end

function ChatNotify(Message, Colors, Size)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = Message,
		Color = Colors or Color3.fromRGB(255, 255, 255),
		Font = Enum.Font.SourceSans,
		FontSize = Size or Enum.FontSize.Size48
	})
end

function Chat(Message, Whisper)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, Whisper or "ALl")
end

FLYING = false
QEfly = true
flightspeed = 1
vehicleflyspeed = 1
function sFLY(vfly)
	repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and getRoot(game.Players.LocalPlayer.Character) and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until Mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(game.Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or flightspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or flightspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or flightspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or flightspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or flightspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or flightspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

function WaitForChild(Time, Parent, Child)
	if not Parent or not Child then return end
	if Parent == "LocalPlayer" then Parent = game.Players.LocalPlayer end
	if Parent == "Character" then Parent = game.Players.LocalPlayer.Character end
	if Parent == "Backpack" then Parent = game.Players.LocalPlayer.Character.Backpack end
	local Times = Time * 10 or 1
	repeat wait(.1)
		Time = Time - 1
	until Parent:FindFirstChild(Child) or Time <= 0
	if Parent and Parent:FindFirstChild(Child) then
		return Parent:FindFirstChild(Child)
	else
		return nil
	end
end

function Kill(Player)
	pcall(function()
		if Player.Character:FindFirstChild("ForceField") or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

		local MyTeam = GetTeam()
		if Player.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
		end

		local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")

		local FireEvent = {
			[1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [2] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [3] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [4] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [5] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [6] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [7] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}, [8] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
				["Distance"] = 0, 
				["Cframe"] = CFrame.new(), 
				["Hit"] = workspace[Player.Name].Head
			}
		}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(FireEvent, Gun)
		Gun.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character["Remington 870"]:Destroy()
	end)
end

function Tase(Player)
	if Player.TeamColor.Name == "Bright blue" or not workspace:FindFirstChild(Player.Name) or not workspace:FindFirstChild(Player.Name):FindFirstChild("Head") or Player == nil or Player.Character.Parent ~= workspace then return end
	pcall(function()
		local savedcf = GetPos()
		local savedteam

		local Gun = game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") or game.Players.LocalPlayer.Character:FindFirstChild("Taser")

		local changedteam = false
		if game.Players.LocalPlayer.TeamColor.Name ~= "Bright blue" or not Gun then
			savedteam = GetTeam()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright blue").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			changedteam = true
		end

		local Guns = game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") or game.Players.LocalPlayer.Character:FindFirstChild("Taser")

		local TaseEvent = 
			{
				[1] = 
				{
					["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
					["Distance"] = 0, 
					["Cframe"] = CFrame.new(), 
					["Hit"] = workspace[Player.Name].Torso
				}
			}

		game:GetService("ReplicatedStorage").ShootEvent:FireServer(TaseEvent, Guns)
		if changedteam then
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
	end)
end

function Teleport(Player, Position)
	if Player == nil or Position == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TeleportV(Player, Player2)
	if Player == nil or Player2 == nil then return end
	local savedcf = GetPos()
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.75)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function ArrestEvent(Player, Time)
	for i = 1,Time do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
end

function Arrest(Player, Time)
	local Time = Time or 1
	local savedcf = GetPos()
	local savedcamcf = GetCamPos()
	local savedteam = GetTeam()
	if Player then
		repeat wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			for i = 1,Time do
				coroutine.wrap(function()
					workspace.Remote.arrest:InvokeServer(Player.Character.Head)
				end)()
			end
		until Player.Character:FindFirstChild("Head"):FindFirstChild("handcuffedGui")
		wait()
	end
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.CurrentCamera.CFrame = savedcamcf
end

function CreateBeam(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("Remington 870"):Destroy()
		end)
	end
end

function CreateBeam2(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("AK-47"):Destroy()
		end)
	end
end

function CreateBeam3(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			end
			Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("M9"):Destroy()
		end)
	end
end

function Beam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function LagBeam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam2(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam3(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function DetectMove(Player)
	local oldpos = Player.Character.HumanoidRootPart.CFrame
	local Move
	local Time = 0
	repeat wait(.1)
		Time = Time + 1
		if oldpos ~= Player.Character.HumanoidRootPart.CFrame then
			Move = true
		else
			Move = false
		end
	until (Time >= 500 and Move == false) or Move == true
	return Move
end

function FeGodMode()
	game.Players.LocalPlayer.Character.Humanoid.Name = 1
	local l = game.Players.LocalPlayer.Character["1"]:Clone()
	l.Parent = game.Players.LocalPlayer.Character
	l.Name = "Humanoid"
	game.Players.LocalPlayer.Character.Animate.Disabled = true
	wait()
	game.Players.LocalPlayer.Character.Animate.Disabled = false
	game.Players.LocalPlayer.Character["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end

local function GetPlayerPart(Player)
	if not Player then return end
	if Player:FindFirstChild("HumanoidRootPart") then
		return Player.HumanoidRootPart
	elseif Player:FindFirstChild("Torso") then
		return Player.Torso
	end
end

local Mouse = game.Players.LocalPlayer:GetMouse()

function CopyChat(Player)
	Player.Chatted:Connect(function(Message)
		if States.CopyChat then
			Chat("["..Player.DisplayName.."]: "..Message)
		end
	end)
end

function Died(Player)
	pcall(function()
		if Player.Character.Humanoid.Health < 1 then
			if States.ChatNotify then
				Chat(Player.DisplayName.." Died")
			end
			if States.Notify then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Game",
					Text = Player.DisplayName.." Died",
					Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
				})
			end
		end
	end)
end

function PlayerPickUp(Player)
	Player.Backpack.ChildAdded:Connect(function(Item)
		if States.ChatNotify then
			Chat(Player.DisplayName.." Pick Up "..Item.Name)
		end
		if States.Notify then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Game",
				Text = Player.DisplayName.." Pick Up "..Item.Name,
				Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
			})
		end
	end)
end

local function Notify(Message, Color, Text)
	Notify6.Text = Notify5.Text
	Notify6.TextColor3 = Notify5.TextColor3
	Notify5.Text = Notify4.Text
	Notify5.TextColor3 = Notify4.TextColor3
	Notify4.Text = Notify3.Text
	Notify4.TextColor3 = Notify3.TextColor3
	Notify3.Text = Notify2.Text
	Notify3.TextColor3 = Notify2.TextColor3
	Notify2.Text = Notify1.Text
	Notify2.TextColor3 = Notify1.TextColor3
	Notify1.Text = "["..Text.."] "..Message
	Notify1.TextColor3 = Color or Color3.fromRGB(255, 255, 255)
end

local function Loadstring(Https)
	if not Https then return end
	loadstring(game:HttpGet((Https), true))()
end

local function Command(Cmd)
	return Arg1 == Prefix..Cmd
end

local function PrefixCommand(Cmd)
	return Arg1 == "!"..Cmd
end

local Walls = {
	game.Workspace.Prison_Halls.walls,
	game.Workspace.Prison_Halls.roof,
	game.Workspace.Prison_Halls.outlines,
	game.Workspace.Prison_Halls.lights,
	game.Workspace.Prison_Halls.accent,
	game.Workspace.Prison_Halls.glass,
	game.Workspace.Prison_Cellblock.b_front,
	game.Workspace.Prison_Cellblock.doors,
	game.Workspace.Prison_Cellblock.c_tables,
	game.Workspace.Prison_Cellblock.a_front,
	game.Workspace.Prison_Cellblock.b_outerwall,
	game.Workspace.Prison_Cellblock.c_wall,
	game.Workspace.Prison_Cellblock.b_wall,
	game.Workspace.Prison_Cellblock.c_hallwall,
	game.Workspace.Prison_Cellblock.a_outerwall,
	game.Workspace.Prison_Cellblock.b_ramp,
	game.Workspace.Prison_Cellblock.a_ramp,
	game.Workspace.Prison_Cellblock.a_walls,
	game.Workspace.Prison_Cellblock.Cells_B,
	game.Workspace.Prison_Cellblock.Cells_A,
	game.Workspace.Prison_Cellblock.c_corner,
	game.Workspace.Prison_Cellblock.Wedge,
	game.Workspace.Prison_Cellblock.a_ceiling,
	game.Workspace.Prison_Cellblock.b_ceiling,
	game.Workspace.City_buildings,
	game.Workspace.Prison_OuterWall,
	game.Workspace.Prison_Fences,
	game.Workspace.Prison_Guard_Outpost,
	game.Workspace.Prison_Cafeteria.building,
	game.Workspace.Prison_Cafeteria.glass,
	game.Workspace.Prison_Cafeteria.oven,
	game.Workspace.Prison_Cafeteria.shelves,
	game.Workspace.Prison_Cafeteria.vents,
	game.Workspace.Prison_Cafeteria.accents,
	game.Workspace.Prison_Cafeteria["vending machine"],
	game.Workspace.Prison_Cafeteria.Prison_table1,
	game.Workspace.Prison_Cafeteria.counter,
	game.Workspace.Prison_Cafeteria.boxes,
	game.Workspace.Prison_Cafeteria["trash bins"]
}

--[[if not Slient then
	Chat("Admin Commands By LocalPlayer   #   7434")
	Chat("Admin Commands Version "..Versions)
	Chat("Current Prefix Is "..Prefix)
	wait()
	Chat("Admin Commands Loaded!")
else
	Chat("Loaded")
	Chat("P "..Prefix)
	Chat("V "..Versions)
end]]

Notify("Loaded admin commands", Color3.fromRGB(0, 255, 0), "Loads")

function PlayerChatted(Message)
	if ScriptDisabled then return end
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("killaura") then
		States.Kill_Aura = true
		Notify("Turn kill aura on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nokillaura") or Command("unkillaura") then
		States.Kill_Aura = false
		Notify("Turn kill aura off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("virus") or Command("addvirus") then
		local Player = GetPlayer(Arg2)
		if Player and not Virus[Player.UserId] then
			Virus[Player.UserId] = {Player = Player}
			Notify("Added virus to "..Player.DisplayName, Color3.fromRGB(0, 255, 0), "Success")
		elseif Player and Virus[Player.UserId] then
			Notify(Player.DisplayName.." already have viruses", Color3.fromRGB(255, 255, 0), "Warn")
		elseif Player == nil then
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("revirus") or Command("removevirus") then
		local Player = GetPlayer(Arg2)
		if Player and Virus[Player.UserId] then
			Virus[Player.UserId] = nil
			Notify("Removed viruses from "..Player.DisplayName, Color3.fromRGB(0, 255, 0), "Success")
		elseif Player and not Virus[Player.UserId] then
			Notify(Player.DisplayName.." don't have virus", Color3.fromRGB(255, 255, 0), "Warn")
		elseif Player == nil then
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unload") or Command("destroygui") then
		Notify("Unloading...", Color3.fromRGB(0, 255, 255), "Unloads")
		wait(.1)
		pcall(function()
			Aqua:Destroy()
			States = {}
			LoopKill = {}
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
	end
	if Command("fly") or Command("flight") then
		local FlightSpeed = tonumber(Arg2)
		if FlightSpeed ~= nil then
			FlightSpeed = flightspeed
		end
		Notify("Flight ", Color3.fromRGB(0, 255, 0), "Enabled")
		NOFLY()
		wait()
		sFLY()
	end
	if Command("unfly") then
		Notify("Flight ", Color3.fromRGB(0, 255, 0), "Disabled")
		NOFLY()
	end
	if Command("vfly") or Command("vflight") then
		local vflightspeed = tonumber(Arg2)
		if vflightspeed ~= nil then
			vflightspeed = vehicleflyspeed
		end
		Notify("Flight ", Color3.fromRGB(0, 255, 0), "Enabled")
		NOFLY()
		wait()
		sFLY()
	end
	if Command("reload") or Command("update") then
		Notify("Updating versions...", Color3.fromRGB(0, 255, 255), "Updates")
		pcall(function()
			Aqua:Destroy()
			States = {}
			LoopKill = {}
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
		Loadstring("https://pastebin.com/raw/9ab2s523")
	end
	if Command("beam") then
		local Player = GetPlayer(Arg2)
		if Player then
			Beam(Player, math.huge, 7)
			Notify("Beamed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("lagbeam") or Command("beam2") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 7)
			Notify("Lag beamed "..Player.Name, Color3.fromRGB(255, 0, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("crash") or Command("beam3") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 9000)
			Notify("Crashed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("antispamarrest") then
		States.Anti_Spam_Arrest = true
		Notify("Turn anti spam arrest on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Anti_Spam_Arrest then
				pcall(function()
					if game.Players.LocalPlayer.Character.Head:FindFirstChild("handcuffedGui") then
						repeat wait()
							coroutine.wrap(function()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
								workspace.Remote.TeamEvent:FireServer("Bright blue")
							end)()
						until game.Players.LocalPlayer.TeamColor.Name == "Bright blue"
						wait(.1)
						for i = 1,10 do
							workspace.Remote.TeamEvent:FireServer("Medium stone grey")
						end
					end
				end)
			end
		end
	end
	if Command("unantispamarrest") then
		States.Anti_Spam_Arrest = false
		Notify("Turn anti spam arrest off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("inmate") or Command("inmates") or Command("prisoner") or Command("prisoners") then
		workspace.Remote.TeamEvent:FireServer("Bright orange")
		Notify("Become inmate", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("guard") or Command("guards") or Command("cop") or Command("polices") or Command("cops") then
		workspace.Remote.TeamEvent:FireServer("Bright blue")
		if game.Players.LocalPlayer.TeamColor.Name == "Bright blue" then
			Notify("Become guard", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Fulled team", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("gun") or Command("guns") or Command("allguns") then
		if BuyGamepass then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		Notify("Get all guns", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("autogun") or Command("autoguns") or Command("autoallguns") then
		States.Auto_Guns = true
		Notify("Turn auto guns on", Color3.fromRGB(0, 255, 0), "Success")
		if BuyGamepass then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.Auto_Guns then
				pcall(function()
					if BuyGamepass then
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					else
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
					end
				end)
			end
		end)
	end
	if Command("unautogun") or Command("unautoguns") or Command("unautoallguns") then
		States.Auto_Guns = false
		Notify("Turn auto guns off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopgoto") or Command("loopto") then
		local Player = GetPlayer(Arg2)
		if Player then
			States.LoopGoto = true
			repeat wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
			until not States.LoopGoto or not game.Players[Player.Name]
		end
	end
	if Command("unloopgoto") or Command("unloopto") then
		States.LoopGoto = false
	end
	if Command("checkscriptowner") or Command("findowner") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.DisplayName == "Hack" and v.Name == "ih4xalots" then
				ChatNotify("Script owner : "..v.Name.." / "..v.DisplayName, Color3.fromRGB(0, 255, 0))
			end
		end
	end
	if Command("getplayer") or Command("getplayers") then
		ChatNotify("Players : "..#game.Players:GetPlayers(), Color3.fromRGB(255, 255, 255))
	end
	if Command("autofire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = true
			Notify("Turn auto fire", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("semifire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = false
			Notify("Turn semi fire", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("firespeed") or Command("setfirespeed") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["FireRate"] = tonumber(Arg2)
				Notify("Set a gun fire speed to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("burst") or Command("burstbullets") or Command("bullets") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["Bullets"] = tonumber(Arg2)
				Notify("Set a gun burst bullets to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("reloadtime") or Command("reloadtimes") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["ReloadTime"] = tonumber(Arg2)
				Notify("Set a gun reload time to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("criminal") or Command("criminals") or Command("crim") or Command("crims") or Command("crimes") or Command("crime") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Become a criminal", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("neutral") or Command("neutrals") then
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		Notify("Become neutral", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("red") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("blue") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Deep blue").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("black") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really black").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("pink") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Hot pink").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("grey") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Ghost grey").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("white") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("White").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("brown") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Brown").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("purple") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Royal purple").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("green") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright green").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("yellow") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright yellow").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("orange") then
		local savedcf = GetPos()
		local savedcamcf = GetCamPos()
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Neon orange").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
		Notify("Changed name tag color to "..Arg1:split("."), Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("chatnotify") then
		States.ChatNotify = true
		Notify("Turn chat notify on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nochatnotify") or Command("unchatnotify") then
		States.ChatNotify = false
		Notify("Turn chat notify off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("taserbypass") or Command("lock") or Command("antitaser") then
		States.TaserBypass = true
		Notify("Turn taser bypass on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.TaserBypass then
				wait(.2)
				game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end)
	end
	if Command("notaserbypass") or Command("unlock") or Command("untaserbypass") then
		States.TaserBypass = false
		Notify("Turn taser bypass off", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	end
	if Command("color") then
		if Arg2 ~= nil and Arg3 == nil then
			local savedcf = GetPos()
			workspace.Remote.loadchar:InvokeServer(nil, Arg2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		elseif Arg2 ~= nil and Arg3 ~= nil and Arg4 == nil then
			local savedcf = GetPos()
			workspace.Remote.loadchar:InvokeServer(nil, Arg2.." "..Arg3)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		elseif Arg2 ~= nil and Arg3 ~= nil and Arg4 ~= nil then
			local savedcf = GetPos()
			workspace.Remote.loadchar:InvokeServer(nil, Arg2.." "..Arg3.." "..Arg4)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		end
		Notify("Changed name tag color", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("print") then
		print(Message)
		Notify("Printed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("warn") then
		warn(Message)
		Notify("Warned", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("error") then
		Notify("Printed error", Color3.fromRGB(0, 255, 0), "Success")
		error(Message)
	end
	if Command("chat") then
		Chat(Message)
		Notify("Chatted", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("copychat") then
		States.CopyChat = true
		Notify("Turn copy chat on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("uncopychat") then
		States.CopyChat = false
		Notify("Turn copy chat off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
			Notify("Tased "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("noshield") or Command("antishield") then
		States.Anti_Shield = true
		Notify("Turn anti shield users on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if workspace[v.Name].Torso:FindFirstChild("ShieldFolder") then
						workspace[v.Name].Torso:FindFirstChild("ShieldFolder"):Destroy()
					end
				end)
			end
		end
	end
	if Command("unantishield") then
		States.Anti_Shield = false
		Notify("Turn anti shield users off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("kill") or Command("kills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Kill(Player)
			Notify("Killed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("killall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Kill(v)
			end
		end
		Notify("Killed all players", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("killinmate") or Command("killinmates") or Command("killsinmate") or Command("killsinmates") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Bright orange" then
					Kill(v)
				end
			end
		end
		Notify("Killed all inmates", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("killguard") or Command("killsguard") or Command("killguards") or Command("killsguards") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Bright blue" then
					Kill(v)
				end
			end
		end
		Notify("Killed all guards", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("killcriminal") or Command("killscriminal") or Command("killcriminals") or Command("killscriminals") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Kill(v)
				end
			end
		end
		Notify("Killed all criminals", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
			Notify("Looping kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already loop kills", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
			Notify("Unloop kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / Player has no loop kills", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("loopkillguard") or Command("loopkillguards") or Command("loopkillsguard") or Command("loopkillsguards") or Command("loopkillcop") or Command("loopkillpolices") or Command("loopkillspolices") then
		States.LoopKill_Guards = true
		Notify("Looping kills all guards", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Guards then
				for i,v in pairs(game.Teams.Guards:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillguard") or Command("unloopkillguards") or Command("unloopkillsguard") or Command("unloopkillsguards") or Command("unloopkillcop") or Command("unloopkillpolices") or Command("unloopkillspolices") then
		States.LoopKill_Guards = false
		Notify("Unloop kills all guards", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkillinmate") or Command("loopkillinmates") or Command("loopkillsinmate") or Command("loopkillsinmates") or Command("loopkillprisoner") or Command("loopkillprisoners") then
		States.LoopKill_Inmates = true
		Notify("Looping kills all inmates", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Inmates then
				for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillinmate") or Command("unloopkillinmates") or Command("unloopkillsinmate") or Command("unloopkillsinmates") or Command("unloopkillprisoner") or Command("unloopkillprisoners") then
		States.LoopKill_Inmates = false
		Notify("Unloop kills all inmates", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkillcriminal") or Command("loopkillcriminals") or Command("loopkillscriminal") or Command("loopkillscriminals") or Command("loopkillcrim") or Command("loopkillcrims") then
		States.LoopKill_Criminals = true
		Notify("Looping kills all criminals", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Criminals then
				for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillcriminal") or Command("unloopkillcriminals") or Command("unloopkillscriminal") or Command("unloopkillscrriminals") or Command("unloopkillcrim") or Command("unloopkillcrims") then
		States.LoopKill_Criminals = false
		Notify("Unlooping kills all criminals", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loopkillall") or Command("loopkillsall") then
		States.LoopKill_Others = true
		Notify("Looping kills all players", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.LoopKill_Others then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health > 0 and v.Character.Head and v.Character and v ~= nil then
								Kill(v)
							end
						end)
					end
				end
			end
		end
	end
	if Command("unloopkillall") or Command("unloopkillsall") then
		States.LoopKill_Criminals = false
		States.LoopKill_Guards = false
		States.LoopKill_Inmates = false
		States.LoopKill_Others = false
		Notify("Unlooping kills all players", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("goto") or Command("to") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[Player.Name].HumanoidRootPart.CFrame
			Notify("Go to "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("re") or Command("refresh") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
			end
		else
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
				workspace.Remote.TeamEvent:FireServer("Medium stone grey")
			end
		end
		Notify("Refreshed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("res") or Command("respawn") then
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			workspace.Remote.loadchar:InvokeServer()
		else
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
		Notify("Respawned", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("looparrest") or Command("spamarrest") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Notify("Spam arresting "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			States.SpamArrest = true
			repeat wait()
				if game.Players[Player.Name] and States.SpamArrest then
					local Player_Previos_Team = Player.TeamColor.Name
					if Player.TeamColor.Name == "Bright orange" then
						Teleport(Player, CFrame.new(979.55584716797, 99.990005493164, 2341.4069824219))
					end
					if Player.TeamColor.Name ~= "Bright orange" and Player.TeamColor.Name ~= "Really red" then
						repeat Teleport(Player, CFrame.new(-976, 110, 2070)) until Player.TeamColor.Name == "Really red" or not game.Players[Player.Name]
					end
					if Player_Previos_Team == "Bright orange" then
						repeat wait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
							for i = 1,1000 do
								coroutine.wrap(function()
									ArrestEvent(Player, math.huge)
								end)()
							end
						until Player.Character.Head:FindFirstChild("handcuffedGui") or not game.Players[Player.Name]
					else
						if Player.TeamColor.Name == "Really red" then
							repeat wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
								for i = 1,1000 do
									coroutine.wrap(function()
										ArrestEvent(Player, math.huge)
									end)()
								end
							until Player.Character.Head:FindFirstChild("handcuffedGui") or not game.Players[Player.Name]
						end
					end
				end
			until not game.Players[Player.Name] or not States.SpamArrest
		end
	end
	if Command("unlooparrest") or Command("unspamarrest") then
		States.SpamArrest = false
		Notify("Unspam arrest", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("view") or Command("spectate") or Command("watch") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Watching = Player
			Notify("Viewing "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
		while wait() do
			if Watching ~= nil then
				pcall(function()
					workspace.CurrentCamera.CameraSubject = workspace[Watching.Name]
				end)
			end
		end
	end
	if Command("antifling") then
		States.Anti_Fling = true
		Notify("Turn anti fling on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
		game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
			if States.Anti_Fling then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Size.Y, math.huge)
				end)
			end
		end)
	end
	if Command("statue") then
		States.Statue = true
		game.Players.LocalPlayer.Character:Connect(function()
			if States.Statue then

			end
		end)
	end
	if Command("unstatue") then
		States.Statue = false
	end
	if Command("noclip") or Command("noclips") then
		States.Noclips = true
		Notify("Turn no clips on", Color3.fromRGB(0, 255, 0), "Success")
		game:GetService("RunService").Stepped:Connect(function()
			if States.Noclips then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
					game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
				end)
			end
		end)
	end
	if Command("clip") or Command("clips") then
		States.Noclips = false
		Notify("Turn no clips off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("unantifling") then
		States.Anti_Fling = false
		Notify("Turn anti fling off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("antivest") or Command("anticrash") then
		States.Anti_Crash = true
		Notify("Turn anti armor spammer on", Color3.fromRGB(0, 255, 0), "Success")
		coroutine.wrap(function()
			while wait() do
				if States.Anti_Crash then
					for i,v in pairs(game.Players:GetPlayers()) do
						pcall(function()
							v.Character.vest:Destroy()
						end)
					end
				end
			end
		end)()
	end
	if Command("unantivest") or Command("unanticrash") then
		States.Anti_Crash = false
		Notify("Turn anti armor spammer off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("fastpunch") or Command("speedpunch") or Command("speedlypunch") or Command("superspeedpunch") then
		States.Fast_Punch = true
		Notify("Turn fast punch on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("slowpunch") or Command("normalspeedpunch") or Command("nofastpunch") or Command("unfastpunch") then
		States.Fast_Punch = false
		Notify("Turn fast punch off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("superpunch") or Command("onepunch") then
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local MeleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local Punch = false
		local Cooldown = false
		States.SuperPunch = true
		Notify("Turn super punch on", Color3.fromRGB(0, 255, 0), "Success")

		local function Punch()
			if not States.Fast_Punch then
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.9)
				Cooldown = false
				Part:Destroy()
			else
				Cooldown = true
				local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
				Part.Transparency = 1
				Part.Size = Vector3.new(5, 2, 3)
				Part.CanCollide = false
				local Weld = Instance.new("Weld", Part)
				Weld.Part0 = game.Players.LocalPlayer.Character.Torso
				Weld.Part1 = Part
				Weld.C1 = CFrame.new(0, 0, 2)
				Part.Touched:connect(function(Touch)
					if game.Players:FindFirstChild(Touch.Parent.Name) then
						local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
						if plr.Name ~= game.Players.LocalPlayer.Name then
							Part:Destroy()
							for i = 1,100 do
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.1)
				Cooldown = false
				Part:Destroy()
			end
		end
		Mouse.KeyDown:connect(function(Key)
			if not Cooldown and States.SuperPunch then
				if Key:lower() == "f" then
					Punch()
				end				
			end
		end)
	end
	if Command("normalpunch") or Command("oldpunch") or Command("nosuperpunch") or Command("stoponepunch") or Command("unonepunch") or Command("unsuperpunch") then
		States.SuperPunch = false
		Notify("Turn super punch off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("superknife") then
		local Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if not Knife then
			workspace.Remote.ItemHandler:InvokeServer(workspace["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP)
		end
		wait()
		Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if Knife then
			local Cooldown = false
			local Hitting = false
			local Hitted = false
			Knife.Equipped:Connect(function()
				Knife.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Hitting = true
						for i,v in pairs(Knife:GetChildren()) do
							if v:IsA("Part") then
								v.Touched:Connect(function(Hit)
									if Hit and Hit.Parent ~= game.Players.LocalPlayer and not Hitted and Hitting then
										Hitted = true
										for i = 1,25 do
											game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
										end
									end
								end)
							end
						end
						wait(0.5)
						Cooldown = false
						Hitting = false
						Hitted = false
					end
				end)
			end)
		end
		Notify("Obtained super knife", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("unview") or Command("unspectate") or Command("stopwatch") or Command("unwatch") then
		Watching = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		Notify("Unviewed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("antivoid") or Command("antifell") then
		States.Anti_Void = true
		Notify("Turn anti void on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Anti_Void then
				pcall(function()
					if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 1 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
					end
				end)
			end
		end
	end
	if Command("unantivoid") or Command("unantifell") then
		States.Anti_Void = false
		Notify("Turn anti void off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("bring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(GetPlayer(Arg2), game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			Notify("Brought "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("teleport") or Command("tp") then
		local Player = GetPlayer(Arg2)
		local Player2 = GetPlayer(Arg3)
		if Player ~= nil and Player2 ~= nil then
			TeleportV(Player, Player2)
			Notify("Teleported "..Player.Name.." to "..Player2.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(0, 255, 0), "Error")
		end
	end
	if Command("void") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(999999, 999999, 999999))
			Notify("Voided "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("killaura") then
		States.Kill_Aura = true
		Notify("Turn kill aura on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nokillaura") or Command("unkillaura") then
		States.Kill_Aura = false
		Notify("Turn kill aura off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("auto") or Command("autore") or Command("autorefresh") then
		States.Auto_Refresh = true
		Notify("Turn auto refresh on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Auto_Refresh == true then
				pcall(function()
					if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
							end
						else
							if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								local savedcf = GetPos()
								local savedcamcf = GetCamPos()
								workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
								workspace.CurrentCamera.CFrame = savedcamcf
								workspace.Remote.TeamEvent:FireServer("Medium stone grey")
							end
						end
					end
				end)
			end
		end
	end
	if Command("unauto") or Command("auntore") or Command("unautorefresh") then
		States.Auto_Refresh = false
		Notify("Turn auto refresh off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("prefix") or Command("newprefix") or Command("changeprefix") then
		local NewPrefix = Arg2
		if NewPrefix ~= nil then
			Prefix = NewPrefix
			exeBar.PlaceholderText = "Press "..Prefix.." To Enter"
			Notify("Changed prefix to "..NewPrefix, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Text needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("speed") or Command("walkspeed") or Command("setspeed") or Command("setwalkspeed") then
		local WalkSpeed = tonumber(Arg2)
		if WalkSpeed ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
			Notify("Changed walk speed to "..WalkSpeed, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("jumppower") or Command("jumphigh") or Command("setjumppower") then
		local JumpPower = tonumber(Arg2)
		if JumpPower ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
			Notify("Changed jump power to "..JumpPower, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("hipheight") or Command("sethipheight") then
		local HipHeight = tonumber(Arg2)
		if HipHeight ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipHeight
			Notify("Changed hip height to "..HipHeight, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("lagserver") or Command("disconnect") then
		States.Lag_Server = true
		Notify("Lagging server", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Lag_Server then
				coroutine.wrap(function()
					pcall(function()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("unlagserver") or Command("stopdisconnect") or Command("undisconnect") then
		States.Lag_Server = false
		Notify("Unlagging server", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("gravity") or Command("setgravity") then
		local Gravity = tonumber(Arg2)
		if Gravity ~= nil then
			workspace.Gravity = Gravity
			Notify("Changed gravity to "..Gravity, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Count needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("makecrim") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Teleport(Player, CFrame.new(-919, 96, 2138))
			Notify("Crimmed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("resetgravity") or Command("regravity") then
		workspace.Gravity = 196.2
		Notify("Resetted gravity", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resethipheight") or Command("rehipheight") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		Notify("Resetted hip height", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resetspeed") or Command("respeed") then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		Notify("Resetted walk speed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resetjumppower") or Command("rejumppower") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		Notify("Resetted jump power", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("leave") or Command("leaveserver") or Command("quit") then
		Notify("Leaving server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:Shutdown()
	end
	if Command("rejoin") or Command("rj") then
		Notify("Rejoining server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
	if Command("nodoors") or Command("deletedoors") then
		if workspace:FindFirstChild("Doors") then
			workspace.Doors.Parent = game.Lighting
		end
		Notify("Deleted doors", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("doors") or Command("restoredoors") then
		if game.Lighting:FindFirstChild("Doors") then
			game.Lighting.Doors.Parent = workspace
		end
		Notify("Restored doors", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nowalls") or Command("deletedoors") then
		pcall(function()
			for i,v in pairs(Walls) do
				v.Parent = game.Lighting
			end
		end)
		Notify("Deleted walls", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("walls") or Command("restorewalls") then
		pcall(function()
			for i,v in pairs(game.Lighting:GetChildren()) do
				if v.Name ~= "Doors" then
					v.Parent = workspace
				end
			end
		end)
		Notify("Restored walls", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("god") or Command("godmode") then
		States.God_Mode = true
		Notify("Turn god mode on", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.God_Mode then
				game.Players.LocalPlayer.Character.Humanoid.Name = 1
				local l = game.Players.LocalPlayer.Character["1"]:Clone()
				l.Parent = game.Players.LocalPlayer.Character
				l.Name = "Humanoid"
				game.Players.LocalPlayer.Character.Animate.Disabled = true
				wait()
				game.Players.LocalPlayer.Character.Animate.Disabled = false
				game.Players.LocalPlayer.Character["1"]:Destroy()
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				wait(5)
				local savedcf = GetPos()
				local savedcamcf = GetCamPos()
				local savedteam = GetTeam()
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
				workspace.CurrentCamera.CFrame = savedcamcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
		end
	end
	if Command("ungod") or Command("ungodmode") then
		States.God_Mode = false
		Notify("Turn god mode off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("arrest") or Command("handcuffs") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Arrest(Player, tonumber(Arg3))
			Notify("Arrested "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("arrestall") or Command("arrestother") or Command("arrestothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				if v.TeamColor.Name == "Really red" then
					Arrest(v, 30)
				end
			end
		end
		Notify("Arrested all criminals", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("opengate") then
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		Notify("Opened gate", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("getpos") then
		print("Humanoid Root Part Position :")
		print(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
		print("Camera CFrame :")
		print(workspace.CurrentCamera.CFrame)
		Notify("Printed positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("saveposition") or Command("savepos") then
		States.SavedCFrame = GetPos()
		Notify("Saved positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loadposition") or Command("loadpos") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = States.SavedCFrame
		Notify("Loaded positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("spamchat") then
		States.SpamChat = true
		Notify("Spamming chat", Color3.fromRGB(0, 255, 0), "Success")
		if tonumber(Arg2) ~= nil then
			States.Spam_Wait = tonumber(Arg2)
		else
			States.Spam_Wait = 1
		end
		while wait() do
			if States.SpamChat then
				local MessagesToChat = {
					"I'm your dad",
					"I'm your mom",
					"I'm a god and I'm your dad",
					"__________",
					"OMG",
					"OML",
					"BEPP BOP BEEP BEEP BOP",
					" ",
					"I'm magic guy because i pressed W,A,S and D on my keyboard and my character can be walked wow, I'M THE REAL MAGIC GUY!",
					"I'M THE MOST PRO IN HERE",
					"I'M A PRO IN THIS SERVER ALL OF YOU ARE NOOB!",
					"LOL XD LOL XD LOL XD",
					"Read my chat",
					"Can you die while you are died?",
					"You know what, I'm a god",
					"Sub to CXZ NAME_R",
					"WOW",
					"wow",
					"\(￣︶￣*\))"
				}

				while true do
					wait(States.Spam_Wait)
					if States.SpamChat then
						pcall(function()
							Chat(MessagesToChat[math.random(1, #MessagesToChat)])
						end)
					end
				end
			end
		end
	end
	if Command("unspamchat") then
		States.SpamChat = false
		Notify("Unspamming chat", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("rapidfire") then
		local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		local Name
		local Req
		if Tool then
			Notify("Activated rapid fire", Color3.fromRGB(0, 255, 0), "Success")
			States.CAN = true
			Name = Tool.Name
			if Tool:FindFirstChild("GunStates") then
				Req = require(Tool.GunStates)
				Req["MaxAmmo"] = Req["MaxAmmo"]
				Req["StoredAmmo"] = Req["StoredAmmo"]
				Req["AmmoPerClip"] = Req["AmmoPerClip"]
				Req["CurrentAmmo"] = Req["CurrentAmmo"]
				Req["FireRate"] = -math.huge
				Req["Bullets"] = 25
				Req["Range"] = math.huge
				Req["Damage"] = math.huge
				Req["ReloadTime"] = -math.huge
				Req["AutoFire"] = true
			end
		end
		while wait() do
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild(Name) and States.CAN then
					if Req["CurrentAmmo"] < 1 then
						Tool:Destroy()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Name].ITEMPICKUP)
						Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
						if Tool then
							Name = Tool.Name
							Tool.Parent = game.Players.LocalPlayer.Character
							Tool = game.Players.LocalPlayer.Character[Name]
							Req = require(Tool.GunStates)
							Req["MaxAmmo"] = Req["MaxAmmo"]
							Req["StoredAmmo"] = Req["StoredAmmo"]
							Req["AmmoPerClip"] = Req["AmmoPerClip"]
							Req["CurrentAmmo"] = Req["CurrentAmmo"]
							Req["FireRate"] = -math.huge
							Req["Bullets"] = 25
							Req["Range"] = math.huge
							Req["Damage"] = math.huge
							Req["ReloadTime"] = -math.huge
							Req["AutoFire"] = true
						end
					end
				end
			end)
		end
	end
	if Command("autorapidfire") then
		States.Auto_RapidFire = true
		Notify("Turn auto rapid fire on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Item)
				if States.Auto_RapidFire then
					local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
					local Name
					local Req
					if Tool then
						States.CAN = true
						Name = Tool.Name
						if Tool:FindFirstChild("GunStates") then
							Req = require(Tool.GunStates)
							Req["MaxAmmo"] = Req["MaxAmmo"]
							Req["StoredAmmo"] = Req["StoredAmmo"]
							Req["AmmoPerClip"] = Req["AmmoPerClip"]
							Req["CurrentAmmo"] = Req["CurrentAmmo"]
							Req["FireRate"] = -math.huge
							Req["Bullets"] = 25
							Req["Range"] = math.huge
							Req["Damage"] = math.huge
							Req["ReloadTime"] = -math.huge
							Req["AutoFire"] = true
						end
					end
					while wait() do
						pcall(function()
							if game.Players.LocalPlayer.Character:FindFirstChild(Name) and States.CAN then
								if Req["CurrentAmmo"] < 1 then
									Tool:Destroy()
									workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Name].ITEMPICKUP)
									Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
									if Tool then
										Name = Tool.Name
										Tool.Parent = game.Players.LocalPlayer.Character
										Tool = game.Players.LocalPlayer.Character[Name]
										Req = require(Tool.GunStates)
										Req["MaxAmmo"] = Req["MaxAmmo"]
										Req["StoredAmmo"] = Req["StoredAmmo"]
										Req["AmmoPerClip"] = Req["AmmoPerClip"]
										Req["CurrentAmmo"] = Req["CurrentAmmo"]
										Req["FireRate"] = -math.huge
										Req["Bullets"] = 25
										Req["Range"] = math.huge
										Req["Damage"] = math.huge
										Req["ReloadTime"] = -math.huge
										Req["AutoFire"] = true
									end
								end
							end
						end)
					end
				end
			end)
		end)
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
	end
	if Command("unautorapidfire") then
		States.Auto_RapidFire = false
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			local savedcf = GetPos()
			local savedcamcf = GetCamPos()
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
		Notify("Turn auto rapid fire off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("notifybar") then
		NOTIFrame.Visible = true
	end
	if Command("loopbring") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Notify("Looping bring "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			States.PlayerToLoopBring = Player
			States.LoopBring = true
			repeat wait()
				pcall(function()
					if States.LoopBring and game.Players[States.PlayerToLoopBring.Name] then
						local savedcf = GetPos()
						Teleport(States.PlayerToLoopBring, GetPos())
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
					end
				end)
			until States.LoopBring == false
		end
	end
	if Command("unloopbring") then
		States.LoopBring = false
		States.PlayerToLoopBring = nil
		Notify("Unlooping bring", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("admin") or Command("giveadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not Admin[Player.UserId] then
			Admin[Player.UserId] = {Player = Player}
			Chat("/w "..Player.Name.." You've got admin permissions! Type "..Prefix.."cmds or "..Prefix.."cmd to see all commands")
			Notify("Gave "..Player.Name.." admin commands", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unadmin") or Command("removeadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and Admin[Player.UserId] then
			Admin[Player.UserId] = nil
			Chat("/w "..Player.Name.." You are bad you've been removed admin permissions")
			Notify("Removed admins from "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("baseballbat") or Command("bat") then
		local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character
		local Backpack = LocalPlayer.Backpack
		local Humanoid = Character.Humanoid
		if not Backpack:FindFirstChild("Bat") or not Backpack:FindFirstChild("Bat") then
			local BaseBallBat = Instance.new("Tool", Backpack)
			local Handle = Instance.new("Part", BaseBallBat)
			BaseBallBat.GripPos = Vector3.new(0, -1.15, 0)
			BaseBallBat.Name = "Bat"
			Handle.Name = "Handle"
			Handle.Size = Vector3.new(0.4, 5, 0.4)
			local Animation =Instance.new("Animation", BaseBallBat)
			Animation.AnimationId = "rbxassetid://218504594"
			local Track = Humanoid:LoadAnimation(Animation)
			local Cooldown = false
			local Attacked = false
			local Attacking = false
			BaseBallBat.Equipped:Connect(function()
				BaseBallBat.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Attacking = true
						Track:Play()
						Handle.Touched:Connect(function(Hit)
							if Hit.Parent and Hit.Parent ~= game.Players.LocalPlayer and not Attacked and Attacking then
								Attacked = true
								for i = 1,15 do
									game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
								end
							end
						end)
						wait(0.25)
						Cooldown = false
						Attacked = false
						Attacking = false
					end
				end)
			end)
		end
		Notify("Obtained base ball bat", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("tools") or Command("tool") or Command("btool") or Command("btools") then
		local Backpack = game.Players.LocalPlayer.Backpack
		local Character = game.Players.LocalPlayer.Character
		if not Backpack:FindFirstChild("Bin_1") and not Character:FindFirstChild("Bin_1") then
			local HopperBin_1 = Instance.new("HopperBin", Backpack)
			HopperBin_1.BinType = 1
			HopperBin_1.Name = "Bin_1"
		end
		if not Backpack:FindFirstChild("Bin_2") and not Character:FindFirstChild("Bin_2") then
			local HopperBin_2 = Instance.new("HopperBin", Backpack)
			HopperBin_2.BinType = 2
			HopperBin_2.Name = "Bin_2"
		end
		if not Backpack:FindFirstChild("Bin_3") and not Character:FindFirstChild("Bin_3") then
			local HopperBin_3 = Instance.new("HopperBin", Backpack)
			HopperBin_3.BinType = 3
			HopperBin_3.Name = "Bin_3"
		end
		if not Backpack:FindFirstChild("Bin_4") and not Character:FindFirstChild("Bin_4") then
			local HopperBin_4 = Instance.new("HopperBin", Backpack)
			HopperBin_4.BinType = 4
			HopperBin_4.Name = "Bin_4"
		end
		loadstring(game:GetObjects("rbxassetid://552440069")[1].Source)()
		Notify("Obtained btools", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("test") then
		local savedcf = GetPos()
		local CrimPad = workspace["Criminals Spawn"].SpawnLocation
		local padcf = CrimPad.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CrimPad.CFrame
		wait()
		CrimPad.CFrame = GetPos()
		CrimPad.CanCollide = false
		CrimPad.Transparency = 1.000
		CrimPad.Anchored = true 
		pcall(function()
			for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					CrimPad.CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					CrimPad.CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end
		end)
		workspace.Remote.loadchar:InvokeServer()
		CrimPad.Transparency = 0.000
		CrimPad.CFrame = padcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		Notify("???", Color3.fromRGB(0, 0, 0), "LOL")
	end
	if Command("antilag") or Command("boostfps") then
		States.BoostFps = true
		Notify("Turn anti lag on", Color3.fromRGB(0, 255, 0), "Success")
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = Enum.Material.Plastic
				States[v.Name] = {Material = v.Material}
			end)
		end
		while wait() do
			if States.BoostFps then
				for i,v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health < 1 then
								v.Character:Destroy()
							end
						end)
					end
				end
			end
		end
	end
	if Command("unantilag") then
		States.BoostFps = false
		Notify("Turn anti lag off", Color3.fromRGB(0, 255, 0), "Success")
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = States[v.Name].Material
			end)
		end
	end
	if Command("serverhop") or Command("newserver") or Command("changeserver") then
		Notify("Changing server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	if Command("nexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
	end
	if Command("cafe") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877, 100, 2256)
	end
	if Command("backnexus") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(982, 100, 2334)
	end
	if Command("yard") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(791, 98, 2498)
	end
	if Command("crimbase") or Command("criminalbase") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 95, 2055)
	end
	if Command("armory") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(789, 100, 2260)
	end
	if Command("lunchroom") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(905, 100, 2226)
	end
	if Command("gate") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 103, 2250)
	end
	if Command("tower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822, 131, 2588)
	end
	if Command("gatetower") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 126, 2306)
	end
	if Command("sewer") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 79, 2311)
	end
	if Command("makecrimall") then
		local savedcf = GetPos()
		local CrimPad = workspace["Criminals Spawn"].SpawnLocation
		local padcf = CrimPad.CFrame
		workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CrimPad.CFrame
		wait()
		CrimPad.CFrame = GetPos()
		CrimPad.CanCollide = false
		CrimPad.Transparency = 1.000
		CrimPad.Anchored = true
		repeat wait() 
			pcall(function()
				for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Teleport(v, CrimPad.CFrame)
					end
				end
				for i,v in pairs(game.Teams.Guards:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						Teleport(v, CrimPad.CFrame)
					end
				end
			end)
		until #game.Teams.Criminals:GetPlayers() == (#game.Players:GetPlayers()-#game.Teams.Neutral:GetPlayers())
		workspace.Remote.loadchar:InvokeServer()
		CrimPad.Transparency = 0.000
		CrimPad.CFrame = padcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		Notify("Make everyone crimmed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("bringall") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				Teleport(v, GetPos())
			end
		end
		Notify("Broght all", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("notify") then
		States.Notify = true
		Notify("Notify on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nonotify") then
		States.Notify = false
		Notify("Notify off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if PrefixCommand("getprefix") then
		Chat("Prefix : "..Prefix)
		Notify("Prefix : "..Prefix, Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("cmd") or Command("cmds") then
		if CMDFrame.Visible == true then
			CMDFrame.Visible = false
		else
			CMDFrame.Visible = true
		end
		Notify("Showed Commands", Color3.fromRGB(0, 255, 0), "Success")
	end

end

function AdminPlayerChatted(Message, Player)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("nexus") then
		Teleport(Player, CFrame.new(888, 100, 2388))
	end
	if Command("cafe") then
		Teleport(Player, CFrame.new(877, 100, 2256))
	end
	if Command("backnexus") then
		Teleport(Player,  CFrame.new(982, 100, 2334))
	end
	if Command("armory") then
		Teleport(Player, CFrame.new(789, 100, 2260))
	end
	if Command("tower") then
		Teleport(Player, CFrame.new(822, 131, 2588))
	end
	if Command("crimbase") or Command("criminalbase") then
		Teleport(Player, CFrame.new(-942, 94, 2055))
	end
	if Command("bring") then
		TeleportV(GetPlayer(Arg2), Player)
	end
	if Command("void") then
		Teleport(GetPlayer(Arg2), CFrame.new(99999, 99999, 99999))
	end
	if Command("beam") then
		Beam(GetPlayer(Arg2), math.huge, 1)
	end
	if Command("yard") then
		Teleport(Player, CFrame.new(791, 98, 2498))
	end
	if Command("disconnect") then
		States.Disconnect = true
		while wait() do
			if States.Disconnect then
				coroutine.wrap(function()
					pcall(function()
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("undisconnect") then
		States.Disconnect = false
	end
	if Command("spamarrest") then
		local GP = GetPlayer(Arg2)
		if GP then
			States.SpamArrest2 = true
			repeat wait()
				local Time = 0
				pcall(function()
					if GP.TeamColor.Name == "Bright orange" then
						Teleport(GP, GetPos())
						repeat wait(.01)
							Time = Time + 1
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GP.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
							workspace.Remote.arrest:InvokeServer(GP.Character.Head)
						until GP.Character.Head:FindFirstChild("handcuffedGui") or Time >= 250
						if GP.Character.Head:FindFirstChild("handcuffedGui") then
							Arrest(GP, 10000)
						end
					end
					if GP.TeamColor.Name ~= "Really red" and not GP.Character.Head:FindFirstChild("handcuffedGui") then
						if not States.SpamArrest2 then return end
						repeat Teleport(GP, CFrame.new(-919, 96, 2138)) until GP.TeamColor.Name == "Really red" or not States.SpamArrest2 or not game.Players[GP.Name]
					end
					wait(.1)
					if not GP.Character.Head:FindFirstChild("handcuffedGui") then
						Arrest(GP, 10000)
					end
				end)
			until not States.SpamArrest2 or not game.Players[GP.Name]
		end
	end
	if Command("unspamarrest") then
		States.SpamArrest2 = false
	end
	if Command("killguard") or Command("killguards") then
		for i,v in pairs(game.Teams.Guards:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killinmate") or Command("killinmates") then
		for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killcriminal") or Command("killcriminals") then
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("killall") or Command("killothers") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer or v ~= Player then
				Kill(v)
			end
		end
	end
	if Command("kill") or Command("kills") then
		Kill(GetPlayer(Arg2))
	end
	if Command("loopkill") or Command("loopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
		end
	end
	if Command("tase") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Tase(Player)
		end
	end
	if Command("makecrim") then
		Teleport(GetPlayer(Arg2), CFrame.new(-919, 96, 2138))
	end
	if Command("arrest") then
		Arrest(GetPlayer(Arg2))
	end
	if Command("crim") then
		Teleport(Player, CFrame.new(-919, 96, 2138))
	end
	if Command("goto") or Command("to") then
		TeleportV(Player, GetPlayer(Arg2))
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..Player.Name.." "..Prefix.."goto [plr] "..Prefix.."to [plr] "..Prefix.."kill [plr] "..Prefix.."kills [plr] "..Prefix.."makecrim [plr] "..Prefix.."arrest [plr] "..Prefix.."tase [plr] "..Prefix.."loopkill [plr] "..Prefix.."unloopkill [plr]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."crim "..Prefix.."tower "..Prefix.."nexus "..Prefix.."backnexus "..Prefix.."cafe "..Prefix.."armory "..Prefix.."bring [plr]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."killall "..Prefix.."killothers "..Prefix.."killinmate "..Prefix.."killinmates "..Prefix.."killguard "..Prefix.."killguards "..Prefix.."killcriminals "..Prefix.."killcriminal "..Prefix.."void [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."spamarrest [plr] "..Prefix.."unspamarrest "..Prefix.."disconnect "..Prefix.." "..Prefix.."beam [plr]")
		Chat("/w "..Player.Name.." "..Prefix.."cmd "..Prefix.."cmds") wait(.1)
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)

spawn(function()
	while wait() do
		for i,v in pairs(LoopKill) do
			pcall(function()
				if v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.Humanoid.Health ~= 0 then
					Kill(v.Player)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		for i,v in pairs(LoopBeam) do
			pcall(function()
				if v and v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.HumanoidRootPart then
					Beam(v.Player, math.huge, 1)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.Fast_Punch == true then
			pcall(function()
				getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
			end)
		end
	end
end)

coroutine.wrap(function()
	while wait() do
		if States.Kill_Aura then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						local Distance = (v.Character:FindFirstChildOfClass("Part").Position - game.Players.LocalPlayer.Character:FindFirstChildOfClass("Part").Position).magnitude
						if Distance <= 10 then
							for i = 1,25 do
								game.ReplicatedStorage.meleeEvent:FireServer(v)
							end
						end
					end
				end)
			end
		end
	end
end)()

function CheckPermissions(Player)
	Player.Chatted:Connect(function(Message)
		if Admin[Player.UserId] then
			AdminPlayerChatted(Message, Player)
		end
	end)
end

game.Players.PlayerRemoving:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Rage Quit",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Rage Quit")
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Joined",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Joined The Server")
	end
	CheckPermissions(Player)
	CopyChat(Player)
	Died(Player)
	PlayerPickUp(Player)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CheckPermissions(v)
		CopyChat(v)
		Died(v)
		PlayerPickUp(v)
	end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	States.CAN = false
end)

findCmd.Changed:Connect(function()
	if findCmd.Text ~= "" then
		for i,v in pairs(cmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				if not string.lower(v.Text):match(string.lower(findCmd.Text)) then
					v.Parent = CMDFrame
					v.Visible = false
				end
			end
		end
		for i,v in pairs(CMDFrame:GetChildren()) do
			if v.Name == "COMMANDS" then
				if string.lower(v.Text):match(string.lower(findCmd.Text)) then
					v.Parent = cmdHandler
					v.Visible = true
				end
			end
		end
	elseif findCmd.Text == "" and (#cmdHandler:GetChildren()-1) ~= #Cmd  then
		for i,v in pairs(cmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		for i,v in pairs(CMDFrame:GetChildren()) do
			if v.Name == "COMMANDS" then
				v:Destroy()
			end
		end
		for i = 1,#Cmd do
			local clone = cmdText:Clone()
			clone.Text = Cmd[i].Text
			clone.Name = "COMMANDS"
			local Ins = Instance.new("StringValue", clone)
			Ins.Name = "Title"
			Ins.Value = Cmd[i].Title
			local Ins2 = Instance.new("StringValue", clone)
			Ins2.Name = "TopbarName"
			Ins2.Value = Cmd[i].Text:split(" ")[1]
			clone.Parent = cmdHandler
			clone.MouseButton1Click:Connect(function()
				exeBar:CaptureFocus()
				exeBar.Text = clone.Text:split(" ")[1]
				exeBar.CursorPosition = #exeBar.Text + 1
			end)
		end
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
	if Key == Prefix then
		exeBar:CaptureFocus()
	end
end)

exeBar.FocusLost:Connect(function(FocusLost)
	if FocusLost then
		if exeBar.Text:sub(1,#Prefix) ~= Prefix then
			PlayerChatted(Prefix..exeBar.Text)
		else
			PlayerChatted(exeBar.Text)
		end
	end
end)

getgenv().DisableScript = function()
	pcall(function()
		Aqua:Destroy()
		States = {}
		LoopKill = {}
		LoopTase = {}
		Admin = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	end)
end
