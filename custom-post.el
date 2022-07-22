;;(setq-default line-spacing 0.25)
(require 'posframe)
(require 'init-meow)
(require 'init-rime)
(require 'init-filemanager)
(require 'init-eaf)
(global-wakatime-mode)

;; keyfreq
(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)
(setq keyfreq-excluded-commands
      '(meow-next
       meow-prev
       meow-left
       meow-right
       dired-previous-line
       dired-next-line
       meow-quit
       org-self-insert-command
       mwheel-scroll
       self-insert-command))
;; ibuffer
;;; set ibuffer display as group
(setq ibuffer-saved-filter-groups
      (quote (("default"
       ("Org" (mode . org-mode))
       ("Web-dev" (or
       (mode . html-mode)
       (mode . css-mode)
       (mode . web-mode)
       (mode . js2-mode)
       (mode . javascript-mode)))
       ("Emacs" (or
       (name . "^\\*scratch\\*$")
       (name . "^\\*Messages\\*$")
       (mode . emacs-lisp-mode)))
       ))))
(require 'ibuffer)
(add-hook 'ibuffer-mode-hook
          (lambda ()
           (ibuffer-switch-to-saved-filter-groups "default")))
