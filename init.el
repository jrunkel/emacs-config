(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path "~/.emacs.d/vendor/")
(add-to-list 'load-path "~/.emacs.d/vendor/rails-reloaded")

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(setq custom-file "~/.emacs.d/lisp/custom.el")
(load custom-file nil t)

(load "vendor" nil t)
(load "lib" nil t)
(load "etc" nil t)
(load "abbrevs" nil t)

(setq inhibit-splash-screen t)
(maximize-editor)
(ido-mode 1)

;;(windmove-default-keybindings)x
(winner-mode)
(server-start)

(rvm-use-default)

(load "~/.emacs.d/color/custom-dark" nil t)
(color-theme-custom-dark)

(put 'upcase-region 'disabled nil)
