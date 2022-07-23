(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
(require 'eaf)

;; eaf-browse
(require 'eaf-browser)
(setq eaf-browser-continue-where-left-off t
      eaf-browser-dark-mode "follow"
      eaf-browser-enable-adblocker t
      eaf-browser-enable-autofill nil
      eaf-browser-remember-history t
      eaf-browser-ignore-history-list '("google.com/search" "file://")
      eaf-browser-text-selection-color "auto"
      eaf-browser-translate-language "fr"
      eaf-browser-blank-page-url "https://www.google.com")

(defalias 'browse-web #'eaf-open-browser)

(eaf-bind-key clear_focus "<escape>" eaf-browser-keybinding)
(eaf-bind-key insert_or_scroll_up "n" eaf-browser-keybinding)
(eaf-bind-key insert_or_scroll_down "p" eaf-browser-keybinding)
(eaf-bind-key insert_or_scroll_left "e" eaf-browser-keybinding)
(eaf-bind-key insert_or_scroll_right "i" eaf-browser-keybinding)
(eaf-bind-key insert_or_scroll_up_page "N" eaf-browser-keybinding)
(eaf-bind-key insert_or_scroll_down_page "P" eaf-browser-keybinding)

(eaf-bind-key insert_or_export_text "j" eaf-browser-keybinding)
(eaf-bind-key insert_or_focus_input "k" eaf-browser-keybinding)
(eaf-bind-key insert_or_edit_url "E" eaf-browser-keybinding)
(eaf-bind-key insert_or_history_forward "h" eaf-browser-keybinding)


(require 'eaf-demo)
(require 'eaf-vue-demo)

(provide 'init-eaf)
