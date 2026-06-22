local CurrentMap = workspace.CurrentMap

for i, v in pairs(getgc()) do
   if typeof(v) == "function" and islclosure(v) and not is_synapse_function(v) and getfenv(v).script.Name == "FastCastClient" and debug.getinfo(v).name == "CastBlacklist" then
       local hookFunction;
       hookFunction = hookfunction(v, function(rayOrigin, rayDirection, blacklistTable)
           table.insert(blacklistTable, CurrentMap)
           return hookFunction(rayOrigin, rayDirection, blacklistTable)
       end)
   end
end
