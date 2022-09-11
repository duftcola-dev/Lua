-- Classes are defined in the same way a tables :
-- tables afeter all the only datastructure in lua 

Character = {
    health = nil,
    shield = nil,
    name = nil,
}

-- To add methods to the class we use the class name 
-- method assignation is done with  :
-- attribute assignation is done with .
-- use the world self to referece the class


--contructor
function Character:new(t)
    local t= t or {}
    setmetatable(t,self)
    self.__index= self --allows to acces the attributes as keys of the table
    return t

end

--class method
function Character:take_dmg(dmg)
    if self.health > 0 then
        self.health = self.health - dmg
    end
end

--class method
function Character:say_hello()
    print("Hello my name is "..self.name)
end

--object creation
local character = Character:new({
    name="Robin",
    shield=100,
    health=100
})

character:say_hello()
print(character.health)
character:take_dmg(50)
print(character.health)