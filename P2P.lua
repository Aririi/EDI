-- Visual widget for P2P tunnels based off of provided coordinates
local component = require("component");
local event = require("event");
local AR = require("./libAR.lua");
local glasses = component.glasses;

function connection(glasses, label, inXYZ, outXYZ, isUsed)
  -- To be used for determining if contains output counterpart
  isUsed = isUsed or nil;
  -- Renders the box to show when looking at the given tunnel
  local inTunnel = AR.cube(glasses, inXYZ.x, inXYZ.y, inXYZ.z, {r=237, g=237, b=237, a=0.3}, 0.7);
  inTunnel.setViewDistance(4);
  inTunnel.setLookingAt(inXYZ.x, inXYZ.y, inXYZ.z);
  inTunnel.setLookingAt(true);
  inTunnel.setVisibleThroughObjects(true);
  -- Renders statistic text of the tunnel being looked at
  local inTunnelInfo =  AR.worldText(glasses, " ", inXYZ.x+0.5, inXYZ.y+0.5, inXYZ.z+0.5, {r = 200, g = 200, b = 200, a = 0.65}, 0.03);
  inTunnelInfo.setViewDistance(4);
  inTunnelInfo.setLookingAt(inXYZ.x, inXYZ.y, inXYZ.z);
  inTunnelInfo.setLookingAt(true);
  -- Displays different text depending on linkage, or lack thereof
  local outputCount = #outXYZ
  if(outputCount > 0) then
      inTunnelInfo.setText("Connected: "..tostring(outputCount));
      inTunnelInfo.setColor(160/255, 231/255, 242/255);
    else
      inTunnelInfo.setText("Not linked.")
      inTunnelInfo.setColor(180/255, 180/255, 180/255)
    end
  -- Renders labelling text for tunnel in view
  local inTunnelName = AR.worldText(glasses, label, inXYZ.x+0.5, inXYZ.y+0.35, inXYZ.z+0.5, {r = 200, g = 200, b = 200, a = 0.65}, 0.032)
  inTunnelName.setViewDistance(4);
  inTunnelName.setLookingAt(inXYZ.x, inXYZ.y, inXYZ.z);
  inTunnelName.setLookingAt(true);

  -- Output widgets for the looked-at tunnel
  local outTunnels = {}
  local endTunnelLabel = {}

  os.sleep(0.1)
end

-- Calls to function w/tunnel (absolute) coords

