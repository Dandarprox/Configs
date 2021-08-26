set nohlsearch
set formatoptions-=cro

" Paste until eol ignoring eol character
nnoremap Y yg_

" Keep centered search results
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap [ [<c-g>u
inoremap { {<c-g>u

" Change several ocurrences of word (Ctrl + shift + D) equivalent
nnoremap cn *``cgn
nnoremap cN *``cgN

" Add to jumplist points 
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> :m .+1<CR>==
inoremap <C-j> :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Add quotes around a visual selection
vnoremap ' <esc>`>a'<esc>`<i'<esc>
vnoremap ` <esc>`>a`<esc>`<i`<esc>
" vnoremap " <esc>`>a"<esc>`<i"<esc> 

" Disable U worst thing ever
nnoremap U <nop>

" Neovim - VSCode only
if exists('g:vscode')
    " Comment blocks
    xmap <leader>c <Plug>VSCodeCommentarygv
    nmap <leader>c <Plug>VSCodeCommentaryLine
endif
"
