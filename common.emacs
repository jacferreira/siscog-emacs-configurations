;; Hide toolbar
(tool-bar-mode 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "#c0c0c0"
			 :inverse-video nil :box nil :strike-through nil
			 :overline nil :underline nil :slant normal
			 :weight normal :height 98 :width normal :foundry "outline"
			 :family "Consolas")))))

;; scroll one line at a time (less "jumpy" than defaults)
(mouse-wheel-mode t)
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; Bind ctrl-tab and ctrl-shift-tab to move through buffers
(global-set-key [C-tab] 'next-multiframe-window)
(global-set-key [C-S-tab] 'previous-multiframe-window)

;; Bind shitf-tab to show/hide blocksfe
(global-set-key [S-tab] 'hs-toggle-hiding)		

;; bind for comment/uncomment region
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)

;; Show cursor coordinates
(setq column-number-mode t)

;; clear trash
;; disable auto-save
(setq delete-auto-save-files t)
(setq make-backup-files nil)

;; enable ido-mode
(ido-mode t)
(setq ido-enable-flex-matching t)

;; pabbrev
(add-to-list 'load-path "z:/emacs/pabbrev/")
(require 'pabbrev)
(eval-after-load "pabbrev"
  (global-pabbrev-mode))

;; save workspace on exit
(desktop-save-mode 1)

;; use cygwin find (for find-grep)
(setq find-program "c:/siscog-dev-tools/cygwin/bin/find.exe")
