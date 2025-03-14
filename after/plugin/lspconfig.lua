require'lspconfig'.omnisharp.setup {
    cmd = { "dotnet", "C:/Users/chong/AppData/Local/nvim-data/mason/packages/omnisharp/libexec/OmniSharp.dll" },

    settings = {
        filetypes = { "cs", "vb" },
        FormattingOptions = {
            -- Enables support for reading code style, naming convention and analyzer
            -- settings from .editorconfig.
            EnableEditorConfigSupport = true,
            -- Specifies whether 'using' directives should be grouped and sorted during
            -- document formatting.
            OrganizeImports = true,
        },
        MsBuild = {
            -- If true, MSBuild project system will only load projects for files that
            -- were opened in the editor. This setting is useful for big C# codebases
            -- and allows for faster initialization of code navigation features only
            -- for projects that are relevant to code that is being edited. With this
            -- setting enabled OmniSharp may load fewer projects and may thus display
            -- incomplete reference lists for symbols.
            LoadProjectsOnDemand = nil,
        },
        RoslynExtensionsOptions = {
            -- Enables support for roslyn analyzers, code fixes and rulesets.
            EnableAnalyzersSupport = true,
            -- Enables support for showing unimported types and unimported extension
            -- methods in completion lists. When committed, the appropriate using
            -- directive will be added at the top of the current file. This option can
            -- have a negative impact on initial completion responsiveness,
            -- particularly for the first few completion sessions after opening a
            -- solution.
            EnableImportCompletion = true,
            -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
            -- true
            AnalyzeOpenDocumentsOnly = nil,
        },
        Sdk = {
            -- Specifies whether to include preview versions of the .NET SDK when
            -- determining which version to use for project loading.
            IncludePrereleases = true,
        },
    },
}

require'lspconfig'.sqlls.setup{
cmd =
{ "sql-language-server", "up", "--method", "stdio" },
filetypes =
{ "sql", "mysql" },
}

require'lspconfig'.lua_ls.setup {
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if path ~= vim.fn.stdpath('config') and (vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc')) then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT'
            },
            -- Make the server aware of Neovim runtime files
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                    -- Depending on the usage, you might want to add additional paths here.
                    -- "${3rd}/luv/library"
                    -- "${3rd}/busted/library",
                }
                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
                -- library = vim.api.nvim_get_runtime_file("", true)
            }
        })
    end,
    settings = {
        Lua = {}
    },
    cmd =
    { "lua-language-server" },
    filetypes =
    { "lua" },
    log_level =
    2
}

require'lspconfig'.luau_lsp.setup{
    cmd =
    { "luau-lsp", "lsp" },
    filetypes =
    { "luau" }
}

require'lspconfig'.cssmodules_ls.setup{
    cmd =
    { "cssmodules-language-server" },
    filetypes =
    { "javascript", "javascriptreact", "typescript", "typescriptreact" }
}

--Something recommended for html lsp
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
    capabilities = capabilities,
    cmd =
    { "vscode-html-language-server", "--stdio" },
    filetypes =
    { "html", "templ" },
    init_options =
    {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = true
    }
}

require'lspconfig'.java_language_server.setup{
    filetypes =
    { "java" }
}

require'lspconfig'.phpactor.setup{
    cmd =
    { "phpactor", "language-server" },
    filetypes =
    { "php" }
}

require'lspconfig'.golangci_lint_ls.setup{
    cmd =
    { "golangci-lint-langserver" },
    filetypes =
    { "go", "gomod" },
    init_options =
    {
        command = { "golangci-lint", "run", "--out-format", "json" }
    }
}

require'lspconfig'.ast_grep.setup{
    cmd =
    { "ast-grep", "lsp" },
    filetypes =
    { "c", "cpp", "rust", "go", "java", "python", "javascript", "typescript", "html", "css", "kotlin", "dart", "lua" }
}

require'lspconfig'.basedpyright.setup{
    cmd =
    { "basedpyright-langserver", "--stdio" },
    filetypes =
    { "python" },
    settings =
    {
        basedpyright = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true
            }
        }
    }
}

require'lspconfig'.bashls.setup{
    cmd =
    { "bash-language-server", "start" },
    filetypes =
    { "bash", "sh" },
    settings =
    {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
        }
    }
}

require'lspconfig'.ruby_lsp.setup{
    cmd =
    { "ruby-lsp" },
    filetypes =
    { "ruby", "eruby" },
    init_options =
    {
        formatter = "auto"
    }
}

require'lspconfig'.asm_lsp.setup{
    cmd =
    { "asm-lsp" },
    filetypes =
    { "asm", "vmasm" }
}

require'lspconfig'.pylsp.setup{
    cmd =
    { "pylsp" },
    filetypes =
    { "python" }
}

require'lspconfig'.pylyzer.setup{
    cmd =
    { "pylyzer", "--server" },
    filetypes =
    { "python" },
    settings =
    {
        python = {
            checkOnType = false,
            diagnostics = true,
            inlayHints = true,
            smartCompletion = true
        }
    }
}

require'lspconfig'.lemminx.setup{
    cmd =
    { "lemminx" },
    filetypes =
    { "xml", "xaml", "xsd", "xsl", "xslt", "svg" }
}
