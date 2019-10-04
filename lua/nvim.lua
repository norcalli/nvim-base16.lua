-- Equivalent to `echo vim.inspect(...)`
local function nvim_print(...)
  if select("#", ...) == 1 then
    vim.api.nvim_out_write(vim.inspect((...)))
  else
    vim.api.nvim_out_write(vim.inspect {...})
  end
  vim.api.nvim_out_write("\n")
end

--- Equivalent to `echo` EX command
local function nvim_echo(...)
  for i = 1, select("#", ...) do
    local part = select(i, ...)
    vim.api.nvim_out_write(tostring(part))
    -- vim.api.nvim_out_write("\n")
    vim.api.nvim_out_write(" ")
  end
	vim.api.nvim_out_write("\n")
end

-- `nvim.$method(...)` redirects to `nvim.api.nvim_$method(...)`
-- `nvim.fn.$method(...)` redirects to `vim.api.nvim_call_function($method, {...})`
-- TODO `nvim.ex.$command(...)` is approximately `:$command {...}.join(" ")`
-- `nvim.print(...)` is approximately `echo vim.inspect(...)`
-- `nvim.echo(...)` is approximately `echo table.concat({...}, '\n')`
-- Both methods cache the inital lookup in the metatable, but there is a small overhead regardless.
return setmetatable({
  print = nvim_print;
  echo = nvim_echo;
  fn = setmetatable({}, {
    __index = function(self, k)
      local mt = getmetatable(self)
      local x = mt[k]
      if x ~= nil then
        return x
      end
      local f = function(...) return vim.api.nvim_call_function(k, {...}) end
      mt[k] = f
      return f
    end
  });
  buf = setmetatable({
		}, {
    __index = function(self, k)
      local mt = getmetatable(self)
      local x = mt[k]
      if x ~= nil then
        return x
      end
			local f = function(...)
				vim.api['nvim_buf_'..k](0, ...)
			end
      mt[k] = f
      return f
    end
  });
  ex = setmetatable({}, {
    __index = function(self, k)
      local mt = getmetatable(self)
      local x = mt[k]
      if x ~= nil then
        return x
      end
			local command = k:gsub("_$", "!")
      local f = function(...)
				return vim.api.nvim_command(table.concat(vim.tbl_flatten {command, ...}, " "))
			end
      mt[k] = f
      return f
    end
  });
  g = setmetatable({}, {
    __index = function(_, k)
			return vim.api.nvim_get_var(k)
		end;
    __newindex = function(_, k, v)
			if v == nil then
				return vim.api.nvim_del_var(k)
			else
				return vim.api.nvim_set_var(k, v)
			end
		end;
  });
  v = setmetatable({}, {
    __index = function(_, k)
			return vim.api.nvim_get_vvar(k)
		end;
    __newindex = function(_, k, v)
			return vim.api.nvim_set_vvar(k, v)
    end
  });
  b = setmetatable({}, {
    __index = function(_, k)
			return vim.api.nvim_buf_get_var(0, k)
		end;
    __newindex = function(_, k, v)
			if v == nil then
				return vim.api.nvim_buf_del_var(0, k)
			else
				return vim.api.nvim_buf_set_var(0, k, v)
			end
    end
  });
  o = setmetatable({}, {
    __index = function(_, k)
			return vim.api.nvim_get_option(k)
		end;
    __newindex = function(_, k, v)
			return vim.api.nvim_set_option(k, v)
    end
  });
  bo = setmetatable({}, {
    __index = function(_, k)
			return vim.api.nvim_buf_get_option(0, k)
		end;
    __newindex = function(_, k, v)
			return vim.api.nvim_buf_set_option(0, k, v)
    end
  });
  env = setmetatable({}, {
    __index = function(_, k)
			return vim.api.nvim_call_function('getenv', {k})
		end;
    __newindex = function(_, k, v)
			return vim.api.nvim_call_function('setenv', {k, v})
    end
  });
}, {
  __index = function(self, k)
    local mt = getmetatable(self)
    local x = mt[k]
    if x ~= nil then
      return x
    end
    local f = vim.api['nvim_'..k]
    mt[k] = f
    return f
  end
})

