------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[[

    Nothing Private Loader
    Made by Nothing Team (realvisper)

    ⚠ Modification / cracking / Copy is strictly prohibited
    © 2026 Nothing Private - All Rights Reserved.

]]--

print("Welcome to Nothing Private")

if not game:IsLoaded() then
    game.Loaded:Wait()
end

repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

local Game = {
    [10449761463] = "https://raw.githubusercontent.com/realvisper/script/refs/heads/main/thestrongest.lua"
}

local Modules = {
    Executor = ((identifyexecutor and identifyexecutor()) or (getexecutorname and getexecutorname()) or "Unknown"),
    Load = function()
        local src = Game[game.PlaceId]
        if not src then
            return warn("❌ Unsupported game ->", game.PlaceId)
        end;
        loadstring(game:HttpGet(src))()
    end;
}

local NotSupport = function()
    local exec = string.lower(Modules.Executor)
    for _, v in ipairs({ "xeno", "solara", "jjsploit" }) do
        if exec == v or string.find(exec, v) then
            return true
        end;
    end;
    return false
end;

print("Execute On ->", Modules.Executor)

if NotSupport() then
    game.Players.LocalPlayer:Kick(
        "⚠️ Executor "..Modules.Executor.." not supported ⚠️"
    )
    return
end;

Modules.Load()

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
