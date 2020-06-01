--initial declarations
local component = require("component")
local event = require("event")
local sides = require("sides")
local alarm = component.os_alarm
local redstone = component.redstone
local gpu = component.gpu


function redstoneCheck()
  local signal = redstone.getInput(sides.top)
  if(signal > 1) then
    gpu.setBackground(0xFE6B73)
    alarm.activate()
  else
    alarm.deactivate()
    gpu.setBackground(0x000001)
  end
end
