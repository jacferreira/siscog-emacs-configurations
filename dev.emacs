(load (format "%s/custom/sc-before.el" (getenv "SISCOG_EMACS_DIR_LOCAL")))

;; Tells SC-EMACS to use new SISCOG's ODBC names
(defvar *new-odbc-names* t)

;; MELPA
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Load SC-EMACS
(defvar *use-slime* t)
(load (format "%s/init.el" (getenv "SISCOG_EMACS_DIR")))

;; Customise SC-EMACS
(load (format "%s/custom/sc-user-param.el" (getenv "SISCOG_EMACS_DIR_LOCAL")))

;; Load other user specific customization.
(load (format "%s/custom/sc-after.el" (getenv "SISCOG_EMACS_DIR_LOCAL")))

;; color theme
(add-to-list 'load-path "z:/emacs/color-theme-6.6.0/")
(require 'color-theme)  
(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-jsc-dark)))

;; save desktop file
(setq desktop-base-file-name ".dev.desktop")

;; 80 columns mark
(add-to-list 'load-path "z:/emacs/column-marker/")
(require 'column-marker)
(add-hook 'lisp-mode-hook (lambda () (interactive)
			    (column-marker-1 80)))

;; 80 column marker
(defun 80-columns ()
  (interactive) (column-marker-1 80))

;; buffer history
(load "z:/emacs/sc-buffer-history/sc-buffer-history.el")

;; revert all buffers
;; http://www.emacswiki.org/emacs/RevertBuffer#toc3
(defun revert-all-buffers ()
    "Refreshes all open buffers from their respective files"
    (interactive)
    (let* ((list (buffer-list))
	   (buffer (car list)))
      (while buffer
	(when (buffer-file-name buffer)
	  (progn
	    (set-buffer buffer)
	    (revert-buffer t t t)))
	(setq list (cdr list))
	(setq buffer (car list))))
    (message "Refreshing open files"))

;; lambda symbol
(add-to-list 'load-path "z:/emacs/lambda-mode/")
(require 'lambda-mode)
(eval-after-load "lambda-mode"
  '(progn
    (add-hook 'lisp-mode-hook #'lambda-mode 1)
    (setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))))

;; cygwin variable
(setenv "CYGWIN" "nodosfilewarning")
