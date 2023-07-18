vim.g.mkdp_auto_start = 0 -- Si se establece en 1, Neovim abrirá la ventana de vista previa después de ingresar al archivo Markdown. Por defecto: 0
vim.g.mkdp_auto_close = 1 -- Si se establece en 1, Neovim cerrará automáticamente la ventana de vista previa al cambiar de un archivo Markdown a otro. Por defecto: 1
vim.g.mkdp_refresh_slow = 0 -- Si se establece en 1, Neovim actualizará el Markdown al guardar el archivo o salir del modo de inserción. Por defecto: 0
vim.g.mkdp_command_for_global = 0 -- Si se establece en 1, el comando MarkdownPreview estará disponible para todos los archivos, no solo para los archivos Markdown. Por defecto: 0
vim.g.mkdp_open_to_the_world = 0 -- Si se establece en 1, el servidor de vista previa estará disponible para otros en tu red. Por defecto: 0
vim.g.mkdp_open_ip = '' -- Utiliza una dirección IP personalizada para abrir la página de vista previa. Útil cuando trabajas en Neovim remoto y deseas ver la vista previa en un navegador local. Por defecto: vacío
vim.g.mkdp_browser = '' -- Especifica el navegador para abrir la página de vista previa. Por defecto: vacío
vim.g.mkdp_echo_preview_url = 0 -- Si se establece en 1, mostrará la URL de la página de vista previa en la línea de comandos al abrir la página de vista previa. Por defecto: 0
vim.g.mkdp_browserfunc = '' -- Nombre de una función personalizada en Neovim para abrir la página de vista previa. Esta función recibirá la URL como parámetro. Por defecto: vacío
vim.o.updatetime = 1000 -- Establece la frecuencia en 100 milisegundo. Esto afecta funciones como resaltado de la sintaxis. Ajusta el valor segun tus necesidades.

-- Opciones para el renderizado del Markdown
vim.g.mkdp_preview_options = {
  mkit = {}, -- Opciones de markdown-it para el renderizado
  katex = {}, -- Opciones de KaTeX para matemáticas
  uml = {}, -- Opciones de markdown-it-plantuml para diagramas UML
  maid = {}, -- Opciones de mermaid para diagramas
  disable_sync_scroll = 0, -- Si se deshabilita la sincronización de desplazamiento. Por defecto: 0
  sync_scroll_type = 'middle', -- 'middle', 'top' o 'relative'. Por defecto: 'middle'
                              -- 'middle': el cursor siempre se mostrará en el centro de la página de vista previa
                              -- 'top': la parte superior de la vista actual en Neovim se mostrará en la parte superior de la página de vista previa
                              -- 'relative': la posición del cursor se mostrará en relación con la página de vista previa
  hide_yaml_meta = 1, -- Si se oculta el metadato YAML. Por defecto: 1
  sequence_diagrams = {}, -- Opciones de js-sequence-diagrams para diagramas de secuencia
  flowchart_diagrams = {}, -- Opciones de diagramas de flujo
  content_editable = false, -- Si se habilita la edición de contenido en la página de vista previa. Por defecto: false
  disable_filename = 0, -- Si se deshabilita el encabezado del nombre de archivo en la página de vista previa. Por defecto: 0
  toc = {} -- Opciones para la generación de la tabla de contenidos
}

vim.g.mkdp_markdown_css = '' -- Utiliza una hoja de estilo de Markdown personalizada. Debe ser una ruta absoluta, por ejemplo: '/Users/usuario/markdown.css' o expand('~/markdown.css'). Por defecto: vacío
vim.g.mkdp_highlight_css = '' -- Utiliza una hoja de estilo de resaltado personalizada. Debe ser una ruta absoluta, por ejemplo: '/Users/usuario/highlight.css' o expand('~/highlight.css'). Por defecto: vacío
vim.g.mkdp_port = '' -- Utiliza un puerto personalizado para iniciar el servidor, o déjalo vacío para usar uno aleatorio
vim.g.mkdp_page_title = '「${name}」' -- Título de la página de vista previa. ${name} se reemplazará por el nombre del archivo
vim.g.mkdp_filetypes = { 'markdown' } -- Tipos de archivo reconocidos para los comandos MarkdownPreview...
vim.g.mkdp_theme = 'dark' -- Tema predeterminado (dark o light). Por defecto, el tema se define según las preferencias del sistema

