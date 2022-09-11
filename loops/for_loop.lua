
local numbers = {1,2,3,4,5,6,7}

--By default a for loop counts 1 in 1 
for i=1 , #numbers do 
    print(numbers[i])
end

--we change the count of a number by adding a 3th number 
for i=1,#numbers,2 do 
    print(numbers[i])
end

local result = false
local count = 0
while result == false do 
    if count < 100 then
        count = count +1 
        print("count while : "..count)
    else 
        result = true
    end
end