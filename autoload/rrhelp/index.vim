" vim autoload file
" Filename:     dict.vim
" Maintainer:   janus_wel <janus.wel.3@gmail.com>
" License:      MIT License {{{1
"   See under URL.  Note that redistribution is permitted with LICENSE.
"   https://github.com/januswel/<VIMREPO>/blob/master/LICENSE

" preparations {{{1
" reset the value of 'cpoptions' for portability
let s:save_cpoptions = &cpoptions
set cpoptions&vim

" main {{{1
" constants {{{2
unlockvar rrhelp#index#dict
let rrhelp#index#dict = {
            \   'カーソルを上下に動かす': 'up-down-motions@ja',
            \   'カーソルを左右に動かす': 'left-right-motions@ja',
            \   'ウィンドウ': 'window@ja',
            \   'バッファー': 'buffer@ja',
            \}
lockvar rrhelp#index#dict

" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
