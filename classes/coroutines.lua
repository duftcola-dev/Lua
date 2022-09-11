
-- Coroutines are similar to threads
-- The difference between thread and coroutines are that 
-- threads run individually from each other and serveral concurrently
-- while coroutines run one at the time and the coroutine supends when it 
-- is asked to suspend


--Coroutine basics 

local co = coroutine.create(function ()
    print("hi")

end)

--The coroutine constructor returns a thread object
print(co)

--check the coroutine status 
print(coroutine.status(co))

--run the coroutine 
coroutine.resume(co)

--Once the coroutine as finished the status is 'dead'
print(coroutine.status(co))


co = coroutine.create(function ()
    for i=1 , 5 do 
        print("co"..i)
        coroutine.yield()
    end
end)

coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
print(coroutine.status(co))


-- Passing arguments to couroutines 

co = coroutine.create(function (a,b,c)
    print("co",a,b,c) 
    coroutine.yield(a+b+c)    
end)

--This returns true which signals no error
--also return the result of yield
print(coroutine.resume(co,1,2,3))


