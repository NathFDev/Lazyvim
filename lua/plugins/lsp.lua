return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        svelte = {},
        emmet_language_server = {},
        volar = {},
        astro = {},
        custom_elements_ls = {},
        tsserver = {
          filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
            "astro",
            "vue",
            "svelte",
          },
        },
      },
    },
  },
}
