--[[
    测试table
]]
local cjson = require("cjson.safe") 

-- local obj = {
--     a192168 = "c"
-- }

-- local obj = {  
--     id = 1,  
--     name = "zhangsan",  
--     age = nil,  
--     is_male = false,  
--     hobby = {"film", "music", "read"}  
-- }  

local ip = "192.168.1.1"
local handlip,_= string.gsub(ip, "%.","_")

 
  
--lua对象到字符串  
-- local obj = {  
--     id = 1,  
--     name = "zhangsan",  
--     age = nil,  
--     is_male = false,  
--     hobby = {"film", "music", "read"}  
-- }  

local obj = {
    _192_168_1_1 = {bk=true},
	_192_168_1_2 = {bk=true}
}

local str = cjson.encode(obj)
print(str)

local iplist = cjson.decode(blackip)

print(iplist[handlip])

-- print(obj["a192168"])