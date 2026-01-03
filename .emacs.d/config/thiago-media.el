(require 'emms-player-simple)
(require 'emms-source-file)
(require 'emms-source-playlist)
(require 'emms-browser)
(setq emms-player-list '(
			 emms-player-mpv))

(setq emms-playlist-buffer-name "*Isso é música para os meus ouvidos~*")

;; Setup básico

(setq emms-browser-covers #'emms-browser-cache-thumbnail-async)
(setq emms-browser-thumbnail-small-size 64)
(setq emms-browser-thumbnail-medium-size 128)
(setq emms-playing-time-mode t)

 (emms-browser-make-filter "all" #'ignore)
  (emms-browser-make-filter "recent"
     (lambda (track) (< 30
        (time-to-number-of-days
  (time-subtract (current-time)
        (emms-info-track-file-mtime track))))))

  
