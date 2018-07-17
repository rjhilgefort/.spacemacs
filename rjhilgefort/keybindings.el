(spacemacs/declare-prefix "o" "rjhilgefort")

;; ranger
(evil-leader/set-key
  "or" 'ranger)

;; Better window splitting
(evil-leader/set-key
  "wh" 'split-window-right
  "wj" 'split-window-below-and-focus
  "wk" 'split-window-below
  "wl" 'split-window-right-and-focus)

;; New lines, formatting, spacing
(evil-leader/set-key
  "ij" 'spacemacs/insert-line-below-no-indent
  "iJ" 'spacemacs/evil-insert-line-below
  "ik" 'spacemacs/insert-line-above-no-indent
  "iK" 'spacemacs/evil-insert-line-above)

;; Remap redo
(unbind-key "C-r" evil-normal-state-map)
(bind-key "U" 'redo evil-normal-state-map)

;; Tmux familiarity
(unbind-key "C-f")

;; Multiple cursors
(bind-key "C-n" 'mc/mark-next-like-this evil-normal-state-map)
(bind-key "C-p" 'mc/unmark-next-like-this evil-normal-state-map)
(bind-key "C-c p" 'mc/mark-previous-like-this evil-normal-state-map)
(bind-key "C-c n" 'mc/unmark-previous-like-this evil-normal-state-map)
(bind-key "C-c C-n" 'mc/mark-all-like-this-dwim evil-normal-state-map)
;; TODO: make ESC -> "C-g C-g"
;; (bind-key "ESC" 'mc/keyboard-quit multiple-cursors-mode)

;; Macros!
;; `name-last-kbd-macro`, `insert-kbd-macro` (in funcs.el), add an entry here
(spacemacs/declare-prefix "om" "macros")
(spacemacs/declare-prefix "omt" "treis")
(evil-leader/set-key
  "omf" 'macros-func-expression)
(evil-leader/set-key
  "omti" 'macros-treis-insert
  "omtr" 'macros-treis-remove)

;; Prettier
(evil-leader/set-key
  "op" 'prettier-js-mode)

(evil-leader/set-key
  "ol" 'yarn-run-lint-fix)
