;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;; SLIME
(require 'slime)
(setq slime-net-coding-system 'utf-8-unix)
(slime-setup '(slime-repl))

;; Paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))

;; Iswitchb
(iswitchb-mode 1)
(show-paren-mode 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode nil)
(column-number-mode 1)
(setq display-time-24hr-format t)
(setq inhibit-startup-message t)
(setq visible-bell t)
(setq-default indent-tabs-mode nil)
(display-time)

;; CoffeeScript
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)

;; Color theme (NB. under Ubuntu I must have emacs-goodies-el installed)
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)
