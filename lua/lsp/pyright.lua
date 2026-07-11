local M = {}

function M.get_python_path(root)
  root = root
    or vim.fs.dirname(vim.fs.find({ 'pyproject.toml', '.venv' }, { upward = true })[1])
    or vim.fn.getcwd()

  local sep = package.config:sub(1, 1) == '\\' and 'Scripts/python.exe' or 'bin/python'
  local uv_python = root .. '/.venv/' .. sep
  if vim.fn.executable(uv_python) == 1 then
    return uv_python
  end

  return vim.fn.exepath 'python3' or vim.fn.exepath 'python'
end

return M
