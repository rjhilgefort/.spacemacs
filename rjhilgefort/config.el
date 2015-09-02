(spacemacs/declare-prefix "o" "rjhilgefort")

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

;; Remap redo
(unbind-key "C-r" evil-normal-state-map)
(bind-key "U" 'redo evil-normal-state-map)

;; Better window splitting
(bind-key "SPC w h" 'split-window-right           evil-normal-state-local-map)
(bind-key "SPC w j" 'split-window-below-and-focus evil-normal-state-local-map)
(bind-key "SPC w k" 'split-window-below           evil-normal-state-local-map)
(bind-key "SPC w l" 'split-window-right-and-focus evil-normal-state-local-map)

;; Tmux familiarity
(unbind-key "C-f")

;; New lines, formatting, spacing
(bind-key "SPC i j" 'spacemacs/insert-line-below-no-indent evil-normal-state-local-map)
(bind-key "SPC i J" 'spacemacs/evil-insert-line-below      evil-normal-state-local-map)
(bind-key "SPC i k" 'spacemacs/insert-line-above-no-indent evil-normal-state-local-map)
(bind-key "SPC i K" 'spacemacs/evil-insert-line-above      evil-normal-state-local-map)

;; Vim habits die hard (they go here)
;; TODO:
;;    C-n select next word that matches

;; (define-key evil-normal-state-map (kbd "C-f h") 'evil-window-left)
;; (global-unset-key (kbd "C-f"))

;; (bind-key "C-f l" 'evil-window-right)
;; (unbind-key "C-r" 'evil-normal-state-minor-mode)
