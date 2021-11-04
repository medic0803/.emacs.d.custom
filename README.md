# .emacs.d.custom

## Quick Start ##

-------------------------------------------------------------------------------

### Install ###

``` shell
mv ~/.emacs.d ~/.emacs.d.bak
git clone --depth 1 https://github.com/seagle0128/.emacs.d.git ~/.emacs.d
git clone --depth 1 https://github.com/medic0803/.emacs.d.custom.git ~/.emacs.d.custom
cd ~/.emacs.d
rm -rf custom.el
rm -rf custom-post.el
ln -s ~/.emacs.d.custom/custom.el custom.el
ln -s ~/.emacs.d.custom/custom-post.el custom-post.el
```

-------------------------------------------------------------------------------

## Main Features ##
### init-evil ###
- evil
- evil-escape
- evil-leader
- evil-org
- evil-surround
- sis (require OS-based input source manager)
- undo-tree

### init-blog ###
- ox-hugo

### init-dev ###
- dap-python
- dap-lldb
- dap-gdb-lldb
- dap-php

### init-lazyCat ###
- auto-save
- awesome-tab
- snails

### init-userOrg ###
- org-bullets
- org-capture-templates
- org-superstar
- org-tempo
- flyspell-mode
