"1 -- Plugins

execute pathogen#infect() 	

"let g:vim_markdown_folding_disabled = 1	"Disables the folding feature in in vim-markdown plugin.

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let NERDTreeDirArrows = 0

let g:startify_custom_header = 
			\ map(split(system('fortune -s | cowthink'), '\n'), '"   ". v:val') + ['',''] 			"Displays a cowsay message with fortune in vim-startify.
let g:startify_custom_footer =
                        \ [''] + map(split(system('date -R'), '\n'), '"   ". v:val') + [''] + map(split(system('lsb_release -a | tail -n 3'), '\n'), '"   ". v:val') + ['']    "Displays the OS release name and version in vim-startify. 

let g:startify_bookmarks = ['/etc/apache2/apache2.conf'] 			"Hard-coded vim-startify bookmarks. 
let g:startify_session_delete_buffers = 1                                       "Deletes any session file buffers when a session is loaded. 

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

"2 -- General

filetype plugin on              "Allows plugins to be enabled based on file types.  
filetype indent on              "Enables indentation based on file types. 

set nocompatible		"Turns off vi compatibility allowing all features of vim to be enabled. 
set history=500 		"Increases amount of commands stored in :cmdline history to 500.
set undolevels=500              "Remember much more undo levels. 
set showmode            	"Show current mode at the bottom of the screen.  

"3 -- Themes & Colours

set t_Co=256		"Enables 256-color mode. 
colorscheme onedark     "Enables One Dark Atom editor style colour scheme. 
"colorscheme desertink  "Enables the Desert Ink colour scheme.
syntax enable   	"Enables syntax highlighting.

"4 -- UI

set number		"Enables line numbers. 
set ignorecase  	"Makes searches case-insensitive. 
set wildmenu    	"Enables auto-completion options to be dsiplayed in a horizontal bar.
set hlsearch    	"Highlights search results.

set laststatus=2        "Always show the status line.

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ Type:\ %y\ CWD:\ %r%{getcwd()}%h\ \ Line:\ %l/%L\ 

set statusline+=\ %=%#warningmsg#
set statusline+=\ %=%{SyntasticStatuslineFlag()}
set statusline+=\ %=%*

"5 -- Formatting & Layout

set nowrap			"Disables text wrapping
set ffs=unix,dos,mac            "Use Unix as the standard file type.
set spelllang=en_gb             "Enable English - Great British spell checking.

"6 -- Remapping & Keybindings

"Allows turning spell checking on and off with leader then s key. 
nmap <silent> <leader>s :set spell!<CR>

"Spacebar can now be used to open/close a folded section with this binding.
nnoremap <Space> za     	 

"These next four lines disable the arrow keys. 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"7 -- Misc.

autocmd BufReadPost *						"Return to last edited position when opening files.
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif 

"8 -- Helper Functions

function! HasPaste()		"Returns true if paste mode is enabled. 
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction