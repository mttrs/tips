# CONFIG
[.vimrc](https://github.com/mttrs/dotfiles/blob/master/.vimrc)

# MANUAL
Everything is here in `:help`, `:h`

# Open the 'Netrw Directory Listing'
- on terminal `% vi .`
- on vi: `:e .`

```
:h netrw
      Browsing With A Horizontally Split Window...........|netrw-o|
      Browsing With A New Tab.............................|netrw-t|
      Browsing With A Vertically Split Window.............|netrw-v|
```


# clipboard
```
#
# Important: The "* register is for the system clipboard.
# See help; :h registers and :h clipboard
#

# Paste clipboard to vi
"*p

# Copy the current line to clipboard
"*yy

# Copy multiple line
"*3yy

# Copy all line to clipboard
"*yG
```

# Moving screen
```
:h scrolling

CTRL-E                  Scroll window [count] lines downwards in the buffer.
                        Mnemonic: Extra lines.
    
CTRL-Y                  Scroll window [count] lines upwards in the buffer.
                        Note: When using the MS-Windows key bindings CTRL-Y is
                        remapped to redo.
   
==============================================================================
3. Scrolling relative to cursor				*scroll-cursor*

The following commands reposition the edit window (the part of the buffer that
you see) while keeping the cursor on the same line:

							*z<CR>*
z<CR>			Redraw, line [count] at top of window (default
			cursor line).  Put cursor at first non-blank in the
			line.

							*zt*
zt			Like "z<CR>", but leave the cursor in the same
			column.  {not in Vi}

							*zN<CR>*
z{height}<CR>		Redraw, make window {height} lines tall.  This is
			useful to make the number of lines small when screen
			updating is very slow.  Cannot make the height more
			than the physical screen height.

							*z.*
z.			Redraw, line [count] at center of window (default
			cursor line).  Put cursor at first non-blank in the
			line.

							*zz*
zz			Like "z.", but leave the cursor in the same column.
			Careful: If caps-lock is on, this command becomes
			"ZZ": write buffer and exit!  {not in Vi}

							*z-*
z-			Redraw, line [count] at bottom of window (default
			cursor line).  Put cursor at first non-blank in the
			line.

							*zb*
zb			Like "z-", but leave the cursor in the same column.
			{not in Vi}

==============================================================================

```

# help's help
```
:h help

CTRL-]			Jump to specific subjects by using tags

CTRL-T or CTRL-O	Jump back
```

# Trim white space
```
:%s/\s\+$//
```

# [Resize splits more quickly](http://vim.wikia.com/wiki/Resize_splits_more_quickly)

Change the height of the window
```
:resize 100

:res 100

:res +10
```

Change the width of the current window
```
:vertical resize 100
```

For a split window: You can use Ctrl-w + and Ctrl-w - to resize the height of the current window by a single row. For a vsplit window: You can use Ctrl-w > and Ctrl-w < to resize the width of the current window by a single column. Additionally, these key combinations accept a count prefix so that you can change the window size in larger steps. [e.g. Ctrl-w 10 + increases the window size by 10 lines]

To resize all windows to equal dimensions based on their splits, you can use Ctrl-w =.

To increase a window to its maximum height, use Ctrl-w _.

To increase a window to its maximum width, use Ctrl-w |.
