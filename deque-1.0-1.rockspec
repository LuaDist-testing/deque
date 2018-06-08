-- This file was automatically generated for the LuaDist project.

package = "deque"
version = "1.0-1"
-- LuaDist source
source = {
  tag = "1.0-1",
  url = "git://github.com/LuaDist-testing/deque.git"
}
-- Original source
-- source = {
--    url = "git://github.com/freshtacos/lua-deque"
-- }
description = {
   summary = "Implementation of a double-ended queue in Lua.",
   homepage = "https://github.com/freshtacos/lua-deque",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      deque = "src/deque.lua"
   }
}