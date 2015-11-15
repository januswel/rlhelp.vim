" vim plugin file
" Filename:     rrhelp.vim
" Maintainer:   janus_wel <janus.wel.3@gmail.com>
" License:      MIT License {{{1
"   See under URL.  Note that redistribution is permitted with LICENSE.
"   https://github.com/januswel/<VIMREPO>/blob/master/LICENSE

" preparations {{{1
" check if this plugin is already loaded or not
if exists('loaded_rrhelp')
    finish
endif
let loaded_rrhelp = 1

" reset the value of 'cpoptions' for portability
let s:save_cpoptions = &cpoptions
set cpoptions&vim

" main {{{1
" commands {{{2
" use exists() to check the command is already defined or not
" return value 2 tells that the command matched completely exists
if exists(':RRHelp') != 2
    command -complete=customlist,<SID>RRHelpCompleter -nargs=1 RRHelp call <SID>ShowRRHelp("<args>")
endif

" consts {{{2
unlockvar s:complete_list
let s:complete_list = {
            \   'カーソルを上下に動かす': 'up-down-motions@ja',
            \   'カーソルを左右に動かす': 'left-right-motions@ja',
            \   'ウィンドウ': 'window@ja',
            \   'バッファー': 'buffer@ja',
            \}
lockvar s:complete_list


" functions {{{2
function! s:RRHelpCompleter(ArgLead, CmdLine, CursorPos)
    return sort(filter(keys(s:complete_list), 'v:val =~ "^' . a:ArgLead . '"'))
endfunction

function! s:ShowRRHelp(key)
    let candidates = sort(keys(filter(copy(s:complete_list), 'v:key =~ "' . a:key . '"')))

    if empty(candidates)
        echoerr a:key . ' is not found in index'
        return
    endif

    silent execute 'help ' . s:complete_list[candidates[0]]
endfunction


" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
