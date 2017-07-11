local constants = require("lib.constants")

local minimum_aspect = 4/3

local M = {}
M.game_projection = nil
M.max_height = 0

--if screen ration is bigger then 3/2 show more dirt and sky
--if ration in 4/3 to 3/2 zoom to center.Player will see all game zone in width 
--and part of game zone in height. 

--if ratio <4/3 add offset at x
function M.calculate(screen_width,screen_height)
	local aspect = screen_height/screen_width
	local game_width=constants.game_zone_width
	local game_height = constants.game_zone_height
	local delta_x=0
	local delta_y=0
	
	--biggest height. show more dirt and sky more than 4/3
	if(aspect>=minimum_aspect)then
		delta_y = ((game_width * aspect) - game_height)/2
	else
		--show minimum aspect in height. But add offset in x.
		delta_x = (minimum_aspect - aspect) * game_width/2
		delta_y = ((game_width * minimum_aspect) - game_height)/2
	end	
	M.max_height=game_height+delta_y
	M.game_projection = vmath.matrix4_orthographic(-delta_x, constants.game_zone_width+delta_x , -delta_y, M.max_height, -1, 1)
end	


return M
