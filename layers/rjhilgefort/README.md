@rjhilgefort Pirvate Layers
===========================

TODO
----

| File | Domain | TODO |
|------|--------|------|
| keybindings | * | "C-n" select next word that matches |
| config | javascript | Collapse all comments by default |


NOTES
-----

```elisp
(define-key evil-normal-state-map (kbd "C-f h") 'evil-window-left)
(global-unset-key (kbd "C-f"))
(bind-key "C-f l" 'evil-window-right)
(unbind-key "C-r" 'evil-normal-state-minor-mode)
(bind-key "SPC w j" 'split-window-below-and-focus evil-normal-state-local-map)
```
