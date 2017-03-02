let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/tutorials.dev/angular.dev/offline
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +20 src/app/app.module.ts
badd +0 src/app/app.component.scss
badd +0 src/app/app.component.html
badd +1 src/app/app.component.ts
badd +1 src/styles.scss
badd +13 src/index.html
badd +13 .angular-cli.json
badd +13 package.json
badd +9 swconfig.js
badd +0 src/manifest.json
badd +22 src/tsconfig.app.json
badd +0 src/service-worker.js
badd +7 src/firebase.config.json
badd +22 src/app/auth/auth.module.ts
badd +0 auth/auth.module.ts
badd +1 src/app/auth/auth.service.ts
badd +0 src/app/auth/auth.routes.ts
badd +0 src/app/auth/components/login/login.component.scss
badd +0 src/app/auth/components/login/login.component.html
badd +25 src/app/auth/components/login/login.component.ts
badd +0 src/app/app.routes.ts
argglobal
silent! argdel *
set stal=2
edit src/app/auth/auth.module.ts
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 65 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 24 - ((23 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 024|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/app.module.ts
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app
wincmd w
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 65 + 102) / 204)
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
let s:l = 13 - ((12 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 020|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/auth.service.ts
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
let s:l = 11 - ((10 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 038|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/auth.routes.ts
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 97 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 106 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 18 - ((17 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/app.routes.ts
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 16 - ((15 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 056|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app
wincmd w
exe 'vert 1resize ' . ((&columns * 97 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 106 + 102) / 204)
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/src/manifest.json
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
exe 'vert 1resize ' . ((&columns * 86 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 10 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 106 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
3
normal! zo
let s:l = 4 - ((3 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 045|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/index.html
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 10 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 045|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/styles.scss
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
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 10 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 106 + 102) / 204)
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/package.json
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 65 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
1
normal! zo
let s:l = 13 - ((12 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 09|
lcd ~/Workspace/tutorials.dev/angular.dev/offline
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/.angular-cli.json
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
1
normal! zo
6
normal! zo
7
normal! zo
let s:l = 13 - ((12 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 027|
lcd ~/Workspace/tutorials.dev/angular.dev/offline
wincmd w
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 65 + 102) / 204)
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/swconfig.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 65 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 10 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 029|
lcd ~/Workspace/tutorials.dev/angular.dev/offline
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/package.json
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 19 - ((17 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 024|
lcd ~/Workspace/tutorials.dev/angular.dev/offline
wincmd w
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 65 + 102) / 204)
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
exe 'vert 2resize ' . ((&columns * 54 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 10 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 9 - ((8 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
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
exe 'vert 2resize ' . ((&columns * 54 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 10 + 102) / 204)
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/components/login/login.component.ts
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
exe 'vert 2resize ' . ((&columns * 25 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 39 + 102) / 204)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 25 - ((15 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 043|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/components/login
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/components/login/login.component.html
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 19 - ((18 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 08|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/components/login
wincmd w
argglobal
edit ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/components/login/login.component.scss
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 46 - ((4 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 020|
lcd ~/Workspace/tutorials.dev/angular.dev/offline/src/app/auth/components/login
wincmd w
exe 'vert 1resize ' . ((&columns * 138 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 25 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 39 + 102) / 204)
tabedit ~/Workspace/tutorials.dev/angular.dev/offline/.angular-cli.json
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
1
normal! zo
6
normal! zo
7
normal! zo
let s:l = 25 - ((24 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 018|
lcd ~/Workspace/tutorials.dev/angular.dev/offline
tabnext 10
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=2 winwidth=25 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
