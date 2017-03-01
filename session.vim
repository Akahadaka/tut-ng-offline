let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/tutorials.dev/angular.dev/offline
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +5 src/app/app.module.ts
badd +0 src/app/app.component.scss
badd +0 src/app/app.component.html
badd +1 src/app/app.component.ts
badd +1 src/styles.scss
argglobal
silent! argdel *
set stal=2
edit src/app/app.module.ts
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 20 - ((19 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 026|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/src/styles.scss
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/app.component.ts
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 10 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 54 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/app.component.html
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/app.component.scss
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app
wincmd w
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 10 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 54 + 102) / 204)
tabnext 1
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=10 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
