
-- How to represent colors 
-- We 9 numbers : 
-- FF   00     00
-- red  green  blue

-- This is the RGB system
-- The rgb system uses hexadecimal to goes from 0-f (1234567890ABCDF)

local color = "yellow"
local yellow = "#f7df05"

-- We want to remove the # symbol 

--method  1 . gsub finds a pattern and replaces it
yellow = yellow.gsub(yellow,"#","")
print("Yellow in hex : "..yellow)


--method 2 getting s substring until it hits the end of the array (nil)
yellow = "#f7df05"
yellow = yellow.sub(color,1,nil)
print("Yellow in hex : "..yellow)

--method 3 using the length of the string 
yellow = "#f7df05"
yellow = yellow.sub(color,1,#yellow)
print("Yellow in hex : "..yellow)

--mutiline string in lua 

local multiline = [[

    This is a mutiline
    text as you can see
]]

--Excercise 
function Is_an_email(email)
    local ar = email:match("@")
    local space = email:match(" ")
    local dot = email:match(".")
    if ar ~= nil then
        if  space == nil then
         if dot ~= nil then
             print("is an email")
             return 
         end
        end
     end
    print("is not an email")
end

function Is_the_password_valid(password)
    local spaces = password:match(" ")
    if spaces ~=nil then
        print("invalid password")
        return
    end
    local length = #password
    if length > 6 then 
        print("invalid password")
        return
    end
    print("valid password")
    
end

local email = "robinviera@hotmail.com"
local pass = "passw"
Is_an_email(email)
Is_the_password_valid(pass)


