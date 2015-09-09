;;; packages.el --- rjhilgefort Layer packages File for Spacemacs

;; List of all packages to install and/or initialize. Built-in packages
(setq rjhilgefort-packages
      '(
        css-mode
        ember-mode
        flycheck
        grunt
        gh-md
        hyde
        js-doc
        js2-mode
        pretty-mode
        markdown-mode
        nginx-mode
        ranger
        vimrc-mode
        vlf
        ws-butler
        yaml-mode
        ))

;; List of packages to exclude.
(setq rjhilgefort-excluded-packages '())

(defun rjhilgefort/post-init-css-mode ()
  (use-package css-mode
    :defer t
    :config
    (setq-default
     css-indent-offset 2
     )))

(defun rjhilgefort/init-ember-mode ()
  (use-package ember-mode :defer t))

(defun rjhilgefort/post-init-flycheck ()
  (use-package flycheck
    :defer t
    :config (global-flycheck-mode)
    ))

(defun rjhilgefort/init-grunt ()
  (use-package grunt :defer t))

(defun rjhilgefort/init-gh-md ()
  (use-package gh-md :defer t))

(defun rjhilgefort/init-hyde ()
  (use-package hyde :defer t))

(defun rjhilgefort/post-init-js-doc ()
  (use-package js-doc :defer t))

(defun rjhilgefort/post-init-js2-mode ()
  (use-package js2-mode
    :defer t
    :config
    (progn
      (setq-default
       js-indent-level 4
       js2-basic-offset 4
       js2-strict-inconsistent-return-warning nil
       js2-mode-hide-comments t
       s2-enter-indents-newline t
       js2-bounce-indent-p t
       js2-include-jslint-globals t
       js2-global-externs '("module" "require" "jQuery" "$" "_" "buster" "sinon" "assert" "refute" "setTimeout" "clearTimeout" "setInterval" "clearInterval" "location" "__dirname" "console" "JSON" "process" "setImmediate" "exports" "enum" "it" "describe")
       ;; Let Flycheck handle errors until js2 mode supports ES6
       js2-show-parse-errors nil
       js2-strict-missing-semi-warning nil
       js2-strict-trailing-comma-warning t
       js2-include-node-externs t
       js2-indent-switch-body t
       ))))

(defun rjhilgefort/init-pretty-mode ()
  (use-package pretty-mode :defer t))

(defun rjhilgefort/post-init-markdown-mode ()
  (use-package markdown-mode :defer t))

(defun rjhilgefort/init-nginx-mode ()
  (use-package nginx-mode :defer t))

(defun rjhilgefort/init-ranger ()
  (use-package ranger :defer t))

(defun rjhilgefort/init-vimrc-mode ()
  (use-package vimrc-mode :defer t))

(defun rjhilgefort/init-vlf ()
  (use-package vlf :defer t))

(defun rjhilgefort/init-ws-butler ()
  (use-package ws-butler
    :init
    (add-hook 'prog-mode-hook 'ws-butler-mode)
    ))

(defun rjhilgefort/init-yaml-mode ()
  (use-package yml-mode :defer t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; For each package, define a function rjhilgefort/init-<package-name>
;;
;; (defun rjhilgefort/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
