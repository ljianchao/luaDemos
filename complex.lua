--[[    
    测试模块
]]
-- 定义模块
--局部变量，模块名称
local _M = {}

function _M.new(r, i)
	return {r = r, i = i}
end

--定义一个table型常量i
_M.i = _M.new(0, 1)

--复数加法
function _M.add(c1, c2)
	return _M.new(c1.r + c2.r, c1.i + c2.i)
end

--复数减法
function _M.sub(c1, c2)
	return _M.new(c1.r - c2.r, c1.i - c2.i)
end

--返回模块的table
return _M