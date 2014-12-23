;; color theme
(add-to-list 'load-path "z:/emacs/color-theme-6.6.0/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-gruber-darker)))

;; save desktop file
(setq desktop-base-file-name ".py.desktop")

;; set python interpreter
(setq python-python-command "d:/cygwin/bin/python.exe")