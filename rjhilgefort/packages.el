;;; packages.el --- rjhilgefort Layer packages File for Spacemacs

;; List of all packages to install and/or initialize. Built-in packages
(setq rjhilgefort-packages '(ember-mode
                              flycheck
                              grunt
                              hyde
                              js-doc
                              js2-mode
                              pretty-mode
                              multiple-cursors
                              nginx-mode
                              vimrc-mode
                              vlf
                              yaml-mode
                              moonscript
                              editorconfig
                              slim-mode
                              react-mode
                              css-mode
                              golden-ratio
                              ))

(setq rjhilgefort-excluded-packages '())


(defun rjhilgefort/init-ember-mode ()
  (use-package ember-mode :defer t))

(defun rjhilgefort/post-init-flycheck ()
  (use-package flycheck
    :defer t
    :init
    :config (global-flycheck-mode)
    (progn
      (setq-default flycheck-disabled-checkers
        (append flycheck-disabled-checkers '(javascript-jshint)))
      (setq-default flycheck-checkers '(javascript-eslint))
      )))

(defun rjhilgefort/init-grunt ()
  (use-package grunt
    :defer t
    :init
    :config))

(defun rjhilgefort/init-hyde ()
  (use-package hyde
    :defer t
    :init
    :config))

(defun rjhilgefort/post-init-js-doc ()
  (use-package js-doc
    :defer t
    :init
    :config))

(defun rjhilgefort/post-init-js2-mode ()
  (use-package js2-mode
    :defer t
    :init
    :config
    (progn
      (setq-default
        js-indent-level 2
        js2-basic-offset 2
        js2-strict-inconsistent-return-warning nil
        js2-mode-hide-comments t
        s2-enter-indents-newline t
        js2-bounce-indent-p t
        js2-include-jslint-globals nil
        js2-global-externs '("module"
                              "require"
                              "jQuery"
                              "$"
                              "_"
                              "buster"
                              "sinon"
                              "assert"
                              "refute"
                              "setTimeout"
                              "clearTimeout"
                              "setInterval"
                              "clearInterval"
                              "location"
                              "__dirname"
                              "console"
                              "JSON"
                              "process"
                              "setImmediate"
                              "exports"
                              "enum"
                              "it"
                              "describe")
        js2-show-parse-errors nil
        js2-mode-show-strict-warnings nil
        js2-strict-missing-semi-warning nil
        js2-strict-trailing-comma-warning t
        js2-include-node-externs t
        js2-indent-switch-body t
        ;; Let Flycheck handle errors until js2 mode supports ES6
        flycheck-disabled-checkers '(javascript-jshint)
        flycheck-checkers '(javascript-eslint))
      )))

(defun rjhilgefort/init-pretty-mode ()
  (use-package pretty-mode
    :defer t
    :init
    :config))

(defun rjhilgefort/init-multiple-cursors ()
  (use-package multiple-cursors
    :defer t
    :init
    :config))

(defun rjhilgefort/post-init-nginx-mode ()
  (use-package nginx-mode
    :defer t
    :init
    :config
    (progn
      (add-to-list 'auto-mode-alist '("/nginx/sites-\\(?:available\\|enabled\\)/" . nginx-mode)))))

(defun rjhilgefort/init-vimrc-mode ()
  (use-package vimrc-mode
    :defer t
    :init
    :config))

(defun rjhilgefort/init-vlf ()
  (use-package vlf
    :defer t
    :init
    :config))

(defun rjhilgefort/init-yaml-mode ()
  (use-package yml-mode
    :defer t
    :init
    :config))

(defun rjhilgefort/init-moonscript ()
  (use-package moonscript
    :defer t
    :init
    :config))

(defun rjhilgefort/init-editorconfig ()
  (use-package editorconfig
    :defer t
    :init
    :config
    (progn
      (editorconfig-mode t))))

(defun rjhilgefort/post-init-slim-mode ()
  (use-package slim-mode
    :defer t
    :init
    :config
    (progn
      ;; TODO: This doesn't apply to the list
      (add-to-list 'auto-mode-alist '("\\.emblem\\'" . slim-mode)))))

(defun rjhilgefort/post-init-react-mode ()
  (use-package react-mode
    :defer t
    :init
    :config
    (progn
      ;; TODO: This doesn't apply to the list
      ;; TODO: This is temporary and hack that works because I only use flow on a react project
      ;; (add-to-list 'magic-mode-alist '("^// @flow" . react-mode))
      (setq-default
       web-mode-code-indent-offset 2
       web-mode-markup-indent-offset 2)
      )))

(defun rjhilgefort/post-init-css-mode()
  (use-package css-mode
    :defer t
    :init
    :config
    (progn
      (setq-default css-indent-offset 2))))

;; TODO: This doesn't work...
(defun rjhilgefort/pre-init-golden-ratio ()
  (spacemacs|use-package-add-hook golden-ratio
    :post-config (add-to-list 'golden-ratio-exclude-modes "ranger-mode")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; For each package, define a function rjhilgefort/init-<package-name>
;;
;; (defun rjhilgefort/init-<package-name> ()
;;   "Initialize <package-name>"
;;   (use-package <package-name>
;;     :defer t
;;     :init
;;     :config))
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
