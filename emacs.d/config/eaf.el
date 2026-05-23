(use-package eaf
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework"
  :load-path "~/.emacs.d/site-lisp/eaf-video-editor/"
  :custom
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  :config
  (defalias 'browse-web #'eaf-open-browser))

(require 'eaf-browser)
(require 'eaf-pdf-viewer)
(require 'eaf-video-player)
(require 'eaf-music-player)
(require 'eaf-image-viewer)
(require 'eaf-terminal)

