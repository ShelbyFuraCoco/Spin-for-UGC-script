--new spin game script made by pablogamer2010

local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("Spin for UGC")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main")
 
KillingCheats:CreateToggle("Auto Spin(normal)", function(value)
_G.Loop = true
while _G.Loop and task.wait(6) do
game:GetService("ReplicatedStorage"):WaitForChild("CanSpin"):FireServer()
end
end)

KillingCheats:CreateToggle("Auto Spin(fast)", function(value)
_G.Loop = true
while _G.Loop and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("CanSpin"):FireServer()
end
end)

KillingCheats:CreateToggle("Auto Obby", function(value)
_G.Loop = true
while _G.Loop and task.wait(3) do
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2133, 179, -41)

task.wait(60)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2133, 179, -41)
end
end)

KillingCheats:CreateButton("Anti AFK", function()
while not game:IsLoaded() do wait() end
repeat wait() until game.Players.LocalPlayer.Character
Players = game:GetService("Players")
local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
		if v["Disable"] then v["Disable"](v)
		elseif v["Disconnect"] then v["Disconnect"](v)
		end
	end
else
  Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
  end)
end
game.StarterGui:SetCore('SendNotification', { Title = 'do NOT try krampus'; Text = 'Anti-AFK activated!'; })
end)

local KillingCheats = PhantomForcesWindow:NewSection("Misc")

KillingCheats:CreateButton("Server Hop", function()
loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)

KillingCheats:CreateButton("Dance GUI", function()
loadstring(game:HttpGet("https://pastebin.com/raw/eCpipCTH"))()
end)

KillingCheats:CreateButton("Fling GUI", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
end)

local KillingCheats = PhantomForcesWindow:NewSection("Credits")

KillingCheats:CreateButton("Say thanks to God, not to me", function()
print("love God because he love you")
end)