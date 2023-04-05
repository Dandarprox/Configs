set nohlsearch
set ignorecase
set formatoptions-=cro
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=4
let mapleader=" "
set number

" Paste until eol ignoring eol character
nnoremap Y yg_

" Keep centered search results
nnoremap n nzz
nnoremap N Nzz
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

    nnoremap <leader>rr <Cmd>call VSCodeCall('rust-analyzer.run')<CR>
    
    " Error traversal
    nnoremap <leader>e <Cmd>call VSCodeCall('editor.action.marker.next')<CR><esc>
    nnoremap <leader>w <Cmd>call VSCodeCall('editor.action.marker.prev')<CR><esc>

    " HTML
    vnoremap <leader>q <Cmd>call VSCodeCall('editor.emmet.action.wrapWithAbbreviation')<CR><esc>

    " Git
    nnoremap <leader>gr <Cmd>call VSCodeCall('git.revertSelectedRanges')<CR>
    nnoremap <leader>gn <Cmd>call VSCodeCall('workbench.action.editor.nextChange')<CR><esc>
    nnoremap <leader>gp <Cmd>call VSCodeCall('workbench.action.editor.previousChange')<CR><esc>
    
    " Rename symbol
    nnoremap <leader>2 <Cmd>call VSCodeCall('editor.action.rename')<CR>
endif

" Select block
nnoremap <leader>am <S-v>$%

" Copy to clipboard
vnoremap <leader>x "+y

" Stay in indent mode
vnoremap < <gv
vnoremap > >gv

" Refactor single quotes to backticks
nnoremap <leader>` F'r`f'r`

" Delete without copying
nnoremap <leader>d "_d
nnoremap <leader>D "_D

" \" around visual selection
vnoremap " xi""<Esc>P

set guicursor=n-v-c-i:block
