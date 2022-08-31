function Temp_Conversion(temp)
    return ((9/5)*temp)+32
end

print("Introduce temperature in celcius") 
local temperature = io.read("*n")
temperature=Temp_Conversion(temperature)
print("Temperature (f) : "..temperature)
