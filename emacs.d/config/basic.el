(setq inhibit-startup-screen t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(use-package emacs
  :init
  (set-face-attribute 'default nil
    :font "Terminus:style=bold"
    :height 100
    ))

(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (tooltip-mode 0)
  (menu-bar-mode 0)
  (rainbow-mode 1))
  
(setq-default fancy-splash-image "/home/thiago/Pictures/Gooning/1776899781852514.png")

(dolist (mode '(org-mode-hook
		vterm-hook
		treemacs-hook))
		(add-hook mode (lambda() (display-line-numbers-mode 0))))

(add-hook 'emacs-startup-hook 'treemacs 'rainbow-mode)

(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist '(("." . "~/.emacs-saves"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/tilde-files/" t)))
