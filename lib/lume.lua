--
-- lume
--
-- Copyright (c) 2016 rxi
--
-- This library is free software; you can redistribute it and/or modify it
-- under the terms of the MIT license. See LICENSE for details.
--
local lume = {}

function lume.clamp(x, min, max)
  return x < min and min or (x > max and max or x)
end


return lume
