--[[
    数组
]]

-- 初始化1
a = {}

for i=1,100 do
    a[i] = i
end

print("the length of the array is " .. #a)

-- 初始化2，通过table的构造式
squares = {1, 4, 9, 16, 25, 36, 49, 64, 81}
print("the content of the squares array :")
for k,v in pairs(squares) do
    print(k,v)  
end