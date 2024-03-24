return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = {
            "html",
          },
        },
        htmx = {
          filetypes = {
            "html",
            "templ",
          },
        },
        emmet_language_server = {
          filetypes = {
            "javascriptreact",
            "typescriptreact",
            "html",
            "astro",
            "vue",
            "svelte",
            "templ",
          },
        },
        custom_elements_ls = {
          filetypes = {
            "javascriptreact",
            "typescriptreact",
            "astro",
            "vue",
            "svelte",
          },
        },
        tailwindcss = {
          filetypes = {
            "templ",
          },
        },
        tsserver = {
          filetypes = {
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
            "astro",
            "vue",
            "svelte",
          },
        },
      },
    },
  },
}
