;;; 2013. Jesús Antonio Sánchez Antúnez.
;;; Black Leaves Systems.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f1af57ed9c239a5db90a312de03741e703f712355417662c18e3f66787f94cbe" default)))
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(ns-alternate-modifier (quote none))
 '(ns-command-modifier (quote meta))
 '(python-indent-guess-indent-offset nil)
 '(python-indent-offset 4)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(menu-bar-mode -1)
(set-default-font "Menlo 13")
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(prefer-coding-system 'utf-8)
(electric-pair-mode)
(setq-default c-basic-offset 4)
(global-linum-mode t)
(setq linum-format "%4d  ")
(setq inhibit-splash-screen t)
(set-face-attribute 'mode-line nil :box nil)
(require 'yasnippet)
(yas-global-mode 1)
(put 'downcase-region 'disabled nil)
(load-theme 'twilight t)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-to-list 'auto-mode-alist '("\\SConstruct\\'" . python-mode))
