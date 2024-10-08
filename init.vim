" ---------------------------------------------------------
" |                                                       |
" |   ███    ██ ███████  ██████  ██    ██ ██ ███    ███   |
" |   ████   ██ ██      ██    ██ ██    ██ ██ ████  ████   |
" |   ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██   |
" |   ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██   |
" |   ██   ████ ███████  ██████    ████   ██ ██      ██   |
" |                         minkyeki@student.42seoul.kr   |
" |                                                       |
" ---------------------------------------------------------


" ---------------------------------------------------------
" |  WARNING:  Dependencies for Plugin installation       |
" ---------------------------------------------------------
" (1) Install Node.js for coc 
"     : brew install node
"
" (2) Install ripgrep for Telescope.live_grep
"     : brew install ripgrep
"
" (3) FIX: For coc-flutter development
"     : run <TSUninstall dart> + <CocInstall coc-flutter>
"     : 현재 Tree-sitter dart에서 Segfault 발생함.

" (4) FIX: For <CR> (= pressing Enter) to invoke coc-autocompletion-select
"     : 1. :verbose imap <CR>   --> check mapping status.
"     : 2. delete evrey <CR> key maps set by other plugins.
"          (ex. pear-tree)
"
" (5) FIX: AutoCmd 실행 시 <hover-not-found> 메시지 출력 안되도록 설정
"     : 1. coc-config.json 파일에 아래와 같이 추가한다. (따옴표도 넣기)
         " <"coc.preferences.messageLevel" : error>

" --------------------------------------------------------
" |   General Key Settings                               |
" --------------------------------------------------------

" NOTE: Coc Key
" -----------------------------------------------
" <Enter>              : Coc Autocompletion Select
" <Shift+c>            : Toggle CocList Command-list
" <Shift+k>            : pop-up documentation on cursor
" <Ctrl+s>             : Range select
" <(,)+(a)> + Enter    :coc.code_action (including flutter)
" <gd>                 : go to function definition
" <gy>                 : go to type-definition
" <gi>                 : go to implementation
" <gr>                 : go to help_tags
" <=>                  : coc-format-selected (기존 auto indent)


" NOTE: NERD-Tree Key +  Tagbar
" -----------------------------------------------
" WARNING: to represh nerdtree, press <r>
" <F9>                 : toogle nerdtree (left window) 
" <F10>                : toogle tagbar   (right window) 
" <s>                  : vertical split
" <i>                  : horizontal split

" NOTE: Telescope Key
" -----------------------------------------------
" <Ctrl+f>             : Telescope find-files
" <Ctrl+d>             : Telescope file-browser (directory)
" <Ctrl+g>             : Telescope live_grep

" <Enter>              : Select and open in a new tab
" <C-t>                : Go to a file in a new tab
" <C-x>                : Go to file selection as a split
" <C-v>                : Go to file selection as a vsplit

" <leader> fg          : Telescope live_grep<cr>
" <leader> fb          : Telescope buffers
" <leader> fh          : Telescope help

" NOTE: Gerneral Key
" -----------------------------------------------
" <F3>                 : toggle paste mode
" <,q>                 : nerdtree + air-line -> open prev file
" <,w>                 : nerdtree + air-line -> open next file

" NOTE: Comment
" -----------------------------------------------
" ,c<space>            : toggle NERD-normal-Comment
" ,cs                  : toggle NERD-Sexy-Comment
"
" [Available Comment TODOs]
" -  NOTE: 
" -  TODO:
" -  WARNING: 
" -  WARN:
" -  FIXME:
" -  FIX:
" -  PERF: 
" -  HACK:










" ---------------------------------
" |  Default Settings for NeoVim  |
" --------------------------------- 
"
" (중요) Todo Comment Lua 에러 발생은 ctrl+c 키맵 설정 때문이므로  아래 코드가 필수다.
inoremap <C-c> <C-c>
set t_u7=
let mapleader = ","      " changing default leader-key <\> to <,>
set encoding=utf-8
set fileencodings=utf-8,cp949 "utf-8이 실패하면, cp949(en)로 인코딩
set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set mouse+=a
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set autoindent " 자동 들여쓰기
set cindent " C언어 자동 들여쓰기
set smartindent "스마트한 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
set visualbell " 키 잘못 누르면 화면 프레시
set clipboard=unnamed " if LINUX, use unamedplus. (else use unamed) this sets default paste buffer to X's clipboard
set pastetoggle=<F3>  " 복사 붙여넣기 모드 Toogle = <F3> --> 복붙시 계단현상 방지
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch " 점진적 검색
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set t_Co=256 " 숫자 256의 color 표현 (8bit)

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 구문 강조 사용
if has("syntax")
 syntax on
