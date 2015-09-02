;; TODO: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; * C-n select next word that matches

;; NOTES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define-key evil-normal-state-map (kbd "C-f h") 'evil-window-left)
;; (global-unset-key (kbd "C-f"))
;; (bind-key "C-f l" 'evil-window-right)
;; (unbind-key "C-r" 'evil-normal-state-minor-mode)
;; (bind-key "SPC w j" 'split-window-below-and-focus evil-normal-state-local-map)

(spacemacs/declare-prefix "o" "rjhilgefort")

;; Better window splitting
(evil-leader/set-key
    "wh" 'split-window-right
    "wj" 'split-window-below-and-focus
    "wk" 'split-window-below
    "wl" 'split-window-right-and-focus
    )

;; New lines, formatting, spacing
(evil-leader/set-key
  "ij" 'spacemacs/insert-line-below-no-indent
  "iJ" 'spacemacs/evil-insert-line-below
  "ik" 'spacemacs/insert-line-above-no-indent
  "iK" 'spacemacs/evil-insert-line-above
  )

;; Remap redo
(unbind-key "C-r" evil-normal-state-map)
(bind-key "U" 'redo evil-normal-state-map)

;; Tmux familiarity
(unbind-key "C-f")

;; Vim habits die hard (and they go here)
