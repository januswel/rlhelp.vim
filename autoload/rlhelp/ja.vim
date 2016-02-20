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
unlockvar rlhelp#ja#dict
let rlhelp#ja#dict = {
            \   'VimScript': {
            \       'VimScriptの書き方': 'usr_41.txt',
            \       'Vim関数一覧': 'function-list',
            \   },
            \   '編集': {
            \       'シンタクスハイライトを使う': 'usr_06.txt',
            \       'アンドゥ・リドゥする': '02.5',
            \       'オペレーターとモーション': '04.1',
            \       'テキストを変更する': '04.2',
            \       'ビジュアルモード': '04.4',
            \       'テキストを移動する': '04.5',
            \       'テキストをコピーする': '04.6',
            \       'クリップボードを使う': '04.7',
            \       'テキストオブジェクト': '04.8',
            \       '置換モード': '04.9',
            \       '操作を記録する': '10.1',
            \       'ビジュアルブロックモードを使う': '10.5',
            \       '文章を整形する': '10.7',
            \       '大文字小文字を切り替える': '10.8',
            \       '単語を置換する': '12.1',
            \       '置換する': 'find-replace',
            \   },
            \   'ウィンドウ': {
            \       'ウィンドウをわける': 'usr_08.txt',
            \   },
            \   '移動': {
            \       'カーソルを移動する': 'usr_03.txt',
            \       'カーソルを単語ごとに移動する': '03.1',
            \       'カーソルを行の前後に移動する': '03.2',
            \       'カーソルを特定の文字に移動する': '03.3',
            \       'カーソルを対応する括弧に移動する': '03.4',
            \       'カーソルを特定の行に移動する': '03.5',
            \       'カーソルがファイルのどこにあるか表示する': '03.6',
            \       '画面をスクロールする': '03.7',
            \       'マークを使う': '03.10',
            \   },
            \   '初心者': {
            \       'チュートリアルを開始する': 'tutor',
            \   },
            \   '外部連携': {
            \       '外部のプログラムを使う': '10.9',
            \   },
            \   '設定': {
            \       '設定を変更する': 'usr_05.txt',
            \   },
            \}
lockvar rlhelp#ja#dict

" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
