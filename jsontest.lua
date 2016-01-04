local cjson = require("cjson")  
  
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
  
local obj = {
	{"_192_168_87_77/ops/getoverurl":{"limit":5}}
	
}
  
local str = cjson.encode(obj)  
ngx.say(str, "<br/>")  
  
--字符串到lua对象  
str = '{"hobby":["film","music","read"],"is_male":false,"name":"zhangsan","id":1,"age":null}'  
local ipjson = '{"_192_168_1_2":{"bk":true},"_192_168_1_1":{"bk":true},"_127_0_0_1":{"bk":true}}'

local obj = cjson.decode(str)  
ngx.say("obj.hobby ",obj.hobby[1]," ",obj.hobby[2]," ",obj.hobby[3],"<br/>")
ngx.say("obj.is_male", obj.is_male,"<br/>")
ngx.say("obj.name", obj.name,"<br/>")  
ngx.say("obj.id", obj.id,"<br/>")
ngx.say("obj.age",obj.age,"<br/>")
  
-- ngx.say(obj.age, "<br/>")  
-- ngx.say(obj.age == nil, "<br/>")  
-- ngx.say(obj.age == cjson.null, "<br/>")  
-- ngx.say(obj.hobby[1], "<br/>")  
  
  
-- --循环引用  
-- obj = {  
--    id = 1  
-- }  
-- obj.obj = obj  
-- -- Cannot serialise, excessive nesting  
-- --ngx.say(cjson.encode(obj), "<br/>")  
-- local cjson_safe = require("cjson.safe")  
-- --nil  
-- ngx.say(cjson_safe.encode(obj), "<br/>") 