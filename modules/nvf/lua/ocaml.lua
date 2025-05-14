if os.getenv("LSP_SERVER") == "ocamllsp" then
  require'lspconfig'.ocamllsp.setup{}
end
