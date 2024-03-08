local letters = {"a", "b", "c", "d", "A", "B", "C", "D"}
local numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local specials = {"#", "@", "<", ">", "=", "?", "%", "|"}
local charactersLists = {
    letters,
    numbers,
    specials
}

print("Quantos caracteres deseja na senha?")
local length = io.read("*n")  --biblioteca 

local password = ""
for i = 1, length, 1 do

    --Get list 
    local listIndex = math.random(#charactersLists)
    local list = charactersLists[listIndex]

    --Get character
    local charactersIndex= math.random(#list)
    local char = list[charactersIndex]

    --Append character
    password = password .. char
end

--show password
print("Sua senha:")
print(password)