;; (setq powerline-default-separator 'arrow)

;; Remove dollar sign from EOL
;; http://stackoverflow.com/questions/8370778/remove-glyph-at-end-of-truncated-lines
;; (set-display-table-slot standard-display-table 0 ?\ )

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

    ;; Tabs, tab stop
    indent-tabs-mode nil
    whitespace-indent-tabs-mode nil
    default-tab-width 4
    tab-width 4
    )
