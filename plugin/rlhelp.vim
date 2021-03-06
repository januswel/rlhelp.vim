" vim plugin file
" Filename:     rlhelp.vim
" Maintainer:   janus_wel <janus.wel.3@gmail.com>
" License:      MIT License {{{1
"   See under URL.  Note that redistribution is permitted with LICENSE.
"   https://raw.githubusercontent.com/januswel/rlhelp.vim/master/LICENSE

" preparations {{{1
" check if this plugin is already loaded or not
if exists('loaded_rlhelp')
    finish
endif
let loaded_rlhelp = 1

" reset the value of 'cpoptions' for portability
let s:save_cpoptions = &cpoptions
set cpoptions&vim

" main {{{1
" commands {{{2
" use exists() to check the command is already defined or not
" return value 2 tells that the command matched completely exists
if exists(':RLHelp') != 2
    command -complete=customlist,<SID>RLHelpCompleter -nargs=+ -bang RLHelp
                \ call <SID>ShowRLHelp('<bang>', <f-args>)
endif

" functions {{{2
function! s:GetDict()
    let langs = split(&helplang, ',')
    for lang in langs
        try
            return eval('g:rlhelp#' . lang . '#dict')
        catch /.*/
            " nop
        endtry
    endfor
    " if no dict is hit, use en dict
    return eval('g:rlhelp#en#dict')
endfunction

function! s:RLHelpCompleter(ArgLead, CmdLine, CursorPos)
    let dict = s:GetDict()
    let commands = split(a:CmdLine)
    let numof_commands = len(commands)

    " detail items
    if (3 <= numof_commands || (numof_commands == 2 && a:CmdLine =~ '\s\+$'))
        let category = commands[1]
        if (!has_key(dict, category))
            echoerr category . ' is not found in categories'
            return
        endif

        return sort(filter(keys(dict[category]), 'v:val =~ "^' . a:ArgLead . '"'))
    endif

    " category list
    return sort(filter(keys(dict), 'v:val =~ "^' . a:ArgLead . '"'))
endfunction

function! s:ShowRLHelp(bang, category, item)
    let dict = s:GetDict()
    let candidates = sort(keys(filter(copy(dict[a:category]), 'v:key =~ "' . a:item . '"')))

    if empty(candidates)
        echoerr a:item . ' is not found in index'
        return
    endif

    if a:bang ==# '!'
        let tabcmd = 'tab '
    else
        let tabcmd = ''
    endif

    silent execute tabcmd . 'help ' . dict[a:category][candidates[0]]
endfunction


" post-processings {{{1
" restore the value of 'cpoptions'
let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions

" }}}1
" vim: ts=4 sw=4 sts=0 et fdm=marker fdc=3
