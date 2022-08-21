
## Install In One Command!

Make sure you have the release version of Neovim (0.7+).

### Linux:

```bash
git clone https://github.com/jahdkaran/Neovim-config.git ~/.config/nvim
```

After copying config files to the specified folder, open nvim and type: `:PackerSync`, This will install all the plugins needed.
During the secong run of neovim plugins will automatically fetch their required data and configure themselves.


## Automatic LSP support

By default, most supported language servers will get automatically installed, the complete list of language servers 
are listed in the `lua/user/lsp/mason.lua` file. You can change this list for support your desired language.

Linters and Formatters are configured in the `null-ls.lua` file in the same folder. To view a complete list of LSPs, Linters, and Formatters
run `:mason`. You may add Linters and formatters names in the servers list in `null-ls` file after installation using `mason`.

## Plugins snapshot 

To maintain a stable Neovim IDE it is recommended to install plugin versions using snapshots. snapshots are added in the `packersnap` folder.
You can load snapshot versions by running:

```bash
:PackerSnapshotRollback <name of the snapshot>
```
if you prefer to upgrade plugins to the latest possible use:
  ```bash 
  :PackerSync
  ```

## WhichKey

The `<leader>` key is set to space. so by pressing space key you can see a list of keybindings for controlling 
Neovim.
