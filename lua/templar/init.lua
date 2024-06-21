local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node

TEMPLATE_DIR = '/home/joshua/.config/templar/templates/'

local function setup()
	local files = {}
	local cmd = "ls -pa "..TEMPLATE_DIR.." | grep -v /"
	for dir in io.popen(cmd):lines() do files[#files+1]=dir end
	for _, file in ipairs(files) do
		print(file)
		local lines = {}
		for line in io.lines(TEMPLATE_DIR..file) do lines[#lines+1]=line end
	end



end

return {setup = setup}
