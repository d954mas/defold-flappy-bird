local M = {}

local prefix="main:/scenes"

local function create_url(name)
	return msg.url(prefix .. name)
end	


M.menu = create_url("#menu")
M.game = create_url("#game")
M.default_scene_name = "game"

return M