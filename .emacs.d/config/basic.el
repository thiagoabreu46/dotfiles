(add-hook 'prog-mode-hook 'linum-relative-mode)
(add-hook 'major-mode-hook 'linum-relative-mode)

(use-package emacs
  :init
  (setq yalinum-mode 1)
  (set-face-attribute 'default nil
    :font "Monocraft"
    :height 80
    ))

(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (tooltip-mode 0)
  (menu-bar-mode 0))
  

(dolist (mode '(org-mode-hook
		vterm-hook
		treemacs-hook))
		(add-hook mode (lambda() (display-line-numbers-mode 0))))


