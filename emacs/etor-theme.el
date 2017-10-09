;;; etor-theme.el  --- A Theme by etor for etor, based upon gruvbox & BOP
;;
;; Author: Héctor Menéndez <etor@gik.mx>
;; Version: 0.0.1
;; Keywords: themes
;; Package-Requires: ((autothemer "0.2"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;; Nothing to comment yet.
;;
;;; Code:
(deftheme etor)
(let
    ((class '((class color) (min-colors 3200)))
        ;; These are just helpers to determine which element is being customized
        (ui-tst1  "magenta")
        (ui-tst2  "yellow")
        ;; These should be used only for UI
        ;; (I'm considering default text and comments UI)
        (ui-dark  "#0D0F0F")
        (ui-drk0  "#16191A")
        (ui-drk1  "#1D2021")
        (ui-drk2  "#222526")
        (ui-drk3  "#332F2C")
        (ui-drk4  "#4D4540")
        (ui-drk5  "#665C54")
        (ui-lit1  "#7C6F64")
        (ui-lit2  "#A89984")
        (ui-lit3  "#BDAE93")
        (ui-lit4  "#D5C4A1")
        (ui-lit5  "#F7E3BB")
        (ui-lite  "#FDF0F0")
        (ui-note  "#9FD356")
        (ui-link  "#37AAE5")
        (ui-trsh  "#FF4C6A")
        (ui-info  "#08BDBD")
        (ui-warn  "#F49D37")
        (ui-errr  "#E50026")
        ;; delimiters
        (ui-par0  "#A05929")
        (ui-par1  "#7C445E")
        (ui-par2  "#2A5254")
        (ui-par3  "#465D89")
        ;; text color
        (tx-1st   "#FE7F2D"); for identifiers
        (tx-2nd   "#D28B71"); for builtins
        (tx-3rd   "#52A5A1"); for variables / properties / params
        (tx-4th   "#87ADA8"); for methods
        (tx-5th   "#B8BB26"); for strings / regex
        (tx-6th   "#e5b72d"); for constants
        (tx-7th   "#F8928E"); for externals
    )

    (custom-theme-set-faces 'etor

    ;; Basic Text
        `(default ((t (; The default face
            :background ,ui-drk1
            :foreground ,ui-lit4
            :slant normal
            :weight normal
        ))))
        `(button ((t (; Text that's clickable
            :foreground ,ui-link
            :slant normal
            :weight normal
            :underline t
        ))))
        `(link ((t (; Text that's clickable
            :foreground ,ui-link
            :slant normal
            :weight normal
            :underline t
        ))))
        `(cursor ((t (; The cursor. Only the background matters
            :background ,ui-lit5
            :foreground ,ui-lit5
            :slant normal
            :weight normal
        ))))
        `(isearch ((t (; matches when searching via emacs
            :background ,ui-info
            :foreground ,ui-drk0
            :slant normal
            :weight normal
        ))))
        `(evil-ex-search ((t (; matches when searching via evil
            :background ,ui-info
            :foreground ,ui-drk0
            :slant normal
            :weight normal
        ))))
        `(isearch-fail ((t (; non current matches
            :background ,ui-errr
            :foreground ,ui-dark
            :slant normal
            :weight normal
        ))))
    ;; UI
        `(highlight ((t (; The currently highlighted line. Inherit the fg and set the bg.
            :background ,ui-drk2
        ))))
        `(hl-line ((t (; The same as highlight
            :foreground unspecified
            :background ,ui-drk2
        ))))
        `(hl-todo ((t (; The same as highlight
            :foreground ,ui-info
            :weight bold
        ))))
        `(region ((t (; The current selection (inverted colors)
            :inverse-video t
            :slant normal
            :weight normal
        ))))
        `(secondary-selection ((t (; When there's an active region, and select with M
            :background ,ui-lit4
            :foreground ,ui-drk1
            :slant normal
            :weight normal
        ))))
        `(minibuffer-prompt ((t (; When user is prompted to write something on minibufffer
            :foreground ,ui-note
            :slant normal
            :weight ultra-bold
        ))))
        `(fringe ((t (; The margins on each side of the window (where arrows are placed)
            :background ,ui-drk0
            :foreground ,ui-dark
            :slant normal
            :weight normal
        ))))
        `(vertical-border ((t (; The window divider (background is ignored)
            :background ,ui-dark
            :foreground ,ui-dark
            :slant normal
            :weight normal
        ))))
        `(linum ((t (; The bar holding the line numbers
            :background ,ui-drk0
            :foreground ,ui-drk3
            :slant normal
            :weight normal
        ))))
        `(linum-relative-current-face ((t (; The current line number for linum-relative
            :background ,ui-drk0
            :foreground ,ui-lit4
            :slant normal
            :weight ultra-bold
        ))))
        `(highlight-indent-guides-character-face ((t (; Indentaion lines
            :foreground ,ui-drk2
            :slant normal
            :weight normal
        ))))
        `(git-gutter:modified ((t (; Modified VC lines on gutter
            :background ,ui-link
            :foreground ,ui-drk0
            :slant normal
            :weight ultra-bold
        ))))
        `(git-gutter:added ((t (; Added VC lines on gutter
            :background ,ui-note
            :foreground ,ui-drk0
            :slant normal
            :weight ultra-bold
        ))))
        `(git-gutter:deleted ((t (; Deleted VC lines on gutter
            :background ,ui-trsh
            :foreground ,ui-drk0
            :slant normal
            :weight ultra-bold
        ))))
        `(git-gutter:unchanged ((t (; The gutter for VC lines
            :background ,ui-drk0
            :foreground ,ui-drk0
            :slant normal
            :weight normal
        ))))
    ;; UI: Mode Line
        `(mode-line ((t (; The active mode-line (center part)
            :foreground ,ui-lit4
            :background ,ui-drk3
        ))))
        `(telephone-line-accent-active ((t (; The active accentuated modes
            :background ,ui-drk4
        ))))
        `(mode-line-inactive ((t (; The inactive mode-line (center part)
            :background ,ui-drk2
            :foreground ,ui-drk0
            :box nil
        ))))
        `(telephone-line-accent-inactive ((t (; the inactive accentuated modes
            :background ,ui-drk0
            :foreground ,ui-drk2
        ))))
        `(telephone-line-evil-normal ((t (; normal-mode indicator on mode-line
            :background ,ui-lit4
            :foreground ,ui-drk0
            :slant normal
            :weight ultra-bold
        ))))
        `(telephone-line-evil-insert ((t (; normal-mode indicator on mode-line
            :background ,ui-note
            :foreground ,ui-dark
            :slant normal
            :weight ultra-bold
        ))))
        `(telephone-line-evil-replace ((t (; normal-mode indicator on mode-line
            :background ,ui-link
            :foreground ,ui-dark
            :slant normal
            :weight ultra-bold
        ))))
        `(telephone-line-evil-visual ((t (; normal-mode indicator on mode-line
            :background ,ui-info
            :foreground ,ui-dark
            :slant normal
            :weight ultra-bold
        ))))
        `(telephone-line-evil-emacs ((t (; normal-mode indicator on mode-line
            :background ,ui-warn
            :foreground ,ui-dark
            :slant normal
            :weight ultra-bold
        ))))
        `(telephone-line-evil-operator ((t (; normal-mode indicator on mode-line
            :background ,ui-dark
            :foreground ,ui-lite
            :slant normal
            :weight ultra-bold
        ))))
    ;; UI: Helm
        `(helm-source-header ((t (; The headers on helm menus
            :background ,ui-drk1
            :foreground ,ui-lite
            :slant normal
            :weight ultra-bold
            :height 150
        ))))
        `(helm-match ((t (; The current match on helm windows
            :foreground ,ui-lit5
            :weight ultra-bold
        ))))
        `(helm-selection ((t (; The currently highlighted line on helm
            :background ,ui-drk0
            :inverse-video t
            :slant normal
            :weight normal
        ))))
        `(helm-action ((t (; Actions on helm
            :foreground ,ui-link
            :slant normal
            :weight normal
            :underline t
        ))))
        `(helm-M-x-key ((t (; Actions on helm
            :foreground ,ui-info
            :slant normal
            :weight ultra-bold
        ))))
    ;; UI: Custom
        `(custom-documentation ((t (; The explanation of custom items
            :background ,ui-drk1
            :foreground ,ui-drk4
            :slant italic
            :weight normal
        ))))
        `(custom-group-tag ((t (; The headers on custom
            :background ,ui-drk1
            :foreground ,ui-lite
            :slant normal
            :weight ultra-bold
            :height 150
        ))))
        `(custom-state ((t (; The state text on custom
            :background ,ui-drk1
            :foreground ,ui-note
            :slant normal
            :weight normal
        ))))
        `(custom-face-tag ((t (; The state text on custom
            :background ,ui-drk1
            :foreground ,ui-lit4
            :slant normal
            :weight bold
        ))))
        `(custom-variable-tag ((t (; The state text on custom
            :background ,ui-drk1
            :foreground ,ui-lit4
            :slant normal
            :weight bold
        ))))
    ;; Company
        `(company-scrollbar-bg ((t (; The cursor. Only the background matters
            :background ,ui-drk0
            :slant normal
            :weight normal
        ))))
        `(company-scrollbar-fg ((t (; The cursor. Only the background matters
            :background ,ui-drk3
            :slant normal
            :weight normal
        ))))
        `(company-tooltip ((t (; The cursor. Only the background matters
            :background ,ui-lit3
            :foreground ,ui-drk1
            :slant normal
            :weight normal
        ))))
        `(company-tooltip-selection ((t (; The cursor. Only the background matters
            :background ,ui-lit4
            :foreground ,ui-drk2
            :slant normal
            :weight normal
        ))))
        `(company-tooltip-mouse ((t (; The cursor. Only the background matters
            :background ,ui-lit5
            :slant normal
            :weight normal
        ))))
        `(company-tooltip-common ((t (; The cursor. Only the background matters
            :foreground ,ui-drk5
            :slant normal
            :weight bold
        ))))
        `(company-tooltip-common-selection ((t (; The cursor. Only the background matters
            :foreground ,ui-drk5
            :slant normal
            :weight bold
        ))))
        `(company-preview-common ((t (; The cursor. Only the background matters
            :background ,ui-note
            :foreground ,ui-drk2
            :slant normal
            :weight bold
        ))))
    ;; SmartParens
        `(rainbow-delimiters-depth-1-face ((t (
            :foreground ,ui-par0
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-2-face ((t (
            :foreground ,ui-par1
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-3-face ((t (
            :foreground ,ui-par2
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-4-face ((t (
            :foreground ,ui-par3
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-4-face ((t (
            :foreground ,ui-par3
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-5-face ((t (
            :foreground ,ui-par0
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-6-face ((t (
            :foreground ,ui-par1
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-7-face ((t (
            :foreground ,ui-par2
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-8-face ((t (
            :foreground ,ui-par3
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-9-face ((t (
            :foreground ,ui-par0
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-10-face ((t (
            :foreground ,ui-par1
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-11-face ((t (
            :foreground ,ui-par2
            :slant normal
            :weight bold
        ))))
        `(rainbow-delimiters-depth-12-face ((t (
            :foreground ,ui-par3
            :slant normal
            :weight bold
        ))))
    ;; Built-in Syntax
        `(font-lock-doc-face ((t (
            :foreground ,ui-drk4
            :slant italic
            :weight normal
        ))))
        `(font-lock-comment-face ((t (
            :foreground ,ui-drk4
            :slant italic
            :weight normal
        ))))
        `(font-lock-keyword-face ((t (
            :foreground ,tx-1st
            :slant normal
            :weight bold
        ))))
        `(font-lock-string-face ((t (
            :foreground ,tx-5th
            :slant normal
            :weight normal
        ))))
        `(font-lock-builtin-face ((t (
            :foreground ,tx-2nd
            :slant normal
            :weight bold
        ))))
        `(font-lock-function-name-face ((t (
            :foreground ,tx-3rd
            :slant normal
            :weight normal
        ))))
        `(font-lock-variable-name-face ((t (
            :foreground ,tx-3rd
            :slant normal
            :weight normal
        ))))
        `(font-lock-constant-face ((t (
            :foreground ,tx-6th
            :slant normal
            :weight bold
        ))))
        `(highlight-numbers-number ((t (
            :foreground ,tx-5th
            :slant normal
            :weight normal
        ))))
    ;; Flycheck
        `(flycheck-error ((t (
            :underline (:style wave :color ,ui-errr)
        ))))
        `(flycheck-warning ((t (
            :underline (:style wave :color ,ui-warn)
        ))))
        `(error ((t (
            :foreground ,ui-errr
            :weight bold
        ))))
        `(warning ((t (
            :foreground ,ui-warn
        ))))
    ;; Emacs Lisp - especific
        `(highlight-quoted-symbol ((t (
            :foreground ,tx-5th
            :slant normal
            :weight normal
        ))))
        `(highlight-quoted-quote ((t (
            :foreground ,tx-5th
            :slant normal
            :weight normal
        ))))
    ;; JS2 - especific
        `(js2-external-variable ((t (
            :foreground ,tx-7th
            :slant normal
            :weight bold
        ))))
        `(js2-function-param ((t (
            :foreground ,tx-3rd
            :slant normal
            :weight normal
        ))))
        `(js2-function-call ((t (
            :foreground ,tx-4th
            :slant normal
            :weight bold
        ))))
        `(js2-jsdoc-tag ((t (
            :foreground ,ui-drk4
            :slant italic
            :weight bold
        ))))
        `(js2-highlight-vars-face ((t (
            :background unspecified
            :inverse-video t
        ))))
        `(js2-object-property ((t (
            :foreground ,tx-4th
            :weight normal
        ))))
        `(js2-highlight-vars-second-face ((t (
            :background unspecified
            :inverse-video t
        ))))
    ;; Magit & Version Control
        `(magit-diff-added ((t (
            :foreground ,ui-note
            :slant normal
            :weight normal
        ))))
        `(magit-diff-added-highlight ((t (
            :foreground ,ui-note
            :slant normal
            :weight bold
        ))))
        `(magit-diff-removed ((t (
            :foreground ,ui-warn
            :slant normal
            :weight normal
        ))))
        `(magit-diff-removed-highlight ((t (
            :foreground ,ui-warn
            :slant normal
            :weight bold
        ))))
        `(magit-diff-context ((t (
            :foreground ,ui-drk4
            :slant italic
            :weight normal
        ))))
        `(magit-diff-context-highlight ((t (
            :foreground ,ui-drk4
            :slant italic
            :weight normal
        ))))
        `(magit-section-highlight ((t (
        ))))
        `(magit-branch-local ((t (
            :foreground ,tx-3rd
            :slant normal
            :weight bold
        ))))
        `(magit-branch-remote ((t (
            :foreground ,tx-1st
            :slant normal
            :weight bold
        ))))
        `(magit-section-heading ((t (
            :foreground ,tx-5th
            :slant normal
            :weight bold
        ))))
        `(magit-diff-file-heading ((t (
            :foreground ,ui-drk5
            :slant normal
            :weight bold
        ))))
        `(magit-diff-hunk-heading ((t (
            :foreground ,tx-7th
            :slant normal
            :weight normal
        ))))
        `(magit-diff-hunk-heading-highlight ((t (
            :foreground ,tx-7th
            :slant normal
            :weight bold
        ))))
        `(magit-branch-current ((t (
            :foreground ,tx-3rd
            :slant italic
            :weight bold
        ))))
        `(magit-diffstat-added ((t (
            :foreground ,ui-note
            :slant normal
            :weight bold
        ))))
        `(magit-diffstat-removed ((t (
            :foreground ,ui-warn
            :slant normal
            :weight bold
        ))))
        `(git-commit-summary ((t (
            :foreground ,tx-7th
            :slant normal
            :weight normal
        ))))
    ;; Javascript specific
    )
    (custom-theme-set-variables 'etor
        ;; Fill column indicator
        `(fci-rule-color ,ui-drk2)
        `(fci-rule-character-color ,ui-drk2)
        ;; Needed for git-gutter
        `(git-gutter:unchanged-sign " ")
        `(git-gutter:deleted-sign " ")
        `(git-gutter:added-sign " ")
        `(git-gutter:modified-sign " ")
        ;; Telephone-line cursor on modes
        `(evil-emacs-state-cursor '(,ui-warn box))
        `(evil-normal-state-cursor '(,ui-lit4 box))
        `(evil-visual-state-cursor '(,ui-info box))
        `(evil-insert-state-cursor '(,ui-note bar))
        `(evil-replace-state-cursor '(,ui-link bar))
        `(evil-operator-state-cursor '(,ui-dark hollow))
        `(hl-todo-keyword-faces '(
            ("HOLD"   . ,ui-info)
            ("NOTE"   . ,ui-info)
            ("KLUDGE" . ,ui-info)
            ("PROG"   . ,ui-info)
            ("OKAY"   . ,ui-info)
            ("THEM"   . ,ui-warn)
            ("DONE"   . ,ui-warn)
            ("DONT"   . ,ui-warn)
            ("TODO"   . ,ui-warn)
            ("NEXT"   . ,ui-warn)
            ("HACK"   . ,ui-errr)
            ("FAIL"   . ,ui-errr)
            ("FIXME"  . ,ui-errr)
            ("XXX"    . ,ui-errr)
            ("XXXX"   . ,ui-errr)
            ("???"    . ,ui-errr)
        ))
    )
)
;;;###autoload
(when load-file-name
    (add-to-list
        'custom-theme-load-path
        (file-name-as-directory (file-name-directory load-file-name))
    )
)
(provide-theme 'etor)
;; Loacal Variables:
;; no-byte-compile: t
;; End:
;;; etor-theme.el ends here
