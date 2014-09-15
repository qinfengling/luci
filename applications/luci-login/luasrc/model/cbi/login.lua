--[[
LuCI - Lua Configuration Interface

Copyright 2014 Mikeqin <Fengling.Qin@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id: init.lua 5764 2010-03-08 19:05:34Z jow $
]]--

m = Map("login_file", translate("Login Settings"), translate("Login automatically"))

s = m:section(TypedSection, "login_file")
s.addremove = false
s.anonymous = false 

local gwip = s:option(Value, "gwip", translate("Gateway IP"))
gwip.rmempty = false
gwip.default = "192.168.1.100"

local gwuser = s:option(Value, "gwuser", translate("Gateway Username"))
gwuser.rmempty = false

local gwpass = s:option(Value, "gwpass", translate("Gateway Password"))
gwpass.rmempty = true
gwpass.password = true

local encoderip = s:option(Value, "encoderip", translate("Encoder IP"))
encoderip.rmempty = false
encoderip.default = "192.168.1.101"

local encoderuser = s:option(Value, "encoderuser", translate("Encoder Username"))
encoderuser.rmempty = false

local encoderpass = s:option(Value, "encoderpass" ,translate("Encoder Password"))
encoderpass.rmempty = true
encoderpass.password = true

return m
