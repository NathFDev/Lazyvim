return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = {
            "html",
            "templ",
          },
        },
        htmx = {
          filetypes = {
            "html",
            "templ",
          },
        },
        templ = {},
        cssls = {},
        svelte = {},
        emmet_language_server = {},
        volar = {},
        astro = {},
        custom_elements_ls = {},
        tailwindcss = {
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
            "html",
            "templ",
          },
        },
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
