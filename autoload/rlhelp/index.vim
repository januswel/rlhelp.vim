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
unlockvar rlhelp#index#dict
let rlhelp#index#dict = {
            \   'ウィンドウをわける': 'usr_08.txt',
            \   'カーソルを移動する': 'usr_03.txt',
            \   'シンタクスハイライトを使う': 'usr_06.txt',
            \   'ビジュアルブロックモードを使う': '10.5',
            \   '単語を置換する': '12.1',
            \   '外部のプログラムを使う': '10.9',
            \   '大文字小文字を切り替える': '10.8',
            \   '操作を記録する': '10.1',
            \   '文章を整形する': '10.7',
            \   '置換する': 'find-replace',
            \   '設定を変更する': 'usr_05.txt',
            \}
lockvar rlhelp#index#dict

" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
