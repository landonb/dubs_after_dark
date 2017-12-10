" File: dubs_appearance.vim
" Author: Landon Bouma (landonb &#x40; retrosoft &#x2E; com)
" Last Modified: 2017.12.09
" Project Page: https://github.com/landonb/dubs_appearance
" Summary: Nighttime! Complete Vim highlight file
" License: GPLv3
" vim:tw=0:ts=2:sw=2:et:norl:ft=vim
" ----------------------------------------------------------------------------
" Copyright © 2017 Landon Bouma.
"
" This file is part of Dubsacks.
"
" Dubsacks is free software: you can redistribute it and/or
" modify it under the terms of the GNU General Public License
" as published by the Free Software Foundation, either version
" 3 of the License, or (at your option) any later version.
"
" Dubsacks is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty
" of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
" the GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with Dubsacks. If not, see <http://www.gnu.org/licenses/>
" or write Free Software Foundation, Inc., 51 Franklin Street,
"                     Fifth Floor, Boston, MA 02110-1301, USA.
" ===================================================================

" User-tweakable settings.
"
" So far, just the background is tweakable.
"
" Obviously, you could just as easily copy
" this file and make your own color, so it
" does not aim to be very configurable.

if !exists("g:dubs_after_dark_background")
  let g:dubs_after_dark_background = "060606"
endif

" NOTE: This function is not run; it's just for reference.
function! s:Color__After_Dark__Reference__Vanilla_Gvim()
  " These are the defaults highlights from stock Vim.
  " To generate, starting from Vanilla gVim:
  "   $ gvim --noplugin
  " And run the following Vim commands to get the highlights:
  "   highlight clear
  "   set background=dark
  "   set termguicolors
  "   highlight Normal gui=NONE guifg=White guibg=#060606 ctermfg=White ctermbg=none
  "   redir => message
  "   silent hi
  "   redir END
  "   silent put=message
  highlight SpecialKey term=bold ctermfg=9 guifg=Cyan
  highlight link EndOfBuffer NonText
  highlight NonText term=bold ctermfg=9 gui=bold guifg=Blue
  highlight Directory term=bold ctermfg=11 guifg=Cyan
  highlight ErrorMsg term=standout ctermfg=15 ctermbg=4 guifg=White guibg=Red
  highlight IncSearch term=reverse cterm=reverse gui=reverse
  highlight Search term=reverse ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
  highlight MoreMsg term=bold ctermfg=10 gui=bold guifg=SeaGreen
  highlight ModeMsg term=bold cterm=bold gui=bold
  highlight LineNr term=underline ctermfg=14 guifg=Yellow
  highlight CursorLineNr term=bold ctermfg=14 gui=bold guifg=Yellow
  highlight Question term=standout ctermfg=10 gui=bold guifg=Green
  highlight StatusLine term=bold,reverse cterm=bold,reverse gui=bold,reverse
  highlight StatusLineNC term=reverse cterm=reverse gui=reverse
  highlight VertSplit term=reverse cterm=reverse gui=reverse
  highlight Title term=bold ctermfg=13 gui=bold guifg=Magenta
  highlight Visual term=reverse cterm=reverse guibg=DarkGrey
  highlight VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
  highlight WarningMsg term=standout ctermfg=12 guifg=Red
  highlight WildMenu term=standout ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
  highlight Folded term=standout ctermfg=11 ctermbg=8 guifg=Cyan guibg=DarkGrey
  highlight FoldColumn term=standout ctermfg=11 ctermbg=8 guifg=Cyan guibg=Grey
  highlight DiffAdd term=bold ctermbg=1 guibg=DarkBlue
  highlight DiffChange term=bold ctermbg=5 guibg=DarkMagenta
  highlight DiffDelete term=bold ctermfg=9 ctermbg=3 gui=bold guifg=Blue guibg=DarkCyan
  highlight DiffText term=reverse cterm=bold ctermbg=12 gui=bold guibg=Red
  highlight SignColumn term=standout ctermfg=11 ctermbg=8 guifg=Cyan guibg=Grey
  highlight Conceal ctermfg=7 ctermbg=8 guifg=LightGrey guibg=DarkGrey
  highlight SpellBad term=reverse ctermbg=12 gui=undercurl guisp=Red
  highlight SpellCap term=reverse ctermbg=9 gui=undercurl guisp=Blue
  highlight SpellRare term=reverse ctermbg=13 gui=undercurl guisp=Magenta
  highlight SpellLocal term=underline ctermbg=11 gui=undercurl guisp=Cyan
  highlight Pmenu ctermfg=0 ctermbg=13 guibg=Magenta
  highlight PmenuSel ctermfg=8 ctermbg=0 guibg=DarkGrey
  highlight PmenuSbar ctermbg=7 guibg=Grey
  highlight PmenuThumb ctermbg=15 guibg=White
  highlight TabLine term=underline cterm=underline ctermfg=15 ctermbg=8 gui=underline guibg=DarkGrey
  highlight TabLineSel term=bold cterm=bold gui=bold
  highlight TabLineFill term=reverse cterm=reverse gui=reverse
  highlight CursorColumn term=reverse ctermbg=8 guibg=Grey40
  highlight CursorLine term=underline cterm=underline guibg=Grey40
  highlight ColorColumn term=reverse ctermbg=4 guibg=DarkRed
  highlight link QuickFixLine Search
  highlight StatusLineTerm term=bold,reverse cterm=bold ctermfg=0 ctermbg=10 gui=bold guifg=bg guibg=LightGreen
  highlight StatusLineTermNC term=reverse ctermfg=0 ctermbg=10 guifg=bg guibg=LightGreen
  highlight Cursor guifg=bg guibg=fg
  highlight lCursor guifg=bg guibg=fg
  highlight MatchParen term=reverse ctermbg=3 guibg=DarkCyan
  highlight Normal ctermfg=15 guifg=White guibg=#060606
  highlight ToolbarLine term=underline ctermbg=8 guibg=Grey50
  highlight ToolbarButton cterm=bold ctermfg=0 ctermbg=7 gui=bold guifg=Black guibg=LightGrey
