# Formatters para VSCode
# Este proyecto
Instalar la version de ruby que se quiera en `rbenv`, en este caso `3.1.4`

Ejecutar `bundle install` en esta carpeta para instalar las dependencias de `ruby-lsp` y otros formatters.
# .rubocop.yml
Tomar el archivo `.rubocop.yml` de este proyecto y ponerlo en la raiz del proyecto de ruby.
Instalar en el `Gemfile` de ese proyecto las siguientes gemas:
```ruby
gem 'rubocop-rails-omakase'
```

# Ruby
Fuente: https://nrogap.medium.com/install-ruby-lsp-in-vs-code-128f02571ea0

Instalar:
- Ruby-LSP: `shopify.ruby-lsp`

## Configurar:
El path es el path de **este** proyecto.
```json
{
  [...],
  "rubyLsp.bundleGemfile": "/Users/juanlb/partition_data/juanlb_files/Projects/dotfiles/ruby-lsp/Gemfile",
  "rubyLsp.rubyVersionManager": {
    "identifier": "rbenv"
  },
  "rubyLsp.indexing": {
    "excludedPatterns": ["**/test/**/*.rb"],
    "includedPatterns": ["**/bin/**/*"],
    "excludedMagicComments": ["compiled:true"],
  },
  "rubyLsp.formatter": "rubocop",
  "rubyLsp.enableExperimentalFeatures": false,
}
```

# .erb
Instalar:
- ERB Formatter/Beautify: `aliariff.vscode-erb-beautify`

## Configurar:
```json
{
  [...],
  "[erb]": {
    "editor.defaultFormatter": "aliariff.vscode-erb-beautify"
  },
  "vscode-erb-beautify.executePath": "/Users/juanlb/.rbenv/versions/3.1.4/bin/htmlbeautifier"
}
```

# .haml
Instalar:
- Haml Formatter: `vayan.haml`
