(add-hook 'prog-mode-hook 'line-number-mode)
(add-hook 'major-mode-hook 'line-number-mode)
(setq font-lock-maximum-decoration t)
(setq display-line-numbers-type 'relative)

(use-package emacs
  :init
  (set-face-attribute 'default nil
    :font "Terminess Nerd Font"
    :height 110
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


