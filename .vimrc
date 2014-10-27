"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:
" "    -> General
" "    -> VIM user interface
" "    -> Colors and Fonts
" "    -> Files and backups
" "    -> Text, tab and indent related
" "    -> Visual mode related
" "    -> Moving around, tabs and buffers
" "    -> Status line
" "    -> Editing mappings
" "    -> Helper functions
" "    -> Links
" "    -> Abreviations
" "    -> Plugins
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible		" empeche la compatibilite trop forte avec vi
set history=1000		" stocke 1000 ligne d'historique
syntax on			" coloration syntaxique
set autoread 			" relit le fichier si il a etait modifier
set mouse=a			" utilisation de la souris
set viewoptions=folds,options,cursor,unix,slash " meillieur compatibilite windows linux
set clipboard=unnamedplus
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline                  " surligne la ligne courante 
"hi cursorline guibg=#333333     " couelur du surlignage de la ligne
"hi CursorColumn guibg=#333333   " couleur du curseur

set nu                  " affiche les numeros de lignes
set wildmenu            " menu lors de l'autocompletion des cmd vim

set ignorecase			" case insensitive lors de la recherche
set smartcase			" meillieur recherches par rappart a la case
set hlsearch			" surligne le resultat de la recherche
set incsearch			" recherche circulaire

set noerrorbells		" pas de son lors d'erreur
set novisualbell		" pas de flash lors d'erreur

set showmatch			" montre la parenthese coorespondante 
set mat=2			    " nombre de seconde pour indiquer la coorespondance des ()
set showmode			" affiche le mode
set showcmd			    " affiche l'etat clavier en bas a droite
"set ruler			    " affiche le position courante
"set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set cmdheight=2			" taille de la bare de commande
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark		" de meillieur couleur sur fond noir
set encoding=utf8
set fileencoding=utf-8
set ffs=unix,dos,mac		" utilise unix comme type de fichier standar
"colorscheme molokai 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path=.,,**          "chercher ds le rep courant et les enfants

"setlocal nobomb " utf8 clean

set backupdir=~/.vim/tmp/backup " deplacer les backup 
set dir=~/.vim/tmp/swap "deplca les swap file 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab			" utilise des espaces a la place des tabulations
set smarttab			" utilisation intelligente des tab
set shiftwidth=4		" remplace une tabulation par 4 espaces
set tabstop=4			" idem
set lbr				" limite les lignes trop longue
set tw=500			" limite a 500 caractere
filetype indent on		" indentation automatique 
filetype plugin on 		" detection automatique du type de fichiers
""""""""""""""""""""""""""""""
" => Visual mode related
" """"""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Status line
" """"""""""""""""""""""""""""""
set laststatus=2
set statusline=\ %{HasPaste()}\ %F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] " [ nom ] [ format (unix,dos) [ type du fichier ] [ code asci du caractere courant ] [ code hexa du caractere courant ] [ position courante ligne colonne ] [nombre de ligne ] 
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" retourne true si le mode collage est actif
function! HasPaste()
   if &paste
        return 'PASTE MODE'
    else
       return ''
    endif
endfunction   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => links
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://amix.dk/vim/vimrc.html
" http://archive09.linux.com/feature/120126
" http://www.kywyxy.net/blog/tag/statusline/
" http://spf13.com/post/perfect-vimrc-vim-config-file/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Abreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ab ddvm dendev <ddv@awt.be>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'molokai'
Bundle 'Wombat'
Bundle 'tortex'
Bundle 'Solarized'
Bundle 'buttercream'
Bundle 'fugitive.vim'
Bundle 'The-NERD-tree'
Bundle 'SuperTab'
Bundle 'Tagbar'
Bundle 'Syntastic'
Bundle 'matchit.zip'
Bundle 'Gundo'
Bundle 'The-NERD-Commenter'
Bundle 'yaml.vim'
Bundle 'html5.vim'
Bundle 'PDV--phpDocumentor-for-Vim'
" github
Bundle 'bling/vim-airline'
Bundle 'PotatoesMaster/i3-vim-syntax'
Bundle 'plasticboy/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'modess/vim-phpcolors' 
Bundle 'AndrewRadev/vim-eco' 
"pas installer a virer 
" git
"Plugin 'git://git.wincent.com/command-t.git'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conf/Activation Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colo wombat

" airline
"Smarter tab line
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


" folding
set fdm=indent
set foldlevel=1
set foldminlines=0


" syntax automatique
au BufRead,BufNewFile *.eco set filetype=eco
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.coffe set filetype=coffee
au BufRead,BufNewFile *.json set filetype=json 

" Put at the very end of your .vimrc file.
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" syntastic
let g:syntastic_php_checkers = ['php']
