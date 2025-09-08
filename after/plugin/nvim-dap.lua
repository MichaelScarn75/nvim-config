local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = 'C:/Users/chong/AppData/Local/nvim/after/dap-adapter-dll/netcoredbg.exe',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}


-- how to use dap
-- dotnet build the program
-- run dap
-- then provide the program's dll file in dap
