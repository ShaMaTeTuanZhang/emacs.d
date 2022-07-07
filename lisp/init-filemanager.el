(use-package dirvish
  :ensure t
  :init
  (dirvish-override-dired-mode)
  :custom
  ;; Go back home? Just press `bh'
  (dirvish-bookmark-entries
   '(("h" "~/" "Home")
    ("c" "~/Projects/Codes" "Codes")
    ("d" "~/Downloads" "Downloads")
    ("D" "~/Documents" "Documents")
    ("e" "~/.emacs.d" ".emacs.d")
    ("f" "~/.config" ".config")
    ("l" "~/.local/share" ".local/share")
    ("p" "~/Projects" "Projects")
    ("P" "~/Pictures" "Pictures")
    ("r" "~/Repo" "Repo")
    ("t" "~/.local/share/Trash/files" "TrashCan")
    ("o" "~/Org" "Org")
    ("n" "~/Org/Notes" "Org/Notes")))
  ;; (dirvish-header-line-format '(:left (path) :right (free-space)))
  (dirvish-mode-line-format ; it's ok to place string inside
   '(:left (sort file-time " " file-size symlink) :right (omit yank index)))
  (dirvish-attributes '(subtree-state all-the-icons collapse))
  ;; (dirvish-attributes '(file-size vscode-icon)) ; Feel free to try different combination
  ;; Maybe the icons are too big to your eyes
  ;; (dirvish-all-the-icons-height 0.8)
  ;; In case you want the details at startup like `dired'
  ;; (dirvish-hide-details nil)
  :config
  ;; Place this line under :init to ensure the overriding at startup, see #22
  (dirvish-peek-mode)
  ;; Dired options are respected except a few exceptions,
  ;; see *In relation to Dired* section above
  (setq dired-recursive-deletes 'always)
  (setq delete-by-moving-to-trash t)
  (setq dired-dwim-target t)
  ;; Make sure to use the long name of flags when exists
  ;; eg. use "--almost-all" instead of "-A"
  ;; Otherwise some commands won't work properly
  (setq dired-listing-switches
   "-l --almost-all --human-readable --time-style=long-iso --group-directories-first --no-group")
  :bind
  ;; Bind `dirvish|dirvish-side|dirvish-dwim' as you see fit
  (("C-c f" . dirvish-fd)
   ("C-x C-d" . dirvish)
   ("C-x d" . dirvish-side)
   :map dired-mode-map ; Dirvish respects all the keybindings in this map
   ;; ("h" . dired-up-directory)
   ;; ("j" . dired-next-line)
   ;; ("k" . dired-previous-line)
   ;; ("l" . dired-find-file)
   ;; ("i" . wdired-change-to-wdired-mode)
   ;; ("." . dired-omit-mode)
   ("TAB" . dirvish-subtree-toggle)
   ("SPC" . dirvish-history-jump)
   ("M-n" . dirvish-history-go-forward)
   ("M-p" . dirvish-history-go-backward)
   ("M-s" . dirvish-setup-menu)
   ("M-f" . dirvish-toggle-fullscreen)
   ("*"   . dirvish-mark-menu)
   ("E"   . dirvish-emerge-menu)
   ("N"   . dirvish-narrow)
   ("r"   . dirvish-fd-roam)
   ("b"   . dirvish-bookmark-jump)
   ("f"   . dirvish-file-info-menu)
   ([remap dired-sort-toggle-or-edit] . dirvish-quicksort)
   ([remap dired-do-redisplay] . dirvish-ls-switches-menu)
   ([remap dired-summary] . dirvish-dispatch)
   ([remap dired-do-copy] . dirvish-yank-menu)
   ([remap mode-line-other-buffer] . dirvish-history-last)))


(provide 'init-filemanager)
