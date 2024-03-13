local M = {
    cmd = { "vscode-json-language-server", "--stdio" },
    settings = {
        json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true }
        }
    }
}


return M
