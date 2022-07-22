(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
(require 'eaf)

;; eaf-browse
(require 'eaf-browser)
(setq eaf-browser-continue-where-left-off t)
(setq eaf-webengine-default-zoom 1.25)
(setq browse-url-browser-function 'eaf-open-browser)
(defalias 'browse-web #'eaf-open-browser)

(eaf-bind-key meow-keypad "SPC" eaf-browser-keybinding)
(eaf-bind-key clear_focus "<escape>" eaf-browser-keybinding)


(require 'eaf-demo)
(require 'eaf-vue-demo)

(provide 'init-eaf)
