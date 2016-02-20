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
unlockvar rlhelp#en#dict
let rlhelp#en#dict = {
            \   'VimScript': {
            \       'Write-a-VimScript': 'usr_41.txt',
            \       'Function-List': 'function-list',
            \   },
            \   'Edit': {
            \       'Using-syntax-highlighting': 'usr_06.txt',
            \       'Undo-and-Redo': '02.5',
            \       'Operators-and-motions': '04.1',
            \       'Changing-text': '04.2',
            \       'Visual-mode': '04.4',
            \       'Moving-text': '04.5',
            \       'Copying-text': '04.6',
            \       'Using-the-clipboard': '04.7',
            \       'Text-objects': '04.8',
            \       'Replace-mode': '04.9',
            \       'Record-and-playback-commands': '10.1',
            \       'Visual-block-mode': '10.5',
            \       'Formatting-text': '10.7',
            \       'Changing-case': '10.8',
            \       'Replace-a-word': '12.1',
            \       'Substitution': 'find-replace',
            \   },
            \   'Window': {
            \       'Splitting-windows': 'usr_08.txt',
            \   },
            \   'Move': {
            \       'Moving-around': 'usr_03.txt',
            \       'Word-movement': '03.1',
            \       'Moving-to-the-start-or-end-of-a-line': '03.2',
            \       'Moving-to-a-character': '03.3',
            \       'Matching-a-parenthesis': '03.4',
            \       'Moving-to-a-specific-line': '03.5',
            \       'Telling-where-you-are': '03.6',
            \       'Scrolling-around': '03.7',
            \       'Using-marks': '03.10',
            \   },
            \   'Novice': {
            \       'Using-the-Vim-tutor': 'tutor',
            \   },
            \   'External': {
            \       'Using-an-external-program': '10.9',
            \   },
            \   'Pref': {
            \       'Set-your-settings': 'usr_05.txt',
            \   },
            \}
lockvar rlhelp#en#dict

" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
