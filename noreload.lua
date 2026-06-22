local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
   if v.Name == "ReloadTime" then
      v.Value = 1
   end
end
