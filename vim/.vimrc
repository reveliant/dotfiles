" .vimrc
" author: Rémi Dubois

" auto read when file changed outside
set autoread

" line numbering
set number ruler

" tabs and indents
set smarttab
set tabstop=4
set shiftwidth=4
filetype indent on
"set autoindent smartindent

" autobreak long lines
set linebreak
set textwidth=500

" searching
set smartcase
set hlsearch
set incsearch

" colors and fonts
syntax enable
syntax sync fromstart
colorscheme molokai
set t_Co=256
set background=dark
"set list
"set listchars=tab:╽\ ,trail:╼,extends:»,precedes:«,nbsp:×

" standards file type and encoding
set encoding=utf-8
set fileformats=unix,dos,mac

" backup files
set nobackup
set nowb
set noswapfile

" comments folding
set foldenable!
set foldlevelstart=1
set foldmethod=syntax
"set foldmethod=expr
"set foldexpr=getline(v:lnum)=~'^\\s*#'?1":getline(prevnonblank(v:lnum))=~'^\\s*#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0

" languages-specific rules
let g:php_sql_query=1
let g:php_htmlInStrings=1
let g:php_parent_error_close=1
let g:php_folding=1
let g:sh_fold_enabled=1
let g:tex_fold_enabled=1
let g:xml_syntax_folding=1
let g:javaScript_fold=1
let g:perl_fold=1
let g:ruby_fold=1

" theme-specific rules
let g:zenburn_high_Contrast = 1
let g:liquidcarbon_high_contrast = 1
let g:molokai_original = 1
let g:Powerline_symbols = 'compatible'
let g:Powerline_cache_enabled = 1
let g:Powerline_cache_file = expand('$TMP/Powerline.cache')