endif

"  cursor diff in insert mode & normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

nnoremap <leader>q :bp<CR>  	 
nnoremap <leader>w :bn<CR>


"  NOTE: Solution to caplock problem     
"------------------------------------
" For MacOS
" https://stackoverflow.com/questions/127591/using-caps-lock-as-esc-in-mac-os-x
" -> use system preference -> turn of CAPSLOCK
" For linux
" https://vim.fandom.com/wiki/Insert-mode_only_Caps_Lock         

" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor

" Kill the capslock when leaving insert mode.
autocmd InsertLeave * set iminsert=0



"  NOTE: Plugin Settings for NeoVim      
"-------------------------------------------------------------------------
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes


" Advanced Syntax highlight with tree-sitter parser
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'    " additional Syntax Highlite plugin

" Auto Pair () {} []
Plug 'tmsvg/pear-tree'          " 괄호를 자동으로 닫아주는 플러그인

" Error Checking Engin
Plug 'vim-syntastic/syntastic'

" Auto Completion + Error checking (with LSP)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'airblade/vim-gitgutter'   " vim with git status(added, modified, and removed lines)
Plug 'tpope/vim-fugitive'       " vim with git command(e.g., Gdiff)

" NerdTree + Tagbar
Plug 'majutsushi/tagbar'        " for ctag view window
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' " nerdtree installation
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Comments
Plug 'preservim/nerdcommenter'  " NERDComment plugin
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

" Fuzzy Finder
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Indent line
Plug 'Yggdroot/indentLine'

" Focus active window
Plug 'blueyed/vim-diminactive'

" Information line
Plug 'itchyny/lightline.vim'
Plug 'romgrk/barbar.nvim'

" Color Theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Rainbow Bracket
Plug 'luochen1990/rainbow'

" Icon Plugins
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'bryanmylee/vim-colorscheme-icons'

" 42 Plugins
Plug '42Paris/42header'

" ASM Syntax Highlight
Plug 'shirk/vim-gas'


" Add below...




" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"------------------------------------------------------------------

" NOTE: NASM filetype setting
" ---------------------------------
augroup nasm_ft
  au!
  autocmd BufNewFile,BufRead *.s set filetype=nasm
  autocmd BufNewFile,BufRead *.asm set filetype=nasm
augroup END



" NOTE: Theme setting
" ---------------------------------
colorscheme onehalfdark
if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" Rainbow bracket
let g:rainbow_active = 1


" NOTE: Todo comments setting
" ---------------------------------
lua << EOF
require("todo-comments").setup {
	}
EOF


" NOTE: NERDComment plugin setting
" ---------------------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping for NerdCommenter
map <Leader>c<space> 	<plug>NERDCommenterToggle
map <Leader>cs 		<plug>NERDCommenterSexy


" NOTE: Vim indentline
" ---------------------------------
set list lcs=tab:\¦\ 


" NOTE: for ctags
" ---------------------------------
map <c-]> g<c-]>
set tags=tags;


" NOTE: for NERDTree <F9>
" ---------------------------------
nmap <F9> :NERDTreeToggle<CR>  
let g:NERDTreeWinSize=40
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" NOTE: for tagbar <F12>
" ---------------------------------
nmap <F10> :TagbarToggle<CR>  
let g:tagbar_width=30  " 태그바 넓이 설정
set laststatus=2 " turn on bottom bar


" NOTE: for diminactive + pear_tree_repeatable_expand
" ---------------------------------
" for blueyed/vim-diminactive 이 플러그인은 현재 커서의 포커스가 있는 창을 표시합니다
let g:diminactive_enable_focus = 1
" pear-tree 자동 괄호 완성 플러그인
let g:pear_tree_repeatable_expand = 0 "오른쪽 제거 기능을 끔"


" NOTE: lightline Config
" ---------------------------------
set noshowmode "vim airline 플러그인에서 모드를 알려주기 때문에 해제합니다.
let g:lightline = { 
	  \ 'colorscheme': 'onehalfdark',
	  \ 'enable': {'statusline': 1, 'tabline': 0},
	  \ 'component_function': {
	                        \  'gitbranch': 'fugitive#head'
                            \ },
	  \ 'component_type': {
				        \  'buffers': 'tabsel'
				        \ },
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ],
	  \             [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
	  \ }}


