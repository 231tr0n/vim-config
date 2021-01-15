" Key Bindings
" Mappings for brackets and quotes
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap (<CR> (<CR>)<Esc>O<Tab>
inoremap [<CR> [<CR>]<Esc>O<Tab>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>
inoremap < <><Left>
inoremap </ </><Left>
inoremap {<Space> {
inoremap (<Space> (
inoremap [<Space> [
inoremap "<Space> "
inoremap '<Space> '
inoremap `<Space> `
inoremap <<Space> <
inoremap {} {}
inoremap () ()
inoremap [] []
inoremap "" ""
inoremap '' ''
inoremap `` ``
inoremap <> <>
inoremap </> </>
" Mappings for tabs and space conversions
nnoremap <Tab><Tab><Tab> :1,$s/    /\t/g
nnoremap <Space><Space><Space> :1,$s/\t/    /g
" Filetype maps
:au BufEnter,BufNew,BufNewFile *.py inoremap :<CR> :<CR><Tab>
" autoclose html tags mapping
:set omnifunc=htmlcomplete#CompleteTags
:au FileType html,xml,xsl inoremap <C-_> <Right><Enter></<C-x><C-o><Esc>O<Tab>|map <C-_> a<C-_>|inoremap <C-_><C-_> <Right></<C-x><C-o>


" colorscheme and config
set background=dark
syntax on
syntax reset
set number
set cursorcolumn
set cursorline
set hlsearch
set list
set autoindent
set tabstop=4
highlight clear
" Basic text
highlight Comment ctermfg=226 cterm=none
highlight Normal ctermfg=196 cterm=none
" Basic Types
highlight Constant ctermfg=46 cterm=none
highlight Number ctermfg=46 cterm=none
highlight Float ctermfg=46 cterm=none
highlight Boolean ctermfg=46 cterm=none
highlight String ctermfg=46 cterm=none
highlight Character ctermfg=46 cterm=none
" Variables and Functions
highlight Identifier ctermfg=51 cterm=none
highlight Function ctermfg=51 cterm=none
" Code
highlight Statement ctermfg=21 cterm=none
highlight Conditional ctermfg=21 cterm=none
highlight Repeat ctermfg=21 cterm=none
highlight Label ctermfg=21 cterm=none
highlight Operator ctermfg=21 cterm=none
highlight Keyword ctermfg=21 cterm=none
highlight Exception ctermfg=21 cterm=none
" Pre processed code
highlight PreProc ctermfg=51 cterm=none
highlight Include ctermfg=51 cterm=none
highlight Define ctermfg=51 cterm=none
highlight Macro ctermfg=51 cterm=none
highlight Precondit ctermfg=51 cterm=none
" Classes and Structures
highlight Type ctermfg=51 cterm=none
highlight StorageClass ctermfg=51 cterm=none
highlight Structure ctermfg=51 cterm=none
highlight Typedef ctermfg=51 cterm=none
" Special Text
highlight Special ctermfg=51 cterm=none
highlight SpecialChar ctermfg=51 cterm=none
highlight Tag ctermfg=51 cterm=none
highlight Delimiter ctermfg=51 cterm=none
highlight SpecialComment ctermfg=51 cterm=none
highlight Debug ctermfg=51 cterm=none
" Others
highlight Underlined ctermfg=93 cterm=none
highlight Ignore ctermfg=21 cterm=none
highlight Error ctermfg=231 ctermbg=196 cterm=none
highlight Todo ctermfg=51 ctermbg=16 cterm=none
" Vi-related
highlight Cursor ctermfg=231 ctermbg=59 cterm=none
highlight SpecialKey ctermfg=240 cterm=none
highlight ErrorMsg ctermfg=231 ctermbg=196 cterm=none
highlight Directory ctermfg=21 cterm=bold
highlight Search ctermfg=16 ctermbg=51 cterm=none
highlight Visual ctermbg=59 cterm=none
highlight WildMenu ctermfg=231 cterm=none
highlight CursorLine ctermbg=242 cterm=bold
highlight LineNr cterm=bold ctermbg=21 ctermfg=226
highlight NonText ctermfg=240
" Pmenu
highlight Pmenu ctermfg=16 ctermbg=46 cterm=bold
highlight PmenuSel ctermfg=16 ctermbg=21 cterm=bold
" Invisible Characters
set listchars=eol:¬,tab:\|\·,trail:~,extends:>,precedes:<
" Links
highlight link TermCursor Cursor
highlight link CursorIM Cursor
highlight link CursorColumn Cursor
highlight link CursorLine Cursor
highlight link lCursor Cursor


" Special commands and Characters for copy/paste :- "¬·"
" source ~/.vim/plugins/file_name.txt
