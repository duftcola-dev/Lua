

function Read_File(str_path,mode)
    local file = io.open(str_path,"r")
    local content = nil
    
  
    if file ~= nil then 
        if mode == "all" then
            content = file:read("a")  
            file:close()
            return content  
        
        elseif mode == "lines" then

            content = file:lines()
            local index=1
            local file_lines ={}

            for line in content do 
                file_lines[index] = line
                index = index +1
            end
            file:close()
            return file_lines
        end
    
    else 
        return nil
    end
   
end


-- arg is parameter you pass from the command line 
-- when running this script execute it as lua basic_file.lua <file_path> <lines/all>
-- example :
-- read the whole file : lua basic_file.lua cars.csv all
-- read the lines of the file : lua basic_file.lua cars.csv lines

local result = Read_File(arg[1],arg[2])

if arg[2]=="lines" then
    
    for index = 1, #result,1 do 
        print(index.."-->"..result[index])
        index = index + 1
    end 
end 

if arg[2] == "all" then 
    print(result)
end
