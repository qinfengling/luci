--[[
LuCI - Lua Configuration Interface

Copyright 2014 Mikeqin <Fengling.Qin@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

]]--

module("luci.controller.wrtiot", package.seeall)

function index()
	entry({"admin", "wrtiot"}, alias("admin", "wrtiot", "settings"), _("WRTIOT"), 70).dependent=false
	entry({"admin", "wrtiot", "settings"}, cbi("wrtiot"), _("WRTIOT"))
end
