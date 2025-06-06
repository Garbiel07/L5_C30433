
project('mi_programa_json', 'c', version: '1.0')

# Incluir archivos fuente
sources = [
  'src/main.c',
  'src/json.c',
  'cJSON/cJSON.c'
]

# Incluir encabezados de src/ y cJSON/
inc_dirs = [
  include_directories('src'),
  include_directories('cJSON')
]

# Ejecutable final
executable('mi_programa',
  sources,
  include_directories: inc_dirs,
  install: true
)