endfunction

" NOTE: This function is not run; it's just for reference.
function! s:Color__After_Dark__Reference__Base_Dubsacks()
  " 2017-12-09: If you run gVim without '--noplugin' and then generate clear
  " highlights and look at the list of highlights, you'll see the same defaults
  " as recorded Color__After_Dark__Reference__Vanilla_Gvim(), and these additional:
  highlight Comment term=bold ctermfg=11 guifg=#80a0ff
  highlight Constant term=underline ctermfg=13 guifg=#ffa0a0
  highlight Special term=bold ctermfg=12 guifg=Orange
  highlight Identifier term=underline cterm=bold ctermfg=11 guifg=#40ffff
  highlight Statement term=bold ctermfg=14 gui=bold guifg=#ffff60
  highlight PreProc term=underline ctermfg=9 guifg=#ff80ff
  highlight Type term=underline ctermfg=10 gui=bold guifg=#60ff60
  highlight Underlined term=underline cterm=underline ctermfg=9 gui=underline guifg=#80a0ff
  highlight Ignore ctermfg=0 guifg=bg
  highlight Error term=reverse ctermfg=15 ctermbg=12 guifg=White guibg=Red
  highlight Todo term=standout ctermfg=0 ctermbg=14 guifg=Blue guibg=Yellow
endfunction

