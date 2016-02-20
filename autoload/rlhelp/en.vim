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
            \   'Write a VimScript': 'usr_41.txt',
            \   'Function List': 'function-list',
            \   'Undo and Redo': '02.5',
            \   'Splitting windows': 'usr_08.txt',
            \   'Operators and motions': '04.1',
            \   'Telling where you are': '03.6',
            \   'Word movement': '03.1',
            \   'Matching a parenthesis': '03.4',
            \   'Moving to a character': '03.3',
            \   'Moving to a specific line': '03.5',
            \   'Moving around': 'usr_03.txt',
            \   'Moving to the start or end of a line': '03.2',
            \   'Using the clipboard': '04.7',
            \   'Using syntax highlighting': 'usr_06.txt',
            \   'Using the Vim tutor': 'tutor',
            \   'Copying text': '04.6',
            \   'Changing text': '04.2',
            \   'Moving text': '04.5',
            \   'Text objects': '04.8',
            \   'Visual block mode': '10.5',
            \   'Visual mode': '04.4',
            \   'Using marks': '03.10',
            \   'Replace a word': '12.1',
            \   'Using an external program': '10.9',
            \   'Changing case': '10.8',
            \   'Record and playback commands': '10.1',
            \   'Formatting text': '10.7',
            \   'Scrolling around': '03.7',
            \   'Substitution': 'find-replace',
            \   'Replace mode': '04.9',
            \   'Set your settings': 'usr_05.txt',
            \}
lockvar rlhelp#en#dict

" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
