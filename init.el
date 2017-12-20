;; Disable the menu bar.
(menu-bar-mode -1)

;; Disable the tool bar.
(tool-bar-mode -1)

;; Disable the scroll bar.
(toggle-scroll-bar -1)

;; Highlight the current line.
(global-hl-line-mode +1)

;; Display current position of point as (row, col)
(column-number-mode +1)

;; Turn off the alarm bell.
(setq ring-bell-function #'ignore)


;; consider delete-selection-mode
;; consider kill-read-only-ok
;; consider kill-do-not-save-duplicates
;; consider save-interprogram-paste-before-kill to t

;; revisit rectangle commands

;; consider setting register-preview-delay to something small

;; C-x r <SPC> R and C-x r j R --- SUPER USEFUL! Revisit registers.

;; Consider Bookmarks!

;; consider setting bookmark-save-flag to 1

;; consider scroll-preserve-screen-position
;; consider fast-but-imprecise-scrolling

;; consider face customization. In particular,
;; font-lock-maximum-decoration

;; consider
;; (add-hook 'c-mode-hook
;;           (lambda ()
;;             (font-lock-add-keywords nil
;;                                     '(("\\<\\(FIXME\\):" 1
;;                                        font-lock-warning-face t)))))

;; consider customizing jit-lock fontification stuffs

;; heavily consider Interactive Highlighting (14.13)

;; consider setting fringe-mode to no-fringes

;; consider (setq indicate-empty-lines 'nil)

;; consider outline-mode

;; consider line-number-display-limit

;; consider display-time-mode

;; don't make mode-line a 3D box --- set box attribute of mode-line to
;; nil

;; Display keystrokes in the echo area immediately, not after one
;; second. We can't set the delay to zero because somebody thought it
;; would be a good idea to have that value suppress keystroke display
;; entirely.
(setq echo-keystrokes 1e-6)

;; consider (setq display-hourglass 'nil)
;; consider tty-suppress-bold-inverse-default-colors
;; read section 15

(with-eval-after-load 'gnutls
  (setq gnutls-verify-error t)
  (setq gnutls-min-prime-bits 3072)
  (add-to-list 'gnutls-trustfiles "/usr/local/etc/libressl/cert.pem"))

(let ((bootstrap-file (concat user-emacs-directory "straight/bootstrap.el"))
      (bootstrap-version 2))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (straight-use-package 'solarized-theme)
;; (load-theme 'solarized-dark t)

;; ;; make the fringe stand out from the background
;; (setq solarized-distinct-fringe-background t)

;; ;; Don't change the font for some headings and titles
;; (setq solarized-use-variable-pitch nil)

;; ;; make the modeline high contrast
;; ;; (setq solarized-high-contrast-mode-line t)

;; ;; Use less bolding
;; (setq solarized-use-less-bold t)

;; ;; Avoid all font-size changes
;; (setq solarized-height-minus-1 1.0)
;; (setq solarized-height-plus-1 1.0)
;; (setq solarized-height-plus-2 1.0)
;; (setq solarized-height-plus-3 1.0)
;; (setq solarized-height-plus-4 1.0)

;; initialize fullscreen on startup
;; (add-to-list 'default-frame-alist '(fullscreen . maximized))
