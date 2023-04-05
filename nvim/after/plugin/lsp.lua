--require'lspconfig'.java_language_server.setup{}
require'lspconfig'.jdtls.setup{ cmd = {'jdtls'}, filestypes = {'java'}}
