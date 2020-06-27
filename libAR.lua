--library for OpenGlasses 2 AR functions
local component = require("component");
local event = require("event");
local glasses = component.glasses;

AR = {};
--enter coords of your glasses terminal here
--used for absolute coordinate usage w/o navigation upgrade
local ARterminal = {x = 915, y = 41, z = 1525};

function AR.cube(glasses, x, y, z, color, scale);
  color = color or {r = 255, g = 255, b = 255, a = 0.75};
  scale = scale or {x = 1, y = 1, z = 1};
  cube = glasses.addCube3D();
  cube.addTranslation(x - ARterminal.x, y - ARterminal.y, z - ARterminal.z);
  cube.addColor(color.r/255, color.g/255, color.b/255, color.a);
  cube.addScale(scale.x, scale.y, scale.z);
  return cube
end

function AR.worldText(glasses, label, x, y, z, color, scale)
  color = color or {r = 255, g = 255, b = 255, a = 0.90};
  scale = scale or {x = 0.2, y = 0.2, z = 0.2};
  text = glasses.addText3D();
  text.setText(label);
  text.addTranslation(x - ARterminal.x, y - ARterminal.y, z - ARterminal.z);
  text.addColor(color.r/255, color.g/255, color.b/255, color.a);
  text.addScale(scale.x, scale.y, scale.z);
  return text
end


--test commands
AR.cube(glasses, 921, 42, 1529, {r = 40, g = 40, b = 40, a =0.5});
AR.worldText(glasses, "Test 01!", 921, 42, 1529, {r = 80, g = 80, b = 80, a = 0.75});