" NOTE: Barbar Config
"-------------------------------
let g:barbar_auto_setup = v:false " disable auto-setup
lua << EOF
  require'barbar'.setup {
  -- WARN: do not copy everything below into your config!
  --       It is just an example of what configuration options there are.
  --       The defaults are suitable for most people.

  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},

  -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
  -- Valid options are 'left' (the default), 'previous', and 'right'
  focus_on_close = 'left',

  -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
  hide = {extensions = true, inactive = true},

  -- Disable highlighting alternate buffers
  highlight_alternate = false,

  -- Disable highlighting file icons in inactive buffers
  highlight_inactive_file_icons = false,

  -- Enable highlighting visible buffers
  highlight_visible = true,

  icons = {
    -- Configure the base icons on the bufferline.
    -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
    buffer_index = false,
    buffer_number = false,
    button = '',
    -- Enables / disables diagnostic symbols
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
      [vim.diagnostic.severity.WARN] = {enabled = false},
      [vim.diagnostic.severity.INFO] = {enabled = false},
      [vim.diagnostic.severity.HINT] = {enabled = true},
    },
    gitsigns = {
      added = {enabled = true, icon = '+'},
      changed = {enabled = true, icon = '~'},
      deleted = {enabled = true, icon = '-'},
    },
    filetype = {
      -- Sets the icon's highlight group.
      -- If false, will use nvim-web-devicons colors
      custom_colors = false,

      -- Requires `nvim-web-devicons` if `true`
      enabled = true,
    },
    separator = {left = '▎', right = ''},

    -- If true, add an additional separator at the end of the buffer list
    separator_at_end = true,

    -- Configure the icons on the bufferline when modified or pinned.
    -- Supports all the base icon options.
    modified = {button = '●'},
    pinned = {button = '', filename = true},

    -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
    preset = 'default',

    -- Configure the icons on the bufferline based on the visibility of a buffer.
    -- Supports all the base icon options, plus `modified` and `pinned`.
    alternate = {filetype = {enabled = false}},
    current = {buffer_index = true},
    inactive = {button = '×'},
    visible = {modified = {buffer_number = false}},
  },

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the minimum padding width with which to surround each tab
  minimum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- Sets the minimum buffer name length.
  minimum_length = 0,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- Set the filetypes which barbar will offset itself for
  sidebar_filetypes = {
    -- Use the default values: {event = 'BufWinLeave', text = nil}
    NvimTree = true,
    -- Or, specify the text used for the offset:
    undotree = {text = 'undotree'},
    -- Or, specify the event which the sidebar executes when leaving:
    ['neo-tree'] = {event = 'BufWipeout'},
    -- Or, specify both
    Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
  },

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustment
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}
EOF


" FIX: for Syntastic Error Checking Engine --> Deprecated!
" ---------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = "-std=c++98 -Wall -Wextra -Werror"
let g:syntastic_c_compiler_options = "-std=gnu99 -Wall -Wextra -Werror"
let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 1
let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_cpp_remove_include_errors = 1
highlight link SyntasticError SpellBad
highlight link SyntasticWarning SpellCap


" NOTE: CoC Autocompletion + explorer Setings.
" ---------------------------------
let b:coc_diagnostic_disable = 1
" If you have dart-vim-plugin install, put this in your vimrc
let g:dart_format_on_save = 1

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" 커서 사라짐 문제 해결.
let g:coc_disable_transparent_cursor = 1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-html', 'coc-sh', 'coc-cmake', 'coc-git', 'coc-clangd', 'coc-markdownlint']

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"NOTE : 여기서 Cursor Hover 세팅 --------------------------------
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
"WARNING: 만약 <no hover> 메시지가 버퍼에 계속 출력된다면...
"WARNING: init.vim 최상단에 해결법을 적어두었으니 참고.
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
" (1) 입력 모드에서 특정 시간 동안 아무 키도 눌러지지 않을 때.
autocmd CursorHoldI * silent call CocActionAsync('highlight')
" (2) 특정 시간 동안 아무 것도 눌러지지 않을 때
" autocmd CursorHold * silent call ShowDocumentation()
"NOTE: ----------------------------------------------- End -------

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" FIX: nvim 자체 포맷팅과 겹치는 문제 발생해서 그냥 끔.
" xmap =  <Plug>(coc-format-selected)
" nmap =  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" Note: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" Note: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> C         :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" NOTE:-Tree Sitter Syntax Highlight 
" ---------------------------------
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "markdown"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF


" NOTE: Terminal plugin
" ---------------------------------
" No use...



" NOTE: Telescope Fuzzy Finder
" ---------------------------------
" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-d> <cmd>Telescope file_browser<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>

nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" <설정 참고>
" https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#mapping-esc-to-quit-in-insert-mode

lua <<EOF
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
		["<CR>"] = require('telescope.actions').select_default
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker

      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
	file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
require("telescope").load_extension "file_browser"
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
  { noremap = true }
)
EOF
