;; color theme
(add-to-list 'load-path "z:/emacs/color-theme-6.6.0/")
(require 'color-theme)  
(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-charcoal-black)))

;; org-mode setup
;; The following lines are always needed
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; GTD configuration
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "MEETING(m)" "|" "DONE(d)" "DEFERRED(f)" "CANCELLED(c)")))

(setq org-todo-keyword-faces
      '(("TODO"  . (:foreground "firebrick2" :weight bold))
	("WAITING"  . (:foreground "sienna" :weight bold))
	("STARTED"  . (:foreground "orange" :weight bold))
	("MEETING"  . (:foreground "steelblue" :weight bold))
	("DONE"  . (:foreground "forestgreen" :weight bold))
	("DEFERRED"  . (:foreground "dimgrey" :weight bold))
	("CANCELED"  . shadow)))

(setq org-log-done 'time
      org-log-done 'note
      ;;org-directory "z:/emacs/org-mode"
      org-agenda-files '("z:/emacs/org-mode"))

;; save desktop file
(setq desktop-base-file-name ".org.desktop")