--arrays
local names = {}

names[1]="Robin"
names[2]="Viera"
names[3]="Acosta"
print("lenght:"..#names) -- # is the lenght operator

for i=1 , #names do
    print(names[i])
end

--tables 

local cars = {}

cars["mercedes"]=14
cars["bwm"]=10
cars["audi"]=1
cars["masda"]=20


for key,value in pairs(cars) do 
    print(key)
    print(value)
end