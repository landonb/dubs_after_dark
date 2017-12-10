Dubsacks Vim — Dubs After Dark
==============================

Vibrant white and light text on a black background.

.. image:: doc/color-scheme-test-ruby-and-javascript.png

*The Dubs After Dark color scheme and* `Dubs Mescaline <https://github.com/landonb/dubs_mescaline>`__ *status line.*

About This Plugin
-----------------

This plugin provides an opinionated negative polarity color scheme.

The highlights are mostly Vim defaults, with a few tweaks to
improve contrast, provoke vibrancy, and increase readability.

Basically, if you clear highlights and start fresh, e.g.,:

.. code-block:: vim

  highlight clear
  set background=dark
  set termguicolors
  highlight Normal gui=NONE guifg=White guibg=#060606 ctermfg=White ctermbg=none

This plugin makes the following tweaks:

- Searches (i.e., started with ``/``, ``*``, or Dubs' ``<F1>``)
  are highlighted with a light pink background and underline.

- Spelling mistakes are highlighted with a light grey background
  and a red undercurl.

- The ``ColorColumn`` is set to light grey.

- The background is set to almost black, #060606, which you can
  easily override by setting ``g:dubs_after_dark_background``
  before loading the color.

- And more! Your best bet is to install the plugin, load the color,
  and see if you like it.::

  :color after-dark

The Dubs After Dark color works well the compelling
`Dubs Appearance <https://github.com/landonb/dubs_appearance>`__
plugin, which adjusts other parts of the look and feel of Vim.
<Shameless self-plug.>

For another excellent light-on-dark (though not black) color scheme,
check out
`jellybeans.vim <https://github.com/nanotech/jellybeans.vim>`__.

Installation
------------

Standard Pathogen installation:

.. code-block:: bash

   cd ~/.vim/bundle/
   git clone https://github.com/landonb/dubs_after_dark.git

Or, Standard submodule installation:

.. code-block:: bash

   cd ~/.vim/bundle/
   git submodule add https://github.com/landonb/dubs_after_dark.git

Online help:

.. code-block:: vim

   :Helptags
   :help dubs-after-dark

