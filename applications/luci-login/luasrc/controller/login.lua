--[[
LuCI - Lua Configuration Interface

Copyright 2014 Mikeqin <Fengling.Qin@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id: init.lua 6731 2011-01-14 19:44:03Z soma $
]]--

module("luci.controller.login", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/login_file") then
		return
	end

    entry({"admin", "login"}, template("luci_login/index"), _("Login Entry & Settings"), 90)
	entry({"admin", "login", "entry"}, template("login_entry"), _("Login Entry"), 91)
	entry({"admin", "login", "config"}, cbi("login"), _("Login Settings"), 92)
end

