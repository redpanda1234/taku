;;; taku-appearance.el --- Non-color-theme appearance tweaks

;;; This file has appearance tweaks that are unrelated to the color
;;; theme. Menus, scroll bars, bells, cursors, and so on. See also
;;; `taku-theme', which customizes the color theme specifically.

;; Disable the menu bar.
(menu-bar-mode -1)

;; Turn off the alarm bell.
(setq ring-bell-function #'ignore)
