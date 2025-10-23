;;;    Meus diretórios     ;;;

(add-to-list 'load-path "~/.emacs.d/custom-config/")
(load "~/.emacs.d/custom-config/basic.el")

;;--------------------------------------

;;Tirar a numeração de linhas em modos específicos

(dolist (mode '(org-mode-hook
                term-mode-hook
		vterm-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))


;;;    Comandos ORG-MODE    ;;;



(global-set-key (kbd "C-c a") #'org-agenda)


(require 'package)

(push '("elpa-devel" . "https://elpa.gnu.org/devel/") package-archives)
(push '("melpa" . "https://https:melpa.org/packages/") package-archives)
(push '("org" . "https://orgmode.org/elpa/") package-archives)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install '(use-package)))

  (eval-when-compile
    (require 'use-package))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(plasma-dark))
 '(custom-safe-themes
   '("eee694a20896cb063b4cc0594a863997f21f4ad0f7350c90a930ff59311dd2b2"
     "f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7"
     "0bcad9fba10108f053f46c2294cd03939fda8e3eed86920f54d2f6677fcc99c6"
     "9c0bc9b63585482e17b669b80fe92999960df41b2e0517f8b61f509c49725e10"
     "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476"
     "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088"
     "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d"
     default))
 '(package-selected-packages
   '(bash-completion eat gruvbox-theme ivy magit org-modern rainbow-mode
		     spacemacs-theme)))
 
(setq backup-directory-alist
         `((".*" . ,temporary-file-directory)))
     (setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))


(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
(require 'eaf)
(require 'eaf-demo)
(require 'eaf-browser)
(require 'eaf-image-viewer)
(require 'eaf-video-player)
(require 'eaf-pyqterminal)
(require 'eaf-pdf-viewer)
(require 'eaf-camera)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun my-eaf--build-process-environment-disable-security (orig-func &rest args)
    "Wrap ORIG-FUNC to add QTWEBENGINE_CHROMIUM_FLAGS to the process environment."
    (let ((environments (apply orig-func args)))
      (when (eq system-type 'gnu/linux)
	(add-to-list 'environments "QTWEBENGINE_CHROMIUM_FLAGS=--disable-web-security" t))
      environments))

  (defun eaf-open-browser-nosafe (url &optional args)
    "Open EAF browser with security disabled for URL with optional ARGS.
This is intended as a quick fix, e.g., for Google login."
    (interactive "M[EAF/browser] URL: ")
    (advice-add 'eaf--build-process-environment :around #'my-eaf--build-process-environment-disable-security)
    (eaf-open (eaf-wrap-url url) "browser" args)
    (advice-remove 'eaf--build-process-environment #'my-eaf--build-process-environment-disable-security))
