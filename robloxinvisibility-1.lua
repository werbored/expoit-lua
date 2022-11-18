local player = game.Players.LocalPlayer
local character = player.Character
local position = character.Position

character.Archivable = true
local newcharacter = character:Clone()
character.Anchored = true
character.Position = Vector3.new(math.huge, math.huge, math.huge)

newcharacter.Parent = game.Workspace
newcharacter.Position = position

for i,v in pairs(newcharacter:GetChildren()) do
    if not v.name = "HumanoidRootPart" then
        v.Transparency = 0.5
    end
end

player.Character = newcharacter
