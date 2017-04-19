local cards = require("models.cards")
local M = {}

local prefix="main:/scenes"

local function create_url(name)
	return msg.url(prefix .. name)
end	


M.menu = create_url("#menu")
M.cards = create_url("#cards")
M.fight = create_url("#fight")
M.change_card = create_url("#change_card")
M.default_scene_name = "menu"

return M