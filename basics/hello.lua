
print("hello world")
print("Hello lua")
local name="Robin"
local salute="Hello"
--Contatenation is made with ..
print(name.." "..salute)
function Fact(n)
    if n == 0 then 
        return 1
    else
        return n * Fact(n-1)
    end
end 

print("enter a number")
local a = io.read("*number")
print(Fact(a))