# <p align="center">trowel-nvim</p>

<p align="center">
  <a href="https://github.com/vlagache/trowel-nvim/?tab=readme-ov-file#Install">Install</a>
  -
  <a href="https://github.com/vlagache/trowel-nvim/issues/new/choose">Bug Report</a>
  -
  <a href="https://www.linkedin.com/in/vincent-lagache-4835a2166/">Contact me</a>
</p>


<p align="center">
  <img src="https://img.shields.io/badge/Neovim-0.10.0-f5a97f?style=for-the-badge&logo=neovim&logoColor=D9E0EE&labelColor=1E1E2E" alt="Neovim version badge">
  <img src="https://img.shields.io/github/issues/vlagache/trowel-nvim?style=for-the-badge&logo=alert&logoColor=D9E0EE&labelColor=1E1E2E&color=8bd5ca" alt="GitHub issues badge">
  <img src="https://img.shields.io/github/last-commit/vlagache/trowel-nvim/master?style=for-the-badge&logo=github&logoColor=D9E0EE&labelColor=1E1E2E&color=f0c6c6" alt="Last commit badge">
</p>

![Capture configuration Neovim](/assets/config.png)

## Introduction

I was bored one Sunday, so I wrote a [series of articles about my Neovim configuration on Medium](https://medium.com/@vlagache/ma-d%C3%A9couverte-de-neovim-c1c10e90ad6b). **It only exists in French 🇫🇷 for the moment.**  

All the code I talk about in my articles is here. 
<br />
<table>
  <thead>
    <tr>
      <th>Topic</th>
      <th>Read the article</th>
      <th>Commit</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td><strong>Plugin Manager</strong></td>
      <td><a href="https://medium.com/@vlagache/comment-configurer-et-utiliser-neovim-%C3%A0-partir-de-z%C3%A9ro-9223c330ca37">Plugin Manager</a></td>
      <td><a href="https://github.com/vlagache/trowel-nvim/commit/80d0b2bf26395dcc87d33d0e89be4b082ea2b08c">80d0b2b</a></td>
    </tr>
    <tr>
      <td><strong>LSP</strong></td>
      <td><a href="https://medium.com/@vlagache/comment-configurer-et-utiliser-neovim-%C3%A0-partir-de-z%C3%A9ro-37807e6ae72a">LSP</a></td>
      <td><a href="https://github.com/vlagache/trowel-nvim/commit/c2d7b2c6ae58f314be56c72981fe00979b7fb4e3">c2d7b2c</a></td>
    </tr>
    <tr>
      <td><strong>Navigation</strong></td>
      <td><a href="https://medium.com/@vlagache/comment-configurer-et-utiliser-neovim-%C3%A0-partir-de-z%C3%A9ro-0a85c06bdbe2">Navigation</a></td>
      <td><a href="https://github.com/vlagache/trowel-nvim/commit/024dc64fb15ef6ce7b7781d88c2260245dcc2447">024dc64</a></td>
    </tr>
    <tr>
      <td><strong>Git</strong></td>
      <td><a href="https://medium.com/@vlagache/comment-configurer-et-utiliser-neovim-%C3%A0-partir-de-z%C3%A9ro-204a97b1192f">Git</a></td>
      <td><a href="https://github.com/vlagache/trowel-nvim/commit/a52ad2aa4bfb4b4799529d2991964a397ba21242">a52ad2a</a></td>
    </tr>
    <tr>
      <td><strong>Debug, UX, Copilot et lazy loading</strong></td>
      <td><a href="https://medium.com/@vlagache/comment-configurer-et-utiliser-neovim-%C3%A0-partir-de-z%C3%A9ro-1eb0eec55a23">Debug, UX, Copilot et lazy loading</a></td>
      <td>
        <a href="https://github.com/vlagache/trowel-nvim/commit/ba95c6658c2a4c57149aa984dab25656d451da0d">ba95c66</a> (Debug, UX, Copilot) + 
        <a href="https://github.com/vlagache/trowel-nvim/commit/2d6a1f62bd10bd88604cf23c1b3d34df8e16bc1d">2d6a1f</a> (lazy loading)
      </td>
    </tr>
  </tbody>
</table>
<br />

If you'd rather read a pdf than Medium, [this is the place 📚](https://drive.google.com/file/d/1a2yJLdV48cejEweYGN-rZOsCKpDChE1k/view?usp=sharing). It's pretty much the same content without gifs.


## Install

```
git clone https://github.com/vlagache/trowel-nvim.git ~/.config/nvim && nvim
```

Wait until lazy.nvim has finished loading all the plugins and you're done!

I'd like it if when lazy.nvim has finished the installation, we could get to the file explorer but I haven't found a solution yet, if you have any ideas : https://github.com/vlagache/trowel-nvim/issues/3 🐞

To uninstall

```
rm -rf ~/.local/share/nvim
rm -rf ~/.config/nvim
```
## Plugins

- The must-have fuzzy finder : [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- For more efficient browsing between files :  [harpoon](https://github.com/ThePrimeagen/harpoon)
- Just to look smarter : [copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- To add pastel to your life : [cattpucin](https://github.com/catppuccin/nvim)
- To add color to your life :  [nvim-treesiter](https://github.com/nvim-treesitter/nvim-treesitter)
- To comment on something that is no longer useful but that you still want to keep : [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- To have the file explorer right in front of you : [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) or [oil.nvim](https://github.com/stevearc/oil.nvim) (I couldn't choose)
- To have your mistakes in front of you : [trouble.nvim](https://github.com/folke/trouble.nvim)
- For a nice status bar : [lualine](https://github.com/nvim-lualine/lualine.nvim)
- To avoid mistakes in the next git conflict : [neogit](https://github.com/NeogitOrg/neogit), [diffview.nvim](https://github.com/sindrets/diffview.nvim), [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) and [git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)
- To stop print() and console.log() : [nvim-dap](https://github.com/mfussenegger/nvim-dap), [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui), [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text), [nvim-nio](https://github.com/nvim-neotest/nvim-nio) and [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- For all modern conveniences (autocompletion, syntax highlighting, error detection) :  [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim), [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason.nvim](https://github.com/williamboman/mason.nvim), [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim), [lspkind.nvim](https://github.com/onsails/lspkind.nvim), [LuaSnip](https://github.com/L3MON4D3/LuaSnip) and [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)



---

## Gallery
<details>
  <summary><b>Screenshots</b></summary>
  <br /> 
  
  **File explorer**
  ![Capture configuration Neovim avec Oil](/assets/oil_nvim.png)

  **Fuzzy finder**
  ![Capture utilisation de Telescope](/assets/telescope.png)
  
  **Copilot**
  ![Capture GitHub Copilot en action](/assets/copilot.png)

  **Debugging**
  ![Capture debugging avec Neovim](/assets/debug.png)

  **Git integration**
  ![Capture intégration Git avec Neovim](/assets/git.png)

</details>


