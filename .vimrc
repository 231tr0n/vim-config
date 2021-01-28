" Key Bindings
" Mappings for brackets and quotes
" Commands starting with inoremap work only insert mode and commands starting with nnoremap work only in normal mode in vim.
inoremap {<CR> {<CR>}<Esc>O<Tab>
" If you press { and newline character, then the it will get printed like this:- { \n \t | \n } where | represents the cursor.
inoremap (<CR> (<CR>)<Esc>O<Tab>
" If you press ( and newline character, then the it will get printed like this:- ( \n \t | \n ) where | represents the cursor.
inoremap [<CR> [<CR>]<Esc>O<Tab>
" If you press [ and newline character, then the it will get printed like this:- [ \n \t | \n ] where | represents the cursor.
inoremap { {}<Left>
" If you press {, then the it will get printed like this:- {|} where | represents the cursor.
inoremap ( ()<Left>
" If you press (, then the it will get printed like this:- (|) where | represents the cursor.
inoremap [ []<Left>
" If you press [, then the it will get printed like this:- [|] where | represents the cursor.
inoremap " ""<Left>
" If you press ", then the it will get printed like this:- "|" where | represents the cursor.
inoremap ' ''<Left>
" If you press ', then the it will get printed like this:- '|' where | represents the cursor.
inoremap ` ``<Left>
" If you press `, then the it will get printed like this:- `|` where | represents the cursor.
inoremap < <><Left>
" If you press <, then the it will get printed like this:- `|` where | represents the cursor.
inoremap </ </><Left>
" If you press </, then the it will get printed like this:- </|> where | represents the cursor.
inoremap {<Space> {
" If you press {\s, then the it will get printed like this:- { where | represents the cursor.
inoremap (<Space> (
" If you press (\s, then the it will get printed like this:- ( where | represents the cursor.
inoremap [<Space> [
" If you press [\s, then the it will get printed like this:- [ where | represents the cursor.
inoremap "<Space> "
" If you press "\s, then the it will get printed like this:- " where | represents the cursor.
inoremap '<Space> '
" If you press '\s, then the it will get printed like this:- ' where | represents the cursor.
inoremap `<Space> `
" If you press `\s, then the it will get printed like this:- ` where | represents the cursor.
inoremap <<Space> <
" If you press <\s, then the it will get printed like this:- < where | represents the cursor.
inoremap {} {}
" If you press {}, then it will get printed like this:- {}| where | represents the cursor.
inoremap () ()
" If you press (), then it will get printed like this:- ()| where | represents the cursor.
inoremap [] []
" If you press [], then it will get printed like this:- []| where | represents the cursor.
inoremap "" ""
" If you press "", then it will get printed like this:- ""| where | represents the cursor.
inoremap '' ''
" If you press '', then it will get printed like this:- ''| where | represents the cursor.
inoremap `` ``
" If you press ``, then it will get printed like this:- ``| where | represents the cursor.
inoremap <> <>
" If you press <>, then it will get printed like this:- <>| where | represents the cursor.
inoremap </> </>
" If you press </>, then it will get printed like this:- </>| where | represents the cursor.
" Mappings for tabs and space conversions
" To convert spaces to tabs you press tab three times and hit enter and to convert tabs to spaces, you press space three times and hit enter.
nnoremap <Tab><Tab><Tab> :set noet\|retab!<CR>
" Pressing tab three times in normal mode makes this command appear in command mode where you just have to change the number of spaces in this command to the spaces which you represent for each tab and hit enter.
nnoremap <Space><Space><Space> :set et\|retab<CR>
" Pressing space three times in normal mode makes this command appear in command mode where you just have to change the number of spaces in this command to the spaces which you represent for each tab and hit enter
nnoremap fr :1,$s/    /\t/g
" search regex for special characters also
nnoremap rf :%s///g
" search regex for strings only
" Filetype maps
:au BufEnter,BufNew,BufNewFile *.py inoremap :<CR> :<CR><Tab>
" This is a auto-command which gets executed for python files automatically. If you press :\n, it will get printed like this:- :\n\t| where | represents the cursor.
" autoclose html tags mapping
:set omnifunc=htmlcomplete#CompleteTags
" This calls the builtin function to complete html tags.
:au FileType html,xml,xsl inoremap <C-_> <Right><Enter></<C-x><C-o><Esc>O<Tab>|map <C-_> a<C-_>|inoremap <C-_><C-_> <Right></<C-x><C-o>
" If you type a html opening tag like the following <html>| or <html|> with the cursor represented by | and if the cursor is in those positions and if you hit <ctrl + _>, then it will get printed like this:- <html> \n \t | \n </html> where | represents the cursor.
" New Tabs config
nnoremap <Tab>c :tabnew 
" Used to create new tab
nnoremap <Tab>n :tabn 
" Used to go to the tab with the number specified
nnoremap <Tab><up> :tabr<cr>
" To go to the first tab
nnoremap <Tab><down> :tabl<cr>
" To go to the last tab
nnoremap <Tab><left> :tabp<cr>
" To go to the previous tab
nnoremap <Tab><right> :tabn<cr>
" To go to the next tab


" colorscheme and config
set background=dark
" prefers dark colors for the text editor
syntax on
" turns on color highlighting of the code
syntax reset
" resets the colors for some of the highlight groups
set title
" sets title
set number
" sets numberline for the text editor
set laststatus=2
" sets statusline
set cursorcolumn
" highlights the vertical line in which the cursor is.
set cursorline
" highlights the horizontal line in which the cursor is.
set incsearch
" starts searching for the word when you enter the first character of the string
set hlsearch
" setting searchlist
set wildmenu
" setting wildmenu
set list
" it is used to define invisible characters or characters which represent your tabs, spaces, trailing-lines,etc.
set autoindent
" puts your cursor on the same indentation level as the before line
set tabstop=4
" sets tabspace
highlight clear
" clears all the highlighting set before.
" [See this link read all the matter under naming conventions category to know about highlight groups and which part of the code do they highlight](http://vimdoc.sourceforge.net/htmldoc/syntax.html)
" [Also for changing colors, replace the numbers for cterfg and ctermbg if present with your favourite ones by referring to this link](https://jonasjacek.github.io/colors/)
" Basic text
highlight Comment ctermfg=214 cterm=none
highlight Normal ctermfg=46 cterm=none
" Basic Types
highlight Constant ctermfg=226 cterm=none
highlight Number ctermfg=226 cterm=none
highlight Float ctermfg=226 cterm=none
highlight Boolean ctermfg=226 cterm=none
highlight String ctermfg=226 cterm=none
highlight Character ctermfg=226 cterm=none
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
highlight Todo ctermfg=51 ctermbg=196 cterm=none
" Vi-related
highlight Cursor ctermfg=196 ctermbg=46 cterm=none
" This highlight group is to set color for your cursor altough the cursor color has to be set in your preferences tab in the terminal to change.
highlight SpecialKey ctermfg=240 cterm=none
highlight ErrorMsg ctermfg=231 ctermbg=196 cterm=none
" This highlight group is to set color for error messages.
highlight Directory ctermfg=21 cterm=bold
" sets color for directories
highlight Search ctermfg=196 ctermbg=51 cterm=none
" sets color for search group
highlight IncSearch ctermfg=196 ctermbg=51 cterm=none
" sets color of incsearch
highlight WarningMsg ctermfg=231 ctermbg=196 cterm=none
" sets color of warning messages
highlight Visual ctermbg=59 cterm=none
" sets color for visual mode
highlight WildMenu ctermfg=231 ctermbg=46
" sets color for wildmenu
highlight CursorLine ctermbg=238 cterm=bold
" This hightlight group is to set the color for highlighting horizontal line in which you cursor lies.
highlight StatusLine ctermfg=21 ctermbg=226 cterm=bold
" sets color for statusline
highlight StatusLineNC ctermfg=21 ctermbg=226 cterm=bold
" sets color for statusline of other tabs
highlight CursorColumn ctermbg=238 cterm=bold
" This highlight group is to set the color for highlighting vertical line in which your cursor lies.
highlight LineNr cterm=bold ctermbg=226 ctermfg=21
" This highlight group is to set the color of linenumbering.
highlight NonText ctermfg=240 cterm=none
" This highlight group is for setting colors to nontext or invisible characters which replace your tabs, spaces, trailing spaces,etc.
highlight ExtraText ctermfg=196 cterm=none
" This highlight group is created by me to color all the special characters.
" Pmenu
highlight Pmenu ctermfg=16 ctermbg=46 cterm=bold
" sets color for panelmenu
highlight PmenuSel ctermfg=16 ctermbg=21 cterm=bold
" sets color for panel menu selection
" Invisible Characters
set listchars=eol:¬,tab:\|\·,trail:~,extends:>,precedes:<
" These are the characters which will replace your invisible characters like tabs spaces. Also if you want to represent all the spaces in your code with some character, you can replace this line with this code 'set listchars=eol:¬,tab:\|\·,trail:~,extends:>,precedes:<,space:~' and replace the space with whatever character you want.
" Links
highlight link TermCursor Cursor
highlight link CursorIM Cursor
highlight link CursorColumn Cursor
highlight link CursorLine Cursor
highlight link lCursor Cursor
" Keywords to be added to the ExtraText highlight group
:match ExtraText /[(){}<>.~,?/\|:;!@#$%^&*\-+\[\]="'`]/


" Special commands and Characters for copy/paste :- "¬·"
" source ~/.vim/plugins/file_name.txt
