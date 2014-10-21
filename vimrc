execute pathogen#infect()
syntax on
filetype plugin indent on

color Dracula
let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1

autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

let g:syntastic_ruby_checkers = ['mri', 'rubocop']

set modifiable
filetype plugin indent on
highlight clear SignColumn

if $TERM == "xterm-256color"
  set t_Co=256
end

let mapleader=","
set pastetoggle=<F3>

nmap <Leader>r :RuboCop<CR>
nnoremap <leader>n :NERDTree<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set tabstop=2
set shiftwidth=2
set expandtab

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

set background=dark
