-- 寮曠敤妯″潡
-- local complex = require "complex"
-- 
-- local com1 = complex.new(0,1)
-- local com2 = complex.new(1,2)
-- 
-- local ans = complex.add(com1, com2)
-- 
-- print(ans.i, ans.r)

-- local commonutils = require "commonutils"
-- 
-- print(commonutils.new())

-- local a = true
-- 
-- print(type(a))

local aes = require("resty.aes")
local zlib = require("resty.compress")

local secretkey = "hmcm2015_waf_protect"
local aes_128_cbc = aes:new(secretkey)



local str = "{\"agent\":\"Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0\",\"ip\":\"127.0.0.1\",\"flag\":180}"

local asestr = aes_128_cbc:encrypt(str)	
print("asestr=" .. asestr)

local zipasestr = zlib.compress(asestr)
print("zipasestr=" .. zipasestr)

local unzipasestr = zlib.uncompress(zipasestr)
print("unzipasestr=" .. unzipasestr)

