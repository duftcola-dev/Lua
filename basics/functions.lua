
--in lua we can use ... to specify that a function can take 
--any number of arguments 

function Do_something(...)
    local a,b,c=...
    local table = {...}
    print(a) 
    print(b)
    print(c)
    for i=1,#table do 
        print(table[i])
    end

end

Do_something(1,2,3)
