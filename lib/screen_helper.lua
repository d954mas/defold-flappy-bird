local M = {}
M.game_width = 136
M.game_height = nil
M.game_delta_x = 0
M.dirt_pos_y = 0
M.height_delta = 0
M.game_projection = nil

function M.calculate(screen_width,screen_height)
	M.game_height = M.game_width * screen_height/screen_width
	M.dirt_pos_y = 38 * screen_height/M.game_height * M.game_height/204 * 1.6
	M.height_delta = M.game_height - 204
	M.game_projection =vmath.matrix4_orthographic(0, M.game_width , -M.height_delta, M.game_height +M.height_delta, -1, 1)
end	


return M
