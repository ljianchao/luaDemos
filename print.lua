local zr = {}
zr.p = function(data)  
    -- ngx.log(ngx.DEBUG,"#############core.print data zrp###########");  
    print("#############core.print data zrp start###########")
    local cstring = "";  
    zr.tableprint(data,cstring);  
    print("#############core.print data zrp end###########")
end  
  
zr.tableprint = function(data,cstring)  
    if data == nil then   
        -- ngx.log(ngx.DEBUG,"core.print data is nil");  
        print("core.print data is nil")
    end  
    local cs = cstring .. " ";  
    --ngx.log(ngx.DEBUG,cstring .."{");
    print(cstring .."{")  
    if(type(data)=="table") then  
        for k, v in pairs(data) do  
            -- ngx.log(ngx.DEBUG,cs..tostring(k).." = "..tostring(v));  
            print(cs..tostring(k).." = "..tostring(v))
            if(type(v)=="table") then  
                zr.tableprint(v,cs);  
            end  
        end  
    else  
        -- ngx.log(ngx.DEBUG,cs..tostring(data)); 
        print(cs..tostring(data))
    end  
    --ngx.log(ngx.DEBUG,cstring .."}");
    print(cstring .."}")  
end  

return zr