" This function sets the highlights for Dubs After Dark.
"   2017-12-09 (landonb): I think a lot of these colors were based
"   on Nord Vim, but I cannot recall. It might also have been Jellybeans.
"   It's sort of a mix of default Vim highlights, Jellybeans, Nord, and
"   my own taste.
function! s:Color__After_Dark__Set_Highlights()

  " FIXME/2017-12-09: I think a lot of the cterm* and term* colors might be
  "   wrong -- since I generated some of this from within Vim, the term
  "   colors might be specific to my machine/display. I think the term
  "   colors should be in the range 0-15!
  "     For now I'll comment out lines and prefix with "TERM:" if just
  "       the term colors differs, and differing term values are > 15.
  "     I'll also comment out unchanged lines and prefix with "SAME:".
  "       I'm keeping them, though, to maintain parity with the earlier
  "       function, to make the two easy to diff.

  highlight SpecialKey ctermfg=242 guifg=DarkGrey
  " SAME: highlight link EndOfBuffer NonText
  "
  "highlight NonText ctermfg=242 guifg=DarkGrey
  " Make the tildes of blank lines visible.
  "highlight NonText guifg=#7f7f7f
  highlight NonText term=NONE cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=#7f7f7f guibg=NONE

  " TERM: highlight Directory term=bold ctermfg=159 guifg=Cyan
  highlight ErrorMsg term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
  " SAME: highlight IncSearch term=reverse cterm=reverse gui=reverse

  " 2017-12-09: The Search highlight is ridiculously hard to get right.
  "   This is close.
  highlight Search term=reverse cterm=underline ctermfg=0 ctermbg=14 gui=underline guifg=#f0a0c0 guibg=#302028

  " TERM: highlight MoreMsg term=bold ctermfg=121 gui=bold guifg=SeaGreen
  " SAME: highlight ModeMsg term=bold cterm=bold gui=bold

  " Grey line numbers, rather than yellow.
  highlight LineNr ctermfg=242 guifg=DarkGrey

  highlight CursorLineNr term=bold ctermfg=11 gui=bold guifg=Yellow
  " TERM: highlight Question term=standout ctermfg=121 gui=bold guifg=Green
  highlight StatusLine term=bold,reverse ctermfg=11 ctermbg=242 guifg=Yellow guibg=DarkGray
  highlight StatusLineNC term=reverse cterm=reverse ctermfg=15 ctermbg=242 guifg=White guibg=DarkGray

  " Be deliberate about the color of the window split line.
  highlight VertSplit term=reverse cterm=reverse ctermfg=15 ctermbg=15 guifg=White guibg=White

  " TERM: highlight Title term=bold ctermfg=225 gui=bold guifg=Magenta
  highlight Visual term=reverse ctermbg=242 guibg=DarkGrey
  " SAME: highlight VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
  " TERM: highlight WarningMsg term=standout ctermfg=224 guifg=Red
  highlight WildMenu term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
  highlight Folded term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey
  highlight FoldColumn term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
  highlight DiffAdd term=bold ctermbg=4 guibg=DarkBlue
  highlight DiffChange term=bold ctermbg=5 guibg=DarkMagenta
  highlight DiffDelete term=bold ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
  highlight DiffText term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
  highlight SignColumn term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
  " TERM: highlight Conceal ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey

  " 2017-12-06: I like the Spell highlights from Nord Vim.
  "   https://github.com/arcticicestudio/nord-vim
  highlight SpellBad term=reverse ctermbg=9 cterm=undercurl gui=undercurl guibg=#2E3440 guisp=#CC3333
  highlight SpellCap term=reverse ctermbg=12 cterm=undercurl gui=undercurl guibg=#2E3440 guisp=#EBCB8B
  highlight SpellRare term=reverse ctermbg=13 cterm=undercurl gui=undercurl guibg=#2E3440 guisp=#ECEFF4
  highlight SpellLocal term=underline ctermbg=14 cterm=undercurl gui=undercurl guibg=#2E3440 guisp=#E5E9F0

  " SAME: highlight Pmenu ctermfg=0 ctermbg=13 guibg=Magenta
  " TERM: highlight PmenuSel ctermfg=242 ctermbg=0 guibg=DarkGrey
  " TERM: highlight PmenuSbar ctermbg=248 guibg=Grey
  " SAME: highlight PmenuThumb ctermbg=15 guibg=White
  " TERM: highlight TabLine term=underline cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey
  " SAME: highlight TabLineSel term=bold cterm=bold gui=bold
  " SAME: highlight TabLineFill term=reverse cterm=reverse gui=reverse
  " TERM: highlight CursorColumn term=reverse ctermbg=242 guibg=Grey40
  " SAME: highlight CursorLine term=underline cterm=underline guibg=Grey40

  " Make the ColorColumn a gentler color that works with any text color over it.
  highlight ColorColumn term=reverse ctermfg=14 ctermbg=2 guifg=#D8DEE9 guibg=#2E3440

  " SAME: highlight link QuickFixLine Search
  " TERM: highlight StatusLineTerm term=bold,reverse cterm=bold ctermfg=0 ctermbg=121 gui=bold guifg=bg guibg=LightGreen
  " TERM: highlight StatusLineTermNC term=reverse ctermfg=0 ctermbg=121 guifg=bg guibg=LightGreen
  " SAME: highlight Cursor guifg=bg guibg=fg
  " SAME: highlight lCursor guifg=bg guibg=fg
  highlight MatchParen term=reverse ctermbg=6 guibg=DarkCyan
  " SAME: highlight Normal ctermfg=15 guifg=White guibg=#060606
  " TERM: highlight ToolbarLine term=underline ctermbg=242 guibg=Grey50
  " SAME: highlight ToolbarButton cterm=bold ctermfg=0 ctermbg=7 gui=bold guifg=Black guibg=LightGrey

  highlight Comment term=bold ctermfg=14 gui=NONE guifg=#80a0ff
  " 2017-12-05: I'm pretty sure I do want italicized comments...
  "highlight Comment term=bold ctermfg=14 gui=italic guifg=#80a0ff

  highlight Constant term=underline ctermfg=13 guifg=#ffa0a0
  " TERM: highlight Special term=bold ctermfg=224 guifg=Orange
  " TERM: highlight Identifier term=underline cterm=bold ctermfg=14 guifg=#40ffff
  highlight Statement term=bold ctermfg=11 gui=bold guifg=#ffff60
  " TERM: highlight PreProc term=underline ctermfg=81 guifg=#ff80ff
  " TERM: highlight Type term=underline ctermfg=121 gui=bold guifg=#60ff60
  " TERM: highlight Underlined term=underline cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
  highlight Ignore ctermfg=0 guifg=bg
  highlight Error term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
  highlight Todo term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

  highlight MyErrorMsg term=standout ctermfg=15 ctermbg=4 guibg=LightBlue
endfunction

function! s:Color__After_Dark__Main()

  "if exists("syntax_on")
  "  syntax reset
  "endif

  if has('termguicolors')
    set termguicolors
  endif

  " NOTE: &t_Co is number of colors. 256 in terminal; unset in GUI.

  " PROBABLY/2017-12-07: May need to tweak GUI vs non-GUI colors.
  "  if has("gui_running") || (has('termguicolors') && &termguicolors)
  "    let s:true_color = 1
  "  else
  "    let s:true_color = 0
  "  endif

  " These should both have the same outcome:
  highlight clear
  "colorscheme default

  set background=dark
  
  " Set the background, e.g.,
  "   highlight Normal gui=NONE guifg=White guibg=#060606 ctermfg=White ctermbg=none
  exe 'highlight Normal gui=NONE '
    \ 'guifg=White guibg=#' . g:dubs_after_dark_background
    \ 'ctermfg=White ctermbg=none'

  " Set the remaining highlights.
  call s:Color__After_Dark__Set_Highlights()
endfunction

call <SID>Color__After_Dark__Main()

