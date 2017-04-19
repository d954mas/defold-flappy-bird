local M = {}
M.__index = M

local color_target = nil
local pred = nil
local projection = nil
local constants = nil

function M.init()
	local self = setmetatable({},M)
	   -- render target buffer parameters
    local color_params = { format = render.FORMAT_RGB,
                           width = 1,
                           height = 1,
                           min_filter = render.FILTER_LINEAR,
                           mag_filter = render.FILTER_LINEAR,
                           u_wrap = render.WRAP_CLAMP_TO_EDGE,
                           v_wrap = render.WRAP_CLAMP_TO_EDGE }
    local depth_params = { format = render.FORMAT_DEPTH,
                           width = 1,
                           height = 1,
                           u_wrap = render.WRAP_CLAMP_TO_EDGE,
                           v_wrap = render.WRAP_CLAMP_TO_EDGE }
    color_target = render.render_target("color_targer", {[render.BUFFER_COLOR_BIT] = color_params, [render.BUFFER_DEPTH_BIT] = depth_params })
	pred = render.predicate({"screen"})
	projection=vmath.matrix4_orthographic(0,0.02,0,0.02,-1,1)
	constants = render.constant_buffer()
end

function M.draw(x,y,width,height,color)
	constants.color = color
	render.set_viewport(x,y,width,height)
	render.set_projection(projection)
	render.enable_texture(0, color_target, render.BUFFER_COLOR_BIT)
	render.draw(pred,constants)
	render.disable_texture(0,render_target)
	
end


return M