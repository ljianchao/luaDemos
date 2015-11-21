-- 测试if
function testIf()
	score = 90
	if x ==100 then
		print("Very good!Your score is 100")
	elseif score >= 60 then
		print("Congratulations, you have passed it,your score greater")
	else
		print("Sorry, you do not pass the exam")
	end
end

--测试while
function testWhile()
	x = 1
	sum = 0
	while x <= 5 do
		sum = sum + x
		x = x + 1
	end

	print("sum is "..sum)
end

-- 测试for
function testFor()
	for i=1,10,2 do
		print(i)
	end

	for i=10,1,-1 do
		print(i)
	end
end

-- 测试泛型for
function testIteratorFor( ... )
	-- 打印数组a的所有值
	local a = {"a", "b", "c", "d"}
	for i, v in ipairs(a) do
		print("index:", i, " value:",v)
	end
end

--函数返回多个值
function swap(a,b)
	return b,a
end

testIf()

testWhile()

testFor()

testIteratorFor();

local x = 1
local y = 20
x, y = swap(x, y)
print(x,y)