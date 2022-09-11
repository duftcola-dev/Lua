
--  a meta table consists in a table that we
-- add additional functionalities or methods 
-- called meta meta methods .
-- A meta method is a function the table can call 
-- to perform a certain opration

--example :

local meta = {}
local vector3d = {}
------------------------------------------------
-- Declare a new vector table constructor
------------------------------------------------
vector3d["new"] = function (x,y,z)
    local v = {x=x,y=y,z=z}
    setmetatable(v,meta)-- meta is going to be the metatable of vector3d
    return v    
end

------------------------------------------------
-- Overloading metamethod __add with our method add
------------------------------------------------
vector3d["add"] = function (v1,v2)
    return vector3d.new(v1.x+v2.x,v1.y+v2.y,v1.z+v2.z)
end
meta.__add = vector3d.add -- we are mapping the meta method add to our method add 


------------------------------------------------
-- Overloading metamethod __tostring with our method tostring
------------------------------------------------
vector3d["tostring"] = function (vector)
    return "{"..vector.x..","..vector.y..","..vector.z.."}"
end
meta.__tostring = vector3d.tostring


--subtracting 
vector3d["sub"] = function (v1,v2)
    return vector3d.new(v1.x-v2.x,v1.y-v2.y,v1.z-v2.z)
end
meta.__sub = vector3d.sub

--multiply 
vector3d["mul"] = function (v1,v2)
    return vector3d.new(v1.x*v2.x,v1.y*v2.y,v1.z*v2.z)
end
meta.__mul = vector3d.mul


vector3d["div"] = function (v1,v2)
    return vector3d.new(v1.x/v2.x,v1.y/v2.y,v1.z/v2.z)
end
meta.__div = vector3d.div

------------------------------------------------
-- Creating tables
------------------------------------------------

local position = vector3d.new(5.0,5.0,5.0)
local velocity = vector3d.new(10.0,2.0,2.5)
local addition = position + velocity
local substraction = position - velocity
local multiplication = position * velocity
local division = position / velocity
print(addition)
print(substraction)
print(multiplication)
print(division)
