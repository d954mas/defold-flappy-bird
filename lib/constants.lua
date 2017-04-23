local M = {}

--game zone sizes. Game zone width is same in different aspect ration.Game zone height is scaled.
--all people will always see game zone. But some people can see more dirt and sky.
M.game_zone_width = 136
M.game_zone_height = 204


M.bird_position = vmath.vector3(33,M.game_zone_height/2,0.3)

--all info about pipes
M.pipes_speed = 20 -- pixels/s speed of pipes and grass
M.pipe_top_size = vmath.vector3(24,14,0)
M.pipe_start_pos = vmath.vector3(100,47,0.5)
M.pipes_gap = 50
M.pipe_width = 24
M.pipe_gap = 49 + M.pipe_width/2
M.pipe_top_gap = 45
M.pipe_bot_height = 3
M.pipe_top_height = 14


M.gui_width = 640
M.gui_height = 960
M.sky_color = vmath.vector4(55/255, 80/255, 100/255, 1) -- used as clear color in render

return M