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
print(string.len("hello world"))
print(type(10))
print(type(10.00))
print(type(type))
print(type(true))
print(type(nil))


function Calculate_taxes(salary)
    return (salary * 1.15)
end


print("Enter name")
local name=io.read("*l")
print("Enter salary")
local salary=io.read("*n")
print("Name : "..name)
salary = Calculate_taxes(salary)
print("New salary : "..salary)