-- -- function测试

-- function foo0() end
-- function foo1() return 'a' end
-- function foo2() return 'a','b' end

-- -- 函数作为表达式
-- print(foo0())
-- print(foo1())
-- print(foo2())

-- print(foo2(),1)
-- print(foo2() .. "x")

-- -- 函数调用在表构造函数中初始化时，和多值赋值时相同
-- local a = {}

-- a = {foo0()}
-- a = {foo1()}
-- a = {foo2()}


-- closure（闭合函数）
function newCounter()
    local i = 0

    return function()           --匿名函数
        i = i + 1
        return i
    end
end

c1 = newCounter()

print(c1())
print(c1())


c2 = newCounter()
print(c2())
print(c2())
print(c2())