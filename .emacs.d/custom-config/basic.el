;; Carregar customizações especiais

(add-to-list 'load-path "~/.emacs.d/custom-config/powerline/")
(require 'powerline)
(powerline-center-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/"
"~/.emacs.d/themes/plasma-dark-theme")

(add-to-list 'load-path "~/src/org-mode/lisp")

;; Definições básicas

(column-number-mode)
(global-display-line-numbers-mode t)
(tool-bar-mode -1)
(tooltip-mode -1)
(setq visible-bell t)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(set-face-attribute 'default nil :font "Monocraft:antialias=subpixel" :height 90)
(global-set-key (kbd "<escape>") 'keyboard-scape-quit) 
(ivy-mode 1)
(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(my-global-rainbow-mode 1)
