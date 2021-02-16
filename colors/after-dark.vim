" File: dubs_appearance.vim
" Author: Landon Bouma (landonb &#x40; retrosoft &#x2E; com)
" Last Modified: 2017.12.17
" Project Page: https://github.com/landonb/dubs_appearance
" Summary: Nighttime! Complete Vim highlight file
" License: GPLv3
" vim:tw=0:ts=2:sw=2:et:norl:ft=vim
" ----------------------------------------------------------------------------
" Copyright © 2017 Landon Bouma.
"
" This file is part of Dubs Vim.
"
" Dubs Vim is free software: you can redistribute it and/or
" modify it under the terms of the GNU General Public License
" as published by the Free Software Foundation, either version
" 3 of the License, or (at your option) any later version.
"
" Dubs Vim is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty
" of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
" the GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with Dubs Vim. If not, see <http://www.gnu.org/licenses/>
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
  " =================================
  " Default highlights from stock Vim
  " =================================
  "
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
  highlight SpellBad term=underline cterm=underline ctermbg=Red gui=undercurl guisp=Red guibg=#2E3440
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
function! s:Color__After_Dark__Reference__Base_Dubs_Vim()
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

  "highlight SpecialKey ctermfg=242 guifg=DarkGrey
  " Color of Meta and special keys, i.e., unprintable characters. See :map.
  highlight SpecialKey term=NONE cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

  " SAME: highlight link EndOfBuffer NonText
  "
  "highlight NonText ctermfg=242 guifg=DarkGrey
  " Make the tildes of blank lines visible.
  "highlight NonText guifg=#7f7f7f
  highlight NonText term=NONE cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=#7f7f7f guibg=NONE

  " TERM: highlight Directory term=bold ctermfg=159 guifg=Cyan
  highlight ErrorMsg term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red

  " When you start a search (e.g., with /), IncSearch is the color used to
  " highlight the next match after the cursor as you type (until you hit
  " return, and then all matches are highlighted according to Search).
  "
  " IncSearch is also the color used to highlight the current match of a
  " find-and-replace (sub-replace-special) command, e.g., when you run:
  "
  "   :.,$s/foo/bar/gc
  "
  " The default is the reverse of the Search highlight, but this doesn't
  " always look the best.
  "
  " 2017-12-09: I tried white on black, as an alternative to reverse:
  "
  "   highlight IncSearch term=reverse guifg=#000000 guibg=#FFFFFF gui=underline ctermfg=0 ctermbg=6 cterm=underline
  "
  " but reverse, reverse, reverse -- the default -- still looks better:
  "
  "   highlight IncSearch term=reverse cterm=reverse gui=reverse
  "
  " 2018-05-08: I haven't been happy with using the reverse of Search. When
  " the base color foreground is similar to the Search color background,
  " then IncSearch's reverse makes the highlight look very much like the
  " Search highlight -- and it's near impossible to discern which text the
  " sub-replace-special command is asking confirmation on.
  "
  " For example, open a reST file and find-replace text found in an
  " unformatted section (what follows a double-colon :: indicator).
  " The text, highlighted per rstLiteralBlock, is already kind of
  " orangey yellow. And the after-dark Search highlight (currently)
  " is black on yellow. So the find-replace IncSearch highlight, when
  " reverse, looks almost exactly like Search, and one cannot easily
  " (quickly) tell the difference.
  "
  " A simple solution is to add standout (bold) and italic:
  "
  "   highlight IncSearch term=reverse,standout,italic cterm=reverse,standout,italic gui=reverse,standout,italic
  "
  " Note that there's also 'bold' (which looks same as standout to me),
  " and even 'strikethrough', but 'strikethrough' looks craze.
  "
  " Wanna test? Clear first, e.g.,:
  "
  "   hi clear IncSearch
  "   highlight IncSearch ctermbg=233 ctermfg=228 guifg=#F2ED7F guibg=#1C1C1C gui=standout,italic
  "   hi clear IncSearch
  "   highlight IncSearch ctermbg=233 ctermfg=228 guifg=#F2ED7F guibg=#D46A6A gui=standout,italic
  "
  " Anyway, I think I'll try a red background for now, because it pops better
  " than reverse for more highlights, I think, and I don't think there's much
  " that's red except for the Error highlight.
  "
  " See also, for shades of red:
  "
  "   http://paletton.com/#uid=1000u0kllllaFw0g0qFqFg0w0aF
  "
  highlight IncSearch ctermbg=233 ctermfg=228 guifg=#D46A6A guibg=#1C1C1C term=reverse,standout,italic cterm=reverse,standout,italic gui=standout,italic

  " 2017-12-09: The Search highlight is ridiculously hard to get right.
  " There's lot more info here:
  "   http://vim.wikia.com/wiki/Configuring_the_cursor
  " and under
  "   :h Cursor\>
  " Default cursor is inverse of text:
  "  highlight Cursor guifg=bg guibg=fg
  " which is same as this Search highlighting:
  "  highlight Search guibg=White guifg=Black
  "
  "highlight Cursor guifg=black guibg=white
  "highlight Cursor guifg=red guibg=green
  "highlight iCursor guifg=red guibg=white
  " nord's: let s:nord4_gui = "#D8DEE9" / s:nord0_gui = "#2E3440"
  "highlight Cursor guifg=#2E3440 guibg=#D8DEE9
  "highlight Cursor guifg=#2E3440 guibg=#ECEFF4
  " A bluish background color: 
  "highlight Search term=reverse guifg=#3B4252 guibg=#88C0D0 ctermfg=0 ctermbg=6
  " This is close. Light text on light pink background.
  " 2018-02-10: Perhaps this.
  "highlight Cursor term=bold cterm=bold guibg=Blue guifg=Green
  "highlight Cursor term=bold cterm=bold guibg=White guifg=White

  " 2018-02-14: cobalt2
  highlight CursorColumn term=reverse ctermbg=234 guibg=#FFC600
  highlight CursorLineNr term=bold ctermfg=123 guifg=#80FCFF
  highlight CursorLine term=underline ctermbg=235 guibg=#FFC600
  "highlight Cursor ctermfg=16 ctermbg=220 guifg=#193549 guibg=#FFC600
  " Tweak cobalt2 to contrast better with the Search highlight
  highlight Cursor term=bold cterm=bold guifg=#121212 guibg=#afd700

  " 2018-02-01 19:52: STILL FIGURING THIS OUT!
  " I tried a light pink background for search matches, but it's too subtle.
  "  highlight Search term=reverse cterm=underline ctermfg=0 ctermbg=14 gui=underline guifg=#f0a0c0 guibg=#302028
  " Then I tried Black on Yellow, but that's a bit much.
  "  highlight Search ctermfg=0 ctermbg=14 guifg=Black guibg=Yellow
  " 2018-02-14: cobalt2: A less vibrant yellow than Yellow. And not as black as Black.
  " 2018-05-08: I really cannot see any difference between underline and not.
  highlight Search term=reverse cterm=underline ctermfg=233 ctermbg=228 gui=underline guifg=#1C1C1C guibg=#F2ED7F

  " TERM: highlight MoreMsg term=bold ctermfg=121 gui=bold guifg=SeaGreen
  " SAME: highlight ModeMsg term=bold cterm=bold gui=bold

  " Grey line numbers, rather than yellow.
  "highlight LineNr ctermfg=242 guifg=DarkGrey
  highlight LineNr term=NONE cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

  highlight CursorLineNr term=bold ctermfg=11 gui=bold guifg=Yellow
  " TERM: highlight Question term=standout ctermfg=121 gui=bold guifg=Green
  "highlight StatusLine term=bold,reverse ctermfg=11 ctermbg=242 guifg=Yellow guibg=DarkGray
  highlight StatusLine term=bold,reverse gui=NONE guifg=Yellow guibg=DarkGreen cterm=NONE ctermfg=DarkYellow ctermbg=DarkGray
  "highlight StatusLineNC term=reverse cterm=reverse ctermfg=15 ctermbg=242 guifg=White guibg=DarkGray
  "highlight StatusLineNC term=reverse gui=NONE guifg=Black guibg=DarkGray ctermfg=Black ctermbg=DarkGray
  highlight StatusLineNC term=reverse gui=NONE guifg=LightGray guibg=DarkBlue ctermfg=LightGray ctermbg=DarkBlue

  " VertSplit: When two windows are split vertically, there's a column of
  " black rectangles running between them, and each black rectangle has a
  " vertical bar in it. This is sorta ugly. It looks nicer if you paint
  " the rectangles a solid color, effectively hiding the `|`; or painting
  " the rectangles the same as the Vim background color, effectively hiding
  " the vertical bars. (The line numbers provide adequate window separation,
  " IMHO.)
  "
  " Make the split border color white.
  highlight VertSplit term=reverse cterm=reverse ctermfg=15 ctermbg=15 guifg=White guibg=White
  " ... or hide it completely:
  " Hide the vertical split window border.
  "   Between two windows that are vertically split, there are
  "   black rectangles with white bars inside. Make the vertical
  "   tab characters to be white on white, hiding them.
  highlight VertSplit term=reverse gui=NONE guifg=#060606 guibg=#060606 ctermfg=Black ctermbg=Black

  " TERM: highlight Title term=bold ctermfg=225 gui=bold guifg=Magenta
  "highlight Visual term=reverse ctermbg=242 guibg=DarkGrey gui=None
  " 2017-12-17: Visual is going to be difficult to get right.
  "   How will this cut it? Red background... loud on paper, but I like it.
  highlight Visual term=reverse ctermbg=242 guifg=White guibg=Red gui=none

  " SAME: highlight VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
  " TERM: highlight WarningMsg term=standout ctermfg=224 guifg=Red
  highlight WildMenu term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
  highlight Folded term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey
  "highlight FoldColumn term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
  highlight FoldColumn term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Black

  " 2021-02-15: Only took a decade, but finally using Vimdiff, at least
  "             by way of vim-mergetool (by way of `git mergetool`):
  "
  "               https://github.com/samoshkin/vim-mergetool
  "
  "             And that's when I realized after-dark's Diff* highlights
  "             were way too difficult to read!
  "
  " - Here are the historical after-dark Diff* highlights, which are
  "   fairly close to the default Vim highlights:
  "
  "     highlight DiffAdd term=bold ctermbg=4 guibg=DarkBlue
  "     highlight DiffChange term=bold ctermbg=5 guibg=DarkMagenta
  "     highlight DiffDelete term=bold ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
  "     highlight DiffText term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
  "
  "   - Note that it's really the DiffText guibg=Red and not setting the
  "     foreground that makes it hard to read. (I'm not sure if there's a
  "     default foreground color being used, or if the particular foreground
  "     for each token is applied, but either way it looks bad. We need to
  "     be deliberate about the foreground color.)
  "
  " - But this colorscheme was not the only one with poor Diff highlights.
  "
  " - I demoed a number of colorschemes from flazz:
  "
  "     https://github.com/flazz/vim-colorschemes/tree/master/colors
  "
  "   and the majority that I tested used similarly difficult to read
  "   red backgrounds for diff highlights. (Though I didn't test a large
  "   enough sample size to infer that it's a widespread problem, just
  "   that of the (very) few colorschemes that I did test, the Diff
  "   highlight colors did not seem like something that was necessarily
  "   customized for the colorschemes (indeed, how many Vimmers also
  "   vimdiff? it feels like a niche).)
  "
  " - Of the ten or twenty colorschemes that I did test, these four
  "   looked the radest:
  "
  "     triplejelly, understated, vorange, and zazen.
  "
  "   But I liked zazen the best, so I copied its Diff* highlights.
  "
  " - The following highlights are from zazen (thanks, zazen!):
  "
  "     https://github.com/flazz/vim-colorschemes/blob/master/colors/zazen.vim
  highlight DiffAdd term=bold ctermfg=40 ctermbg=22 guifg=#00cc00 guibg=#002200
  highlight DiffChange term=bold ctermfg=209 ctermbg=52 guifg=#ff9955 guibg=#220000
  highlight DiffDelete term=bold ctermfg=9 ctermbg=52 guifg=#ff0000 guibg=#220000
  highlight DiffText term=reverse ctermfg=9 ctermbg=52 guifg=#ff0000 guibg=#220000

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
  "highlight ColorColumn ctermfg=lightyellow ctermbg=darkgreen guifg=#D8DEE9 guibg=#2E3440
  highlight ColorColumn term=reverse ctermfg=14 ctermbg=2 guifg=#D8DEE9 guibg=#2E3440

  " SAME: highlight link QuickFixLine Search
  " TERM: highlight StatusLineTerm term=bold,reverse cterm=bold ctermfg=0 ctermbg=121 gui=bold guifg=bg guibg=LightGreen
  " TERM: highlight StatusLineTermNC term=reverse ctermfg=0 ctermbg=121 guifg=bg guibg=LightGreen

  highlight MatchParen term=reverse ctermbg=6 guibg=DarkCyan
  " SAME: highlight Normal ctermfg=15 guifg=White guibg=#060606
  " TERM: highlight ToolbarLine term=underline ctermbg=242 guibg=Grey50
  " SAME: highlight ToolbarButton cterm=bold ctermfg=0 ctermbg=7 gui=bold guifg=Black guibg=LightGrey

  " 2017-12-05: I'm pretty sure I do want italicized comments...
  "highlight Comment term=bold ctermfg=14 gui=italic guifg=#80a0ff
  " 2017-11-17: Nord default:
  "highlight Comment term=bold ctermfg=8 guifg=#4C566A
  " Something a little lighter. Used:
  "   https://www.sessions.edu/color-calculator/
  "highlight Comment term=bold ctermfg=8 guifg=#7888a6
  "highlight Comment term=bold ctermfg=8 guifg=#8292b3
  " Perhaps something more yellow?
  "highlight Comment term=bold ctermfg=8 guifg=#abb382
  " Or pinkish reddish?:
  "highlight Comment term=bold ctermfg=8 guifg=#b38a82
  " I really like mild blue comments, I think:
  highlight Comment term=bold ctermfg=14 gui=NONE guifg=#80a0ff

  "highlight Constant term=underline ctermfg=13 guifg=#ffa0a0
  highlight Constant term=underline ctermfg=13 guifg=#ffcc77
  " TERM: highlight Special term=bold ctermfg=224 guifg=Orange

  "highlight Identifier term=underline guifg=#D8DEE9
  " In lighttime, same color as SpellLocal.
  "highlight Identifier term=underline ctermfg=6 guifg=#E5E9F0
  " But that's too bright, almost indistinguisable from white.
  "highlight Identifier term=underline ctermfg=6 guifg=#656970
  " Meh: The normal Identifier highlight is a nice baby blue:
  " TERM: highlight Identifier term=underline cterm=bold ctermfg=14 guifg=#40ffff

  highlight Statement term=bold ctermfg=11 gui=bold guifg=#ffff60
  " TERM: highlight PreProc term=underline ctermfg=81 guifg=#ff80ff
  " TERM: highlight Type term=underline ctermfg=121 gui=bold guifg=#60ff60
  " TERM: highlight Underlined term=underline cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
  highlight Ignore ctermfg=0 guifg=bg
  highlight Error term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red

  " "TODO:" and "FIXME:" Highlights.
  "highlight Todo term=standout ctermfg=3 guifg=#EBCB8B guibg=Yellow
  "highlight Todo term=standout ctermfg=3 guifg=#000000 guibg=Yellow
  "highlight Todo term=standout ctermfg=3 guifg=#000000 guibg=#C6C6C6
  highlight Todo term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

  " From github.com/landonb/dubs_appearance. Not a very good name.
  highlight MyErrorMsg term=standout ctermfg=15 ctermbg=4 guibg=LightBlue

  " Project plugin directory line highlight when section is folded.
  highlight Folded guifg=#cccccc guibg=#333333

  " 2020-07-21: (lb): I'm tired on the gross orangy literal block color,
  " because I use literal blocks for quoting articles a lot. A green
  " color is much easier to read and more pleasant to view.
  " - This overrides the definition from runtime/syntax/rst.vim:
  "     hi def link rstLiteralBlock                 String
  "   where
  "     SynLink String		Constant
  "   and Constant is defined in this file as #ffa0a0.
  highlight rstLiteralBlock guifg=#60ff60
  highlight rstDelimiter guifg=#60ff60

endfunction

function! s:Color__After_Dark__Main()

  "if exists("syntax_on")
  "  syntax reset
  "endif

  if has('termguicolors')
    " Enable guifg and guibg in terminals.
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
  
  " 2017-11-12: Weird. In the terminal ctermbg=Black or =0 is same as =DarkGray/DarkGrey.
  "   But using 8 gets us black... or any number not negative or 0-7....
  "   Also, ctermbg=none works.
  " Set the background, e.g.,
  "   highlight Normal gui=NONE guifg=White guibg=#060606 ctermfg=White ctermbg=none
  exe 'highlight Normal gui=NONE '
    \ 'guifg=White guibg=#' . g:dubs_after_dark_background
    \ 'ctermfg=White ctermbg=none'

  " Set the remaining highlights.
  call s:Color__After_Dark__Set_Highlights()
endfunction

call <SID>Color__After_Dark__Main()

