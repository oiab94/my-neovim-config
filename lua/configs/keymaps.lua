local function map(mode, lhs, rhs, opts)
	local options = {noremap = true, silent = true}

	if opts then
		options = vim.tbl_extend('force', options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
	-- vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Key Leader
vim.g.mapleader = ' '

-- Mapeo de teclas
map('n', '<leader>w', '<CMD>w!<CR>') 	-- Guardar archivo
map('n', '<leader>q', '<CMD>wq!<CR>') -- Guardar y Cerrar Neovim
map('n', '<leader>e', '<CMD>Ex<CR>') 	-- Abre el explorador de archivos



-- Mapeo de teclas PLUGINS
-- Telescope: Ver Github para mas opciones
map('n', '<leader>f', '<CMD>Telescope find_files<CR>')	-- Lista los archivos en nuestro directorio de trabajo, respeta ficheros en .gitignore
map('n', '<leader>g', '<CMD>Telescope live_grep<CR>')	-- Busca el string en nuestro directorio de trabajo
map('n', '<leader>b', '<CMD>Telescope buffers<CR>')		-- Lista todos los buffers abierto en neovim
map('n', '<leader>h', '<CMD>Telescope help_tags<CR>')	-- Lista todos los help tags y abre en una nueva ventana

-- Neotree:
map('n', '<C-n>', '<CMD>Neotree<CR>')
map('n', '<C-c>', '<CMD>Neotree close<CR>')


-- LSP:
map('n', 'K', vim.lsp.buf.hover)						-- Muestra información acerca del simbolo debajo del cursor en una pantalla flotante
map('n', 'gd', vim.lsp.buf.definition)			-- Va a la definición del simbolo que se encuetra debajo del cursor
map('n', 'gD', vim.lsp.buf.declaration) 		-- Va la declaración del simbolo que se encuentra debajo del cursor
map('n', '<leader>rn', vim.lsp.buf.rename) 	-- Renombra todas las referencias que se encuentra debajo del cursor
map('n', 'gr', vim.lsp.buf.references) 			-- Lista todas las referencias que se encuentra debajo del cursor
