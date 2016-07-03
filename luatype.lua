function newline()
    print("\r\n")
end

-- 基础类型

print(type("Hello world"))
print(type(10.4 * 3))
print(type(print))
print(type(type))
print(type(nil))
print(type(type(X)))

newline()

-- lua没有预定义的类型，任何变量都可以包含任何类型的值
print(type(a))
a = 10
print(type(a))
a = "a string!!"
print(type(a))
a = print
a(type(a))

newline()

-- lua字符串是不可变的值（immutable values）
c = "one string"
d = string.gsub( c,"one","another" )
print(c)
print(d)

newline()

-- lua提供运行时的数字与字符串的自动转换
print("10" + 1)
print("10 + 1")
-- print("hello" + 1)  -- 会报错，无法运行
-- 数字转换成字符串，必须使用一个空格来分割字符串连接操作符 “..”
print(10 .. 20)

-- 显示转换字符串为数字
print(2 == "2")
print(2 == tonumber("2"))
-- 显示转出数字为字符串
print(tostring(10) == "10")
print(10 .. "" == "10")

newline()

-- lua5.1，字符串前置操作符“#”获取字符串的长度
le = "hello"
print(#le)
print(#"good\0bye")


newline()

--[[
    table测试
]]
print("------------------------------------------------")
print("-----------------table type---------------------")
-- table的创建是通过“构造表达式（constructor expression）”完成的
-- 最简单的构造表达式是{}
t = {}                  -- 创建一个table，并将它的引用存储到t 
k = "x"
t[k] = 10
t[20] = "great"          
print(t["x"])           --> 10
k = 20
print(t[k])             --> "great"
t["x"] = t["x"] + 1     -- 递增条目“x”
print(t["x"])           --> 11

-- lua“语法糖”，a["name"]的写法可以使用a.name
-- 点的写法可能更明确地暗示了读者，将table作为一条记录来使用，每条记录都有一组固定的、预定义的key
-- 而字符串的写法可能暗示了该table会以任何字符串作为key，而现在出于某些原因，需要访问特定的key

print("\r\n--table syntactic sugar--")
t1 = {}
x = "y"
t1[x] = 10              -- 将10放入字段“y”
print(t1[x])            -- 字段“y”的值
print(t1.x)             -- 字段“x”（未定义）的值
print(t1.y)             -- 字段“y”的值      

-- 数组或线性表，通常以1作为索引的起始值  
print("\r\n--table array--")
ta = {}
for i=1,10 do
    ta[i]=i
end

-- 长度操作符“#”用于返回一个数组或线性表的最后一个索引值（或为其大小）
print("the array length is " .. tostring(#ta))

for i=1,#ta do
    print(ta[i])
end

-- 长度操作符的习惯用法
print(ta[#ta])          -- 打印列表中的最后一个值
ta[#ta] = nil           -- 删除最后一个值
ta[#ta+1] = 11          -- 建11添加都列表末尾

for i=1,#ta do
    print(ta[i])
end

-- 对于未被初始化的元素的索引结果都是nil。lua将nil作为界定数组结尾的标志
-- 当一个数组有“空隙（Hole）”时，即中间含有nil时，长度操作符会认为这些nil元素就是结尾标记
-- 函数table.maxn，可以返回一个table的最大正索引数
print("\r\n--table hole length--")
th = {}
th[1000] = 1
print(th[#th])
print(table.maxn(th))

tha = {"1000"}
print(tha[#tha])
print(table.maxn(tha))

print("------------------------------------------------")