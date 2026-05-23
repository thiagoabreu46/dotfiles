(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/magit")
(require 'magit)
(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list "~/.emacs.d/site-lisp/magit/docs/"))
(magit-wip-mode)
(global-set-key (kbd "C-x g") #'magit-status)
