--[[
   父类Account 
]]
Account = {balance = 0 }

function Account:new(o)
	o = o or {}    -- 如果用户没有提供对象，则创建一个对象
    -- setmetatable将Account作为新建表'o'表的原型，所以当o在自己的表内找不到'balance'、'withdraw'这些方法和变量时，
    -- 便会到__index所指定的Account类型中去寻找
	setmetatable(o, {__index = self})
	return o
end

-- 存款
function Account:deposit(v) -- 注意，此处使用冒号，可以面向self关键字；如果使用 . 号，第一个参数必须是self
	self.balance = self.balance + v
end


-- 取款
function Account:withdraw(v)
    if self.balance > v then
        self.balance = self.balance - v
    else
        error("insufficient funds")
    end
end

a = Account:new()
a:deposit(100)
b = Account:new()
b:deposit(50)
c = Account:new({balance = 500})
c:deposit(50)
print("Balance of a account is " .. a.balance)
print("Balance of b account is " .. b.balance)
print("Balance of c account is " .. c.balance)


--[[
    继承可以用元表来实现，它提供了再父类中查找存在的方法和变量的机制
]]
-- 定义继承
SpecialAccount = Account:new({limit = 1000})    -- 开启一个特殊账户类型，这个账户类型的账户可以取款超过余额限制1000元

function SpecialAccount:withdraw(v)		
	if v - self.balance >= self:getLimit() then
		error("insufficient funds")
	end
	self.balance = self.balance - v
end

function SpecialAccount:getLimit ()
    return self.limit or 0
end


spacc = SpecialAccount:new()

spacc:withdraw(100.00)

print("spacc balance is " .. spacc.balance)

acc = Account:new()

acc:withdraw(100.00)

print("s balance is " .. acc.balance)