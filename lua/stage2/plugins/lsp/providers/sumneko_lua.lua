local M = {
    settings = {
        Lua = {
            telemetry = { enable = false },
            runtime = {
                version = 'LuaJIT',
                special = {
                    reload = 'require'
                }
            },
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}


return M
