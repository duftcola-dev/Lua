--There are 3 types of variables in lua 
--local 
--global 
--table fields

Some_Var=nil --varaible can be nil (null)
Name="Robin" --global should start with upper case
local name="Robin" --locals start with locals
local table ={} -- tables are basically dict with key and value structure
                -- tables also can work as arrays if you make all keys integers
--show variable types
print(type("hello world"))
print(type(10))
print(type(type))
print(type(true))
print(type(nil))


table["a"]=10
table["b"]=20
table[3]="Three" --keys can also be numbers
table[4]=4
print(table)-- this only shows a reference unlike python
print(table[3])
table[4]=table[4]+1
print(table[4])
print(table["a"]) --key
print(table.a) -- also  a key can be used like this **only if it is a letter
local conventional_array={}

local count = 20
for i=0,10 do
    count = count +1
    conventional_array[i] = count
end

for i,line in ipairs(conventional_array) do-- every array ends in nil which indicates the end of the array
    print(i)--array index
    print(line)--array content
end