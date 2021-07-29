let mapleader=" "

" Maps
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>n :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>

"Tmux Navigator
nmap <Leader>s :TmuxNavigateLeft<CR>
nmap <Leader>d :TmuxNavigateRight<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> gss :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gs :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>

"Prettier
nmap <Leader>p <Plug>(Prettier)
