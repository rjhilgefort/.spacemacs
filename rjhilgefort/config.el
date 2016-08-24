;; My understanding of this method is that I should be able to
;; throw some layers here that are deps for this layer
;; TODO: It doesn't work that way, figure out why
(configuration-layer/declare-layer '(html javascript markdown syntax-checking))

;; powerline tweaks
;; (setq powerline-default-separator 'arrow)

;; Remove dollar sign from EOL
;; http://stackoverflow.com/questions/8370778/remove-glyph-at-end-of-truncated-lines
;; (set-display-table-slot standard-display-table 0 ?\ )

;; `nginx-mode` for "sites-available/enabled"
(add-to-list 'auto-mode-alist '("/nginx/sites-\\(?:available\\|enabled\\)/" . nginx-mode))

;; Cleanup whitespace on save
(defun cleanup-buffer ()
    (interactive)
    (delete-trailing-whitespace))
(add-hook 'before-save-hook 'cleanup-buffer)

(setq-default
    ;; Follow symlinks when opening files
    vc-follow-symlinks t

    ;; Word wrap
    truncate-partial-width-windows nil
    truncate-lines t

    ;; Rulers (defaults to 80) (TODO: Multiple rulers)
    fill-column 80
    fill-column-indicator t

    ;; Tabs, tab stop
    indent-tabs-mode nil
    whitespace-indent-tabs-mode nil
    default-tab-width 2
    tab-width 2
    )

;; Define for multiple-cursors
;; Making a new one everytime currently
;; (setq mc/list-file ".mc-lists.el")
