local constants = require("lib.constants")

local minimum_height_to_width = 4/3

local M = {}
M.game_width = constants.game_zone_width
M.game_height = nil
M.game_delta_x = 0
M.height_delta = 0
M.game_projection = nil


function M.calculate(screen_width,screen_height)
	local height_to_width = screen_height/screen_width
	M.game_height = M.game_width * height_to_width
	M.height_delta = (M.game_height - constants.game_zone_height)/2
	if(height_to_width>=minimum_height_to_width)then
		--show more then game_zone_height
		M.game_projection = vmath.matrix4_orthographic(0, M.game_width , -M.height_delta, M.game_height - M.height_delta, -1, 1)
	else
		--show game zone. But add offset in x.
		local delta = (1.5 - height_to_width) * M.game_width
		M.game_height = constants.game_zone_height
		M.game_projection = vmath.matrix4_orthographic(-delta, M.game_width + delta,0, M.game_height, -1, 1)
	end	
end	


return M
