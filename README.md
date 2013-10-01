vim-sessions
============

## The what
This is a simple vim plug-in to automatically save and update sessions. This way
your open tabs and buffers are restored next time you open vim.

## The why
Re-opening tabs over and over again is just too tedious. Other vim plug-ins are
doing similar things now, but I've had this solution running for a long time and
I just published it here to make it easier to install with Vundle.

## The how
### Create a session
```
:mksession session.vim
```

### Restore a session
Just call vim with no parameters. If ```session.vim``` exists in the current
directory, it will be restored.

### Update a session
If vim was opened with an existing session, then the session will be saved on
exit.

Alternatively, you can save a session at anytime using the regular vim command:
```
:mksession! session.vim
```

### Credits
Initial restore code borrowed from http://vim.runpaint.org/editing/managing-sessions/
