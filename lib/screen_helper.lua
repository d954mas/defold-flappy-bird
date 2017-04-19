local M = {}
M.game_width = 136
M.game_height = nil
M.game_delta_x = 0
M.height_delta = 0
M.game_projection = nil

function M.calculate(screen_width,screen_height)
	local height_to_width = screen_height/screen_width
	M.game_height = M.game_width * height_to_width
	M.height_delta = M.game_height - 204
	if(M.height_delta>=0)then
		M.game_projection = vmath.matrix4_orthographic(0, M.game_width , -M.height_delta, M.game_height +M.height_delta, -1, 1)
	else
		local delta = (1.5 - height_to_width) * M.game_width
		M.game_height = 204
		M.game_projection = vmath.matrix4_orthographic(-delta, M.game_width + delta,0, M.game_height, -1, 1)
	end	
end	


return M
