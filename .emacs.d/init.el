;; Informação de usuário ;;  -*- lexical-binding: t; -*-

(setq user-full-name "Thiago Henrique de Souza Abreu")
(setq user-email-adress "thiagoabreu293@gmail.com")

;; Carregar demais configurações ;;

(push "~/.emacs.d/config/" load-path)
(load "~/.emacs.d/config/ide-mode.el")
(load "~/.emacs.d/config/packages.el")
(load "~/.emacs.d/config/basic.el")
(load "~/.emacs.d/config/theme.el")
(load "~/.emacs.d/config/nsxiv.el")
(load "~/.emacs.d/config/variables.el")

;; Utilitários úteis pra caralho!!

(load "~/.emacs.d/config/thiago-media.el")

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
   '(avy company dap-mode emms flycheck helm-lsp helm-xref hydra lsp-mode
	 lsp-treemacs multi-vterm projectile rainbow-mode vterm vterm
	 which-key yasnippet))
 '(warning-suppress-log-types
   '((files missing-lexbind-cookie "~/.emacs.d/config/packages.el")
     (files missing-lexbind-cookie
	    "~/.emacs.d/site-lisp/emacs-application-framework/app/browser/eaf-browser.el")
     (files missing-lexbind-cookie "~/.emacs.d/config/ide-mode.el")
     (files missing-lexbind-cookie "~/.emacs.d/config/basic.el")
     (files missing-lexbind-cookie "~/.emacs.d/config/theme.el")
     (files missing-lexbind-cookie "~/.emacs.d/config/eaf.el")
     (files missing-lexbind-cookie
	    "~/.emacs.d/site-lisp/emacs-application-framework/app/video-player/eaf-video-player.el")
     (files missing-lexbind-cookie
	    "~/.emacs.d/site-lisp/emacs-application-framework/app/music-player/eaf-music-player.el")
     (files missing-lexbind-cookie
	    "~/.emacs.d/site-lisp/emacs-application-framework/app/image-viewer/eaf-image-viewer.el")
     (files missing-lexbind-cookie
	    "~/.emacs.d/site-lisp/emacs-application-framework/app/terminal/eaf-terminal.el")
     (files missing-lexbind-cookie "~/.emacs.d/config/nsxiv.el")
     (files missing-lexbind-cookie "~/.emacs.d/config/nsxiv.el"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
