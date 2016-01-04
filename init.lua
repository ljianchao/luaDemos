require 'config'
local optionIsOn = function(options)
	print(options) 
	return options == "on" and true or false
end

UrlDeny = optionIsOn(UrlDeny)

print(UrlDeny)
