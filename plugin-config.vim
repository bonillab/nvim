"colorscheme gruvbox
" Enabled Tokyo Theme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
colorscheme tokyonight 

let NERDTreeQuitOnOpen=1
let NERDTreeMapActivateNode='<space>'

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'javascript': { 'left': '{/*','right': '*/}' } }
let g:NERDCustomDelimiters = { 'dart': { 'left': '//' } }

"kite
"let g:kite_supported_languages =  ["javascript"]

" coc
autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Git
let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'
set stl+=%{ConflictedVersion()}

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" fugitive always vertical diffing
set diffopt+=vertical

" automatically use the system clipboard for copy and paste.
set clipboard=unnamedplus


"let g:UltiSnipsSnippetDirectories=[$HOME.'/config/.nvim/UltiSnips']
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'tokyonight',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

let g:airline_theme = "tokyonight"

"prettier
let g:prettier#autoformat = 1
" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 1

lua require'colorizer'.setup()

"Dart Format
let g:dart_format_on_save = 1
let g:lsc_auto_map = v:true

" Use <c-space> to trigger completion.
"if &filetype == 'javascript' || &filetype == 'python'
  "inoremap <c-space> <C-x><C-u>
"else
  "inoremap <silent><expr> <c-space> coc#refresh()
"endif


"-----------------------------------coc-config-------------------------------
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

