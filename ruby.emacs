;; color theme
(add-to-list 'load-path "z:/emacs/color-theme-6.6.0/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-gruber-darker)))

;; save desktop file
(setq desktop-base-file-name ".ruby.desktop")

(setq ruby-program-name "d:/cygwin/bin/irb --inf-ruby-mode")

;; rinari
(add-to-list 'load-path "z:/emacs/rinari")
(require 'rinari)