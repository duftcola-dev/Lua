local level=1
local numb_lives = 5
local score=0 
local time_elapsed = 0
-- The game starts 

if score >= 100 then 
    level=level+1 
else    
    time_elapsed= time_elapsed+1
end

print("level :"..level)
print("score :"..score)
print("numb_lives :"..numb_lives)