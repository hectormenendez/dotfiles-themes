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
        (ui-lit5  "#F7e3BB")
        (ui-lite  "#FDF0F0")
        (ui-note  "#9FD356")
        (ui-link  "#37AAE5")
        (ui-info  "#FFB519")
        (ui-warn  "#FB4934")
        (ui-errr  "#9D0006")
        ;; delimiters
        (ui-par0  "#a05929")
        (ui-par1  "#7c445e")
        (ui-par2  "#2a5254")
        (ui-par3  "#465d89")

        (tx-keyw   "#f98100")
        (tx-name   "#74a7ad")
        (tx-func   "#8ec07c")
        (tx-str    "#B8BB26")
        (tx-ext    "#fabd2f")
        (tx-const  "#fd8d4f")
    )

    (custom-theme-set-faces 'etor

    ;; Basic Text
        `(default ((t (; The default face
            :background ,ui-drk1
            :foreground ,ui-lit4
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(button ((t (; Text that's clickable
            :background nil
            :foreground ,ui-link
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline t
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(link ((t (; Text that's clickable
            :background nil
            :foreground ,ui-link
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline t
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(cursor ((t (; The cursor. Only the background matters
            :background ,ui-lit5
            :foreground ,ui-lit5
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(isearch ((t (; matches when searching via emacs
            :background ,ui-info
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(evil-ex-search ((t (; matches when searching via evil
            :background ,ui-info
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(isearch-fail ((t (; non current matches
            :background ,ui-errr
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; UI
        `(highlight ((t (; The currently highlighted line. Inherit the fg and set the bg.
            :background ,ui-drk2
            :foreground nil
            :inverse-video nil
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(hl-line ((t (; The same as highlight
            :background ,ui-drk2
            :foreground nil
            :inverse-video nil
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(region ((t (; The current selection (inverted colors)
            :background nil
            :foreground nil
            :inverse-video t
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(secondary-selection ((t (; When there's an active region, and select with M
            :background ,ui-lit4
            :foreground ,ui-drk1
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(minibuffer-prompt ((t (; When user is prompted to write something on minibufffer
            :background nil
            :foreground ,ui-note
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(fringe ((t (; The margins on each side of the window (where arrows are placed)
            :background ,ui-drk0
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(vertical-border ((t (; The window divider (background is ignored)
            :background ,ui-dark
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(linum ((t (; The bar holding the line numbers
            :background ,ui-drk0
            :foreground ,ui-drk3
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(linum-relative-current-face ((t (; The current line number for linum-relative
            :background ,ui-drk0
            :foreground ,ui-lit4
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(highlight-indent-guides-character-face ((t (; Indentaion lines
            :background nil
            :foreground ,ui-drk2
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(git-gutter:modified ((t (; Modified VC lines on gutter
            :background ,ui-link
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(git-gutter:added ((t (; Added VC lines on gutter
            :background ,ui-note
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(git-gutter:deleted ((t (; Deleted VC lines on gutter
            :background ,ui-warn
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(git-gutter:unchanged ((t (; The gutter for VC lines
            :background ,ui-drk0
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; UI: Mode Line
        `(mode-line ((t (; The active mode-line (center part)
            :background ,ui-drk3
            :foreground nil
            :inverse-video nil
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-accent-active ((t (; The active accentuated modes
            :background ,ui-drk4
            :foreground nil
            :inverse-video nil
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(mode-line-inactive ((t (; The inactive mode-line (center part)
            :background ,ui-drk2
            :foreground ,ui-drk0
            :inverse-video nil
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-accent-inactive ((t (; the inactive accentuated modes
            :background ,ui-drk0
            :foreground ,ui-drk2
            :inverse-video nil
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-evil-normal ((t (; normal-mode indicator on mode-line
            :background ,ui-lit4
            :foreground ,ui-drk0
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-evil-insert ((t (; normal-mode indicator on mode-line
            :background ,ui-note
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-evil-replace ((t (; normal-mode indicator on mode-line
            :background ,ui-link
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-evil-visual ((t (; normal-mode indicator on mode-line
            :background ,ui-info
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-evil-emacs ((t (; normal-mode indicator on mode-line
            :background ,ui-warn
            :foreground ,ui-dark
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(telephone-line-evil-operator ((t (; normal-mode indicator on mode-line
            :background ,ui-dark
            :foreground ,ui-lite
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; UI: Helm
        `(helm-source-header ((t (; The headers on helm menus
            :background ,ui-drk1
            :foreground ,ui-lite
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height 150
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(helm-match ((t (; The current match on helm windows
            :background nil
            :foreground ,ui-lit5
            :inverse-video nil
            :slant unspecified
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(helm-selection ((t (; The currently highlighted line on helm
            :background ,ui-drk0
            :foreground nil
            :inverse-video t
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(helm-action ((t (; Actions on helm
            :background nil
            :foreground ,ui-link
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline t
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(helm-M-x-key ((t (; Actions on helm
            :background nil
            :foreground ,ui-info
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; UI: Custom
        `(custom-documentation ((t (; The explanation of custom items
            :background ,ui-drk1
            :foreground ,ui-drk4
            :inverse-video nil
            :slant italic
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(custom-group-tag ((t (; The headers on custom
            :background ,ui-drk1
            :foreground ,ui-lite
            :inverse-video nil
            :slant normal
            :weight ultra-bold
            :height 150
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(custom-state ((t (; The state text on custom
            :background ,ui-drk1
            :foreground ,ui-note
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(custom-face-tag ((t (; The state text on custom
            :background ,ui-drk1
            :foreground ,ui-lit4
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(custom-variable-tag ((t (; The state text on custom
            :background ,ui-drk1
            :foreground ,ui-lit4
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
    ;; Company
        `(company-scrollbar-bg ((t (; The cursor. Only the background matters
            :background ,ui-drk0
            :foreground nil
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-scrollbar-fg ((t (; The cursor. Only the background matters
            :background ,ui-drk3
            :foreground nil
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-tooltip ((t (; The cursor. Only the background matters
            :background ,ui-lit3
            :foreground ,ui-drk1
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-tooltip-selection ((t (; The cursor. Only the background matters
            :background ,ui-lit4
            :foreground ,ui-drk2
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-tooltip-mouse ((t (; The cursor. Only the background matters
            :background ,ui-lit5
            :foreground nil
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-tooltip-common ((t (; The cursor. Only the background matters
            :background nil
            :foreground ,ui-drk5
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-tooltip-common-selection ((t (; The cursor. Only the background matters
            :background nil
            :foreground ,ui-drk5
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(company-preview-common ((t (; The cursor. Only the background matters
            :background ,ui-note
            :foreground ,ui-drk2
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; SmartParens
        `(rainbow-delimiters-depth-1-face ((t (
            :background nil
            :foreground ,ui-par0
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-2-face ((t (
            :background nil
            :foreground ,ui-par1
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-3-face ((t (
            :background nil
            :foreground ,ui-par2
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-4-face ((t (
            :background nil
            :foreground ,ui-par3
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-4-face ((t (
            :background nil
            :foreground ,ui-par3
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-5-face ((t (
            :background nil
            :foreground ,ui-par0
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-6-face ((t (
            :background nil
            :foreground ,ui-par1
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-7-face ((t (
            :background nil
            :foreground ,ui-par2
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-8-face ((t (
            :background nil
            :foreground ,ui-par3
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-9-face ((t (
            :background nil
            :foreground ,ui-par0
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-10-face ((t (
            :background nil
            :foreground ,ui-par1
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-11-face ((t (
            :background nil
            :foreground ,ui-par2
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(rainbow-delimiters-depth-12-face ((t (
            :background nil
            :foreground ,ui-par3
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; Built-in Syntax
        `(font-lock-doc-face ((t (
            :background nil
            :foreground ,ui-drk4
            :inverse-video nil
            :slant italic
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-comment-face ((t (
            :background nil
            :foreground ,ui-drk4
            :inverse-video nil
            :slant italic
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-keyword-face ((t (
            :background nil
            :foreground ,tx-keyw
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-string-face ((t (
            :background nil
            :foreground ,tx-str
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-builtin-face ((t (
            :background nil
            :foreground ,tx-name
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-function-name-face ((t (
            :background nil
            :foreground ,tx-name
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-variable-name-face ((t (
            :background nil
            :foreground ,tx-name
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(font-lock-constant-face ((t (
            :background nil
            :foreground ,tx-const
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(highlight-numbers-number ((t (
            :background nil
            :foreground ,tx-str
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; Emacs Lisp - especific
        `(highlight-quoted-symbol ((t (
            :background nil
            :foreground ,tx-str
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(highlight-quoted-quote ((t (
            :background nil
            :foreground ,tx-str
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; JS2 - especific
        `(js2-external-variable ((t (
            :background nil
            :foreground ,tx-ext
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(js2-function-param ((t (
            :background nil
            :foreground ,tx-name
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(js2-function-call ((t (
            :background nil
            :foreground ,tx-func
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(js2-jsdoc-tag ((t (
            :background nil
            :foreground ,ui-drk4
            :inverse-video nil
            :slant italic
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))

    ;; Magit & Version Control
        `(magit-diff-added ((t (
            :background unspecified
            :foreground ,ui-note
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-added-highlight ((t (
            :background unspecified
            :foreground ,ui-note
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-removed ((t (
            :background unspecified
            :foreground ,ui-warn
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-removed-highlight ((t (
            :background unspecified
            :foreground ,ui-warn
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-context ((t (
            :background unspecified
            :foreground ,ui-drk4
            :inverse-video nil
            :slant italic
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-context-highlight ((t (
            :background unspecified
            :foreground ,ui-drk4
            :inverse-video nil
            :slant italic
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-section-highlight ((t (
            :background unspecified
            :foreground unspecified
            :inverse-video unspecified
            :slant unspecified
            :weight unspecified
            :height unspecified
            :underline unspecified
            :overline unspecified
            :strike-through unspecified
            :box unspecified
        ))))
        `(magit-branch-local ((t (
            :background unspecified
            :foreground ,tx-name
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-branch-remote ((t (
            :background unspecified
            :foreground ,tx-keyw
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-section-heading ((t (
            :background unspecified
            :foreground ,tx-str
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-file-heading ((t (
            :background unspecified
            :foreground ,ui-drk5
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-hunk-heading ((t (
            :background unspecified
            :foreground ,tx-ext
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diff-hunk-heading-highlight ((t (
            :background unspecified
            :foreground ,tx-ext
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-branch-current ((t (
            :background unspecified
            :foreground ,tx-name
            :inverse-video nil
            :slant italic
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diffstat-added ((t (
            :background unspecified
            :foreground ,ui-note
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(magit-diffstat-removed ((t (
            :background unspecified
            :foreground ,ui-warn
            :inverse-video nil
            :slant normal
            :weight bold
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
        `(git-commit-summary ((t (
            :background unspecified
            :foreground ,tx-ext
            :inverse-video nil
            :slant normal
            :weight normal
            :height unspecified
            :underline nil
            :overline nil
            :strike-through nil
            :box nil
        ))))
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