local P2P = {}
function P2P.P2PConnections(glasses)
      connection(glasses, "Ore Proc. 1", {x=899, y=71, z=1571}, {{x=882, y=39, z=1559}})
      connection(glasses, "Ore Proc. 2", {x=899, y=71, z=1572}, {{x=882, y=39, z=1584}})
      connection(glasses, "Rock Crushers 1", {x=911, y=71, z=1577}, {{x=885, y=39, z=1560}})
      connection(glasses, "NC Chem. Array 1", {x=899, y=71, z=1573}, {{x=886, y=40, z=1560}})
      connection(glasses, "Electrolyzer 1", {x=899, y=71, z=1575}, {{x=885, y=39, z=1551}})
      connection(glasses, "Electrolyzer 2", {x=899, y=71, z=1575}, {{x=886, y=40, z=1551}})
      connection(glasses, "Electrolyzer 3", {x=899, y=71, z=1575}, {{x=883, y=40, z=1547}})
      connection(glasses, "Electrolyzer 4", {x=899, y=71, z=1575}, {{x=886, y=40, z=1547}})
      connection(glasses, "Autocrafting 1", {x=908, y=71, z=1577}, {{x=917, y=39, z=1560}})
      connection(glasses, "Autocrafting 2", {x=908, y=71, z=1576}, {{x=919, y=39, z=1548}})
      connection(glasses, "Autocrafting 3", {x=908, y=71, z=1576}, {{x=919, y=39, z=1544}})
      connection(glasses, "Autocrafting 4", {x=908, y=71, z=1574}, {{x=924, y=39, z=1552}})
      connection(glasses, "Inscribers 1", {x=908, y=71, z=1575}, {{x=924, y=39, z=1560}})
      connection(glasses, "Fluix Crafting", {x=908, y=71, z=1574}, {{x=924, y=39, z=1548}})
      connection(glasses, "Fluid Crafting 1", {x=908, y=71, z=1573}, {{x=924, y=39, z=1541}})
      connection(glasses, "Machine Row 1", {x=908, y=71, z=1572}, {{x=918, y=51, z=1528}})
      connection(glasses, "Machine Row 2", {x=908, y=71, z=1571}, {{x=918, y=51, z=1554}})
      connection(glasses, "Machine Row 3", {x=908, y=71, z=1572}, {{x=924, y=51, z=1528}})
      connection(glasses, "Machine Row 4", {x=908, y=71, z=1571}, {{x=924, y=51, z=1554}})
      connection(glasses, "Assembler Set 1A", {x=905, y=72, z=1575}, {{x=927, y=64, z=1559}})
      connection(glasses, "Assembler Set 1B", {x=905, y=72, z=1573}, {{x=927, y=61, z=1559}})
      connection(glasses, "Assembler Set 2A", {x=906, y=72, z=1575}, {{x=927, y=64, z=1555}})
      connection(glasses, "Assembler Set 2B", {x=906, y=72, z=1573}, {{x=927, y=61, z=1555}})
      connection(glasses, "Assembler Set 3A", {x=906, y=72, z=1572}, {{x=927, y=61, z=1551}})
      connection(glasses, "Assembler Set 3B", {x=906, y=72, z=1576}, {{x=927, y=61, z=1551}})
      connection(glasses, "Assembler Set 4A", {x=906, y=72, z=1571}, {{x=927, y=61, z=1547}})
      connection(glasses, "Assembler Set 4B", {x=906, y=72, z=1577}, {{x=927, y=61, z=1547}})
      connection(glasses, "Assembler Set 5A", {x=905, y=72, z=1577}, {{x=927, y=61, z=1543}})
      connection(glasses, "Assembler Set 5B", {x=905, y=72, z=1571}, {{x=927, y=61, z=1543}})
      connection(glasses, "Assembler Set 6A", {x=904, y=72, z=1577}, {{x=927, y=61, z=1539}})
      connection(glasses, "Assembler Set 6B", {x=904, y=72, z=1571}, {{x=927, y=61, z=1539}})
      connection(glasses, "Assembler Set 7A", {x=903, y=72, z=1577}, {{x=927, y=61, z=1535}})
      connection(glasses, "Assembler Set 7B", {x=903, y=72, z=1571}, {{x=927, y=61, z=1535}})
      connection(glasses, "Assembler Set 8A", {x=902, y=72, z=1577}, {{x=927, y=61, z=1531}})
      connection(glasses, "Assembler Set 8B", {x=902, y=72, z=1571}, {{x=927, y=61, z=1531}})
      connection(glasses, "Assembler Set 9A", {x=904, y=71, z=1575}, {{x=927, y=61, z=1527}})
      connection(glasses, "Assembler Set 9B", {x=904, y=71, z=1573}, {{x=927, y=61, z=1527}})
      connection(glasses, "Farm Row 1", {x=899, y=71, z=1574}, {{x=885, y=58, z=1563}})
      connection(glasses, "Farm Row 2", {x=899, y=71, z=1574}, {{x=885, y=50, z=1563}})
      connection(glasses, "64K Bay", {x=902, y=71, z=1579}, {{x=916, y=57, z=1579}})
      connection(glasses, "4K Bay", {x=903, y=71, z=1579}, {{x=916, y=50, z=1579}})
      connection(glasses, "1K Bay", {x=904, y=71, z=1579}, {{x=916, y=43, z=1579}})
      connection(glasses, "64K Fluid Bay", {x=902, y=71, z=1579}, {{x=891, y=57, z=1579}})
      connection(glasses, "4K-1K Fluid Bay", {x=903, y=71, z=1579}, {{x=891, y=50, z=1579}})
      connection(glasses, "16K Bay", {x=904, y=71, z=1579}, {{x=819, y=43, z=1579}})
      connection(glasses, "CPU Cluster 1", {x=901, y=71, z=1579}, {{x=911, y=66, z=1582}})
      connection(glasses, "CPU Cluster 2", {x=901, y=71, z=1579}, {{x=896, y=66, z=1582}})
      connection(glasses, "Reactor Fueling 1", {x=908, y=71, z=1577}, {{x=918, y=66, z=1577}})
      connection(glasses, "Reactor Fueling 2", {x=911, y=71, z=1577}, {{x=889, y=66, z=1577}})
      connection(glasses, "Platform Terminals 1", {x=908, y=71, z=1572}, {{x=906, y=51, z=1543}})
      connection(glasses, "Interface Terminal 1", {x=908, y=71, z=1572}, {{x=919, y=50, z=1541}})
      connection(glasses, "Interface Terminal 2", {x=908, y=71, z=1572}, {{x=923, y=50, z=1540}})
      connection(glasses, "Misc I/O 1", {x=901, y=67, z=1569}, {{x=898, y=67, z=1567}})
      connection(glasses, "Misc I/O 2", {x=901, y=67, z=1569}, {{x=909, y=67, z=1567}})
  --  connection(glasses, "", {x=, y=, z=}, {{x=, y=, z=}})
  end
  
return P2P
