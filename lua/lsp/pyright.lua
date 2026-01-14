local M = {}

function M.get_python_path()
  -- Find project root (pyproject.toml or .venv)
  local root = vim.fs.dirname(vim.fs.find({ 'pyproject.toml', '.venv' }, { upward = true })[1]) or vim.fn.getcwd()

  -- uv-managed virtual environment
  local uv_python = root .. '/.venv/bin/python'
  if vim.fn.executable(uv_python) == 1 then
    return uv_python
  end

  -- Fallback (should almost never happen)
  return vim.fn.exepath 'python3' or vim.fn.exepath 'python'
end

return M
