" Pathogen: plugin manager
execute pathogen#infect()

" Number lines relativly
set number
set relativenumber

" Show command on bottom left
set showcmd

" Syntastic:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Tagbar: requires vim 7.3.1058 and tag generation (i.e ctags)
nmap <F8> :TagbarToggle<CR>

" Ultisnip: snippets engine (uses vim-snippets as the snippets source)
let g:UltisnipsExpandTrigger="<tab>"
let g:UltisnipsJumpForwardTrigger="<c-b>"
let g:UltisnipsJumpBackwardTrigger="<c-z>"
let g:UltisniptsEditSplit="vertical"

" Search: smart case (otherwise ignore)
set hlsearch
set ignorecase
set smartcase
set cursorline

map <C-m> :nohl<CR>
" Make sure we use 256 colors
set t_ut=
set t_Co=256
" Gruvbox: colorscheme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1


" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs as bad.
au BufRead,BufNewFile *.py match BadWhiteSpace /^\t\+/
" Display trailing whitespace as bad
au BufRead,BufNewFile *.py match BadWhiteSpace /\s\+$/
" Use UNIX (\n) line endings.
au BufNewFile *.py set fileformat=unix
" Wrap text after a certain number of characters
" Python: 120
au BufRead,BufNewFile *.py set textwidth=120

" Netrw: file viewing
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 25
" Open with ctrl-e
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>
