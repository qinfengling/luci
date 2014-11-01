--[[
LuCI - Lua Configuration Interface

Copyright 2011 Jo-Philipp Wich <xm@subsignal.org>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id: init.lua 5764 2010-03-08 19:05:34Z jow $
]]--

m = Map("wrtiot", translate("WRTIOT Setting"), translate("WRTIOT is an open source IOT platform," ..
	"It use OpenWrt as a based package distribution, and support many IOT server, eg: Yeelink," ..
	"Lewei, cosm and etc."))

s = m:section(TypedSection, "settings")
s.addremove = false
s.anonymous = true

s:option(Value, "API_KEY", translate("API_KEY"))

return m
