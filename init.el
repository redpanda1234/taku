;; Disable the menu bar.
(menu-bar-mode -1)

;; Disable the tool bar.
(tool-bar-mode -1)

;; Disable the scroll bar.
(toggle-scroll-bar -1)

;; Highlight the current line.
(global-hl-line-mode +1)

;; Turn off the alarm bell.
(setq ring-bell-function #'ignore)

;; consider delete-selection-mode
;; consider kill-read-only-ok
;; consider kill-do-not-save-duplicates
;; consider save-interprogram-paste-before-kill to t

;; revisit rectangle commands

;; consider setting register-preview-delay to something small

;; C-x r <SPC> R and C-x r j R --- SUPER USEFUL! Revisit registers.
