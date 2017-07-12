local M = {}

M.INPUT_FOCUS_GET=hash("acquire_input_focus")
M.INPUT_FOCUS_RELEASE=hash("release_input_focus")
M.INPUT_TOUCH=hash("touch")

M.PHYSICS_MESSAGE_CONTACT   = hash("contact_point_response")
M.PHYSICS_MESSAGE_COLLISION = hash("collision_response")
M.PHYSICS_MESSAGE_TRIGGER = hash("trigger_response")

M.MESSAGE_ENABLE=hash("enable")
M.MESSAGE_PLAY_ANIMATION=hash("play_animation")
M.MESSAGE_PLAY_SOUND=hash("play_sound")
M.MESSAGE_DISABLE=hash("disable")
M.MESSAGE_RESET=hash("reset")
M.MESSAGE_INCREASE_SCORE=hash("increase_score")
M.MESSAGE_GAME_OVER=hash("game_over")
M.MESSAGE_RESTART=hash("restart")
M.MESSAGE_START=hash("start")
M.MESSAGE_STOP=hash("stop")
M.MESSAGE_START_GAME=hash("start_game")
M.MESSAGE_SET_SCORE=hash("set_score")
M.MESSAGE_SHOW=hash("show")

M.SCORE = hash("score")
M.FLY = hash("fly")
M.BIRD = hash("bird")
M.DIRT = hash("dirt")

return M