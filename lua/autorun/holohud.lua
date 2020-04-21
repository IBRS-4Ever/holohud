--[[------------
     H0L-D4
 Version 1.7.2
    21/04/20
By DyaMetR
]]--------------

-- Main framework table
HOLOHUD = {};

-- Version and patch notes
HOLOHUD.Version = {
  Major = 1, Minor = 7, Patch = 2
};

--[[
  METHODS
]]

--[[
  Correctly includes a file
  @param {string} file
  @void
]]--
function HOLOHUD:IncludeFile(file)
  if SERVER then
    include(file);
    AddCSLuaFile(file);
  end
  if CLIENT then
    include(file);
  end
end

--[[
  INCLUDES
]]
HOLOHUD:IncludeFile("holohud/core.lua");
