;;; .spacemacs --- Spacemacs configuration
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;;; Code
(defun dotspacemacs/layers ()
    "Configuration Layers declaration."

    (setq-default
        ;; List of additional paths where to look for configuration layers.
        ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
        dotspacemacs-configuration-layer-path '()

        ;; List of configuration layers to load. If it is the symbol `all' instead
        ;; of a list then all discovered layers will be installed.
        dotspacemacs-configuration-layers '(
            (auto-completion :variables
                             auto-completion-enable-company-help-tooltip t)
            better-defaults
            colors
            dash
            emacs-lisp
            emoji
            evil-snipe
            evil-commentary
            games
            (git :variables
                 git-enable-github-support t
                 git-gutter-use-fringe t)
            github
            lua
            org
            osx
            pandoc
            (shell :variables
                   shell-default-height 30
                   shell-default-position 'bottom)
            shell-scripts
            ;; spotify
            themes-megapack
            tmux
            version-control
            vim-powerline
            vim-empty-lines
            ;; Including last to override all other configuration layers
            rjhilgefort
            )

        ;; List of additional packages that will be installed without being
        ;; wrapped in a layer. If you need some configuration for these
        ;; packages then consider to create a layer, you can also put the
        ;; configuration in `dotspacemacs/config'.
        dotspacemacs-additional-packages '()

        ;; A list of packages and/or extensions that will not be install and loaded.
        dotspacemacs-excluded-packages '()

        ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
        ;; are declared in a layer which is not a member of
        ;; the list `dotspacemacs-configuration-layers'
        dotspacemacs-delete-orphan-packages t
        )
    )

(defun dotspacemacs/init ()
    "Initialization function. This function is called at the very startup of Spacemacs initialization before layers configuration."

    ;; This setq-default sexp is an exhaustive list of all the supported spacemacs settings.
    (setq-default

        ;; holy-mode default
        dotspacemacs-editing-style 'vim

        ;; Configure "jk"
        evil-escape-key-sequence "jk"
        evil-escape-delay 0.2

        ;; If non nil output loading progress in `*Messages*' buffer.
        dotspacemacs-verbose-loading nil
        dotspacemacs-startup-banner 'official

        ;; List of items to show in the startup buffer. If nil it is disabled.
        ;; Possible values are: `recents' `bookmarks' `projects'."
        dotspacemacs-startup-lists '(recents projects)

        ;; List of themes, the first of the list is loaded when spacemacs starts.
        ;; Press <SPC> T n to cycle to the next theme in the list (works great
        ;; with 2 themes variants, one dark and one light)
        dotspacemacs-themes '(sanityinc-tomorrow-eighties
                              spacemacs-dark
                              spacemacs-light
                              solarized-dark
                              solarized-light
                              leuven
                              monokai
                              zenburn)

        ;; If non nil the cursor color matches the state color.
        dotspacemacs-colorize-cursor-according-to-state t

        ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
        ;; size to make separators look not too crappy.
        dotspacemacs-default-font '("Source Code Pro"
                                    :size 13
                                    :weight normal
                                    :width normal
                                    :powerline-scale 1.5)

        dotspacemacs-leader-key "SPC"

        ;; The leader key accessible in `emacs state' and `insert state'
        dotspacemacs-emacs-leader-key "M-m"

        ;; Major mode leader key is a shortcut key which is the equivalent of
        ;; pressing `<leader> m`. Set it to `nil` to disable it.
        dotspacemacs-major-mode-leader-key ","

        ;; Major mode leader key accessible in `emacs state' and `insert state'
        dotspacemacs-major-mode-emacs-leader-key "C-M-m"

        ;; The command key used for Evil commands (ex-commands) and
        ;; Emacs commands (M-x).
        ;; By default the command key is `:' so ex-commands are executed like in Vim
        ;; with `:' and Emacs commands are executed with `<leader> :'.
        dotspacemacs-command-key ":"

        ;; Location where to auto-save files. Possible values are `original' to
        ;; auto-save the file in-place, `cache' to auto-save the file to another
        ;; file stored in the cache directory and `nil' to disable auto-saving.
        ;; Default value is `cache'.
        dotspacemacs-auto-save-file-location 'cache

        ;; If non nil then `ido' replaces `helm' for some commands. For now only
        ;; `find-files' (SPC f f) is replaced.
        dotspacemacs-use-ido nil

        ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
        ;; several times cycle between the kill ring content.
        dotspacemacs-enable-paste-micro-state nil

        ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
        ;; the commands bound to the current keystrokes.
        dotspacemacs-guide-key-delay 0.4

        ;; If non nil a progress bar is displayed when spacemacs is loading. This
        ;; may increase the boot time on some systems and emacs builds, set it to
        ;; nil ;; to boost the loading time.
        dotspacemacs-loading-progress-bar t

        ;; If non nil the frame is fullscreen when Emacs starts up.
        ;; (Emacs 24.4+ only)
        dotspacemacs-fullscreen-at-startup nil

        ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
        ;; Use to disable fullscreen animations in OSX."
        dotspacemacs-fullscreen-use-non-native t

        ;; If non nil the frame is maximized when Emacs starts up.
        ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
        ;; (Emacs 24.4+ only)
        dotspacemacs-maximized-at-startup t

        ;; A value from the range (0..100), in increasing opacity, which describes
        ;; the transparency level of a frame when it's active or selected.
        ;; Transparency can be toggled through `toggle-transparency'.
        dotspacemacs-active-transparency 90

        ;; A value from the range (0..100), in increasing opacity, which describes
        ;; the transparency level of a frame when it's inactive or deselected.
        ;; Transparency can be toggled through `toggle-transparency'.
        dotspacemacs-inactive-transparency 90

        ;; If non nil unicode symbols are displayed in the mode line.
        dotspacemacs-mode-line-unicode-symbols t

        ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
        ;; scrolling overrides the default behavior of Emacs which recenters the
        ;; point when it reaches the top or bottom of the screen.
        dotspacemacs-smooth-scrolling t

        ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
        dotspacemacs-smartparens-strict-mode nil

        ;; Select a scope to highlight delimiters. Possible value is `all',
        ;; `current' or `nil'. Default is `all'
        dotspacemacs-highlight-delimiters 'all

        ;; If non nil advises quit functions to keep server open when quitting.
        dotspacemacs-persistent-server nil

        ;; List of search tool executable names. Spacemacs uses the first installed
        ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
        dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

        ;; The default package repository used if no explicit repository has been
        ;; specified with an installed package.
        ;; Not used for now.
        dotspacemacs-default-package-repository nil

        ;; Use system clipboard for yank
        select-enable-clipboard t

        ;; Supresses warning(s)
        ;; https://github.com/syl20bnr/spacemacs/issues/192
        ad-redefinition-action 'accept
        )

    ;; Fix issue with prezto on OSX
    ;; https://github.com/syl20bnr/spacemacs/issues/988
    (when (and (display-graphic-p) (eq system-type 'darwin))
        (with-eval-after-load 'exec-path-from-shell
          (exec-path-from-shell-setenv "SHELL" "/bin/bash")))
    )


(defun dotspacemacs/user-config ()
    "Configuration function. This function is called at the very end of Spacemacs
    initialization after layers configuration.")


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ranger ox-pandoc gnuplot ht vlf pretty-mode hyde grunt ember-mode yaml-mode nginx-mode paradox pandoc-mode helm-dash gist evil-escape diff-hl company-emoji projectile helm helm-core magit async evil which-key use-package zonokai-theme zenburn-theme zen-and-art-theme zeal-at-point ws-butler window-numbering web-mode volatile-highlights vimrc-mode underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme spray spacemacs-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smooth-scrolling smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme reveal-in-osx-finder rainbow-mode rainbow-identifiers rainbow-delimiters purple-haze-theme professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pcre2el pbcopy pastels-on-dark-theme page-break-lines organic-green-theme org-repo-todo org-present org-pomodoro org-bullets open-junk-file oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monochrome-theme molokai-theme moe-theme minimal-theme material-theme magit-gitflow magit-gh-pulls macrostep lush-theme lua-mode linum-relative light-soap-theme leuven-theme less-css-mode launchctl jazz-theme jade-mode ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-descbinds helm-css-scss helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md gandalf-theme flx-ido flatui-theme flatland-theme fish-mode firebelly-theme fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-terminal-cursor-changer evil-surround evil-snipe evil-search-highlight-persist evil-org evil-numbers evil-matchit evil-lisp-state evil-jumper evil-indent-textobject evil-iedit-state evil-exchange evil-commentary evil-args evil-anzu eval-sexp-fu espresso-theme eshell-prompt-extras esh-help emoji-cheat-sheet-plus emmet-mode elisp-slime-nav editorconfig django-theme define-word darktooth-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web company-statistics company-quickhelp colorsarenice-theme color-theme-sanityinc-solarized clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme buffer-move bubbleberry-theme birds-of-paradise-plus-theme auto-yasnippet auto-highlight-symbol auto-dictionary apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ac-ispell 2048-game auto-complete avy names pos-tip web-completion-data company anzu iedit smartparens highlight flx popup request gitignore-mode parent-mode yasnippet multiple-cursors gh logito pcache magit-popup git-commit with-editor alert log4e gntp hydra spinner pkg-info epl haml-mode evil-leader quelpa package-build bind-key s dash color-theme-sanityinc-tomorrow))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
