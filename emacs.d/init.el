;; Informação de usuário ;;  -*- lexical-binding: t; -*-

(setq user-full-name "Thiago Henrique de Souza Abreu")
(setq user-email-adress "thiagoabreu293@gmail.com")

;; Carregar demais configurações ;;

(push "~/.emacs.d/config/" load-path)
(load "~/.emacs.d/config/ide-mode.el")
(load "~/.emacs.d/config/packages.el")
(load "~/.emacs.d/config/basic.el")
(load "~/.emacs.d/config/theme.el")
(load "~/.emacs.d/config/eaf.el")
(load "~/.emacs.d/config/magyatt.el")

;;----------------------------------------------------------------------------------;;

;; Org-mode ;;

(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
(put 'upcase-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(avy company cond-let dap-mode flycheck helm-lsp helm-xref hydra
	 lavender-theme llama lsp-mode lsp-treemacs projectile
	 rainbow-mode transient-dwim vterm which-key yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
