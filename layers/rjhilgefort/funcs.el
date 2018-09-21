;;; funcs.el --- rjhilgefort Layer funcs File for Spacemacs

;; Macros!
;; Generate new ones: https://www.emacswiki.org/emacs/KeyboardMacros
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(fset 'macros-treis-insert
  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([118 36 104 104 115 41 105 116 114 escape 104] 0 "%d")) arg)))
(fset 'macros-treis-remove
  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("^dldlds(" 0 "%d")) arg)))
(fset 'macros-func-expression
  (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([99 105 119 99 111 110 115 116 escape 101 108 105 32 61 32 escape 65 escape 105 61 62 32 escape 73 escape] 0 "%d")) arg)))

;; Randomness
(defun yarn-run-lint-fix ()
  (interactive)
  (shell-command "yarn run lint:fix")
)
