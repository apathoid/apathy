local ts_provider = require('stage2.plugins.lsp.providers.tsserver')

local M = {
    cmd = { "vtsls", "--stdio" },
    flags = ts_provider.flags,
    diagnosticsDelay = ts_provider.diagnosticsDelay,
    init_options = ts_provider.init_options,
    settings = {
        typescript = ts_provider.settings.typescript,
        vtsls = {
            tsserver = {
                globalPlugins = {
                    {
                        name = "@styled/typescript-styled-plugin",
                        location = "/home/apathoid/.bun/install/global/node_modules",
                        enableForWorkspaceTypeScriptVersions = true
                    }
                }
            },
            autoUseWorkspaceTsdk = true,
            typescript = {
                format = {
                    trimTrailingWhitespace = true
                }
            },
            experimental = {
                completion = {
                    enableServerSideFuzzyMatch = true
                }
            }
        }
    },
    plugins = ts_provider.plugins
}


return M
