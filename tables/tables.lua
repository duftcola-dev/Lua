
--Tables are the basic datastructure lua uses 

--empty table . Am empty table is more like a prototable
-- this means and that deppending how you fill it 
-- it can become an array or a hashmap
local table = {}

--table initialized as an array 
local array = {1,2,3,4,5,6,7}

--table initialized as an array  
local array2={}
array2[1]="Robin"
array2[2]="Viera"
array2[3]="Acosta"

--table initialized as a hasmap
local hasmap = {}
hasmap["name"]="Robin"
hasmap["id"]=1 
hasmap["payload"]={1,2,3,4,5,6,7,8,9} 

--table inilialized as a hasmap 2
 
local hasmap2 = {
    ["id"]=1,
    ["token_tyope"]="string",
    ["roken_format"]="json"
}

--looping array 

for i=1,#array do 
    print(array[i])
end

--looping table
for key,value in pairs(hasmap2) do 
    print("key : "..key.." value : "..value)
end

--ipairs loops throug numberic indexes only
-- tables can contain numeric indexes and keys 
local mix_table = {}
mix_table[1]="Hello"
mix_table["name"]="Robin"
mix_table[2]="world"
mix_table["token"]="some token"
for index,value in ipairs(mix_table) do 
    print("index : "..index.." value : "..value)
end

-- 2D arrays 
local matrix = {
    {12,42,54},
    {44,23,8},
    {64,76,1}
}
print(matrix[1][3])
print(matrix[3][2])
print(matrix[3][3])