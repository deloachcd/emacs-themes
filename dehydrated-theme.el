;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; -------------------------------
;;
;; Dehydrated: A muted color theme
;;
;; -------------------------------
;;
;; This is a fork of the 'odersky' theme from this GitHub repo:
;; https://github.com/owainlewis/emacs-color-themes

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme dehydrated "A muted color theme for Emacs")

(let (;; The main palette
      (*weak-cyan*        "#a7dbd8")
      (*strong-cyan*      "#7dd5e7")
      (*weak-orange*      "#ffd2a7")
      (*strong-orange*    "#ffb293")
      (*green*            "#bcfcbc")
      (*beige*            "#e0e4cc")
      (*yellow*           "#fffbb7")
      (*pink*             "#ffc0cb")
      (*normal*           "#dedede")
      (*background*       "#3c4246")
      (*vborder*          "#848484")
      (*gutter*           "#3e3e3e")
      (*comments*         "#999999")
      (*current-line*     "#434c5e")
      (*line-number-bg*   "#4e4e4e")
      (*line-number-fg*   "#797979")
      (*visual-selection* "#505c63")
      (*mode-line-fg*     "#e0e4cc")
      (*mode-inactive-bg* "#2e3336")
      (*mode-inactive-fg* "#f8f8f2")

      ;; Don't know if I'll ever use this one...
      (*darkgreen*          "#56c593")
      )

  (custom-theme-set-faces
   'dehydrated

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *weak-cyan* :underline t))))
   `(default ((t (:background, *background* :foreground, *normal*))))
   `(header-line ((t (:background, *visual-selection* :foreground, *normal*)))) ;; info header
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(highlight-numbers-number ((t (:foreground, *yellow*))))
   `(hl-line ((t (:background, *current-line*))))
   `(info-xref ((t (:foreground, *weak-cyan* :underline t))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *strong-cyan*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *green*))))
   `(font-lock-doc-face ((t (:foreground, *beige*))))
   `(font-lock-doc-string-face ((t (:foreground, *beige*))))
   `(font-lock-function-name-face ((t (:foreground, *weak-orange*))))
   `(font-lock-keyword-face ((t (:foreground, *weak-cyan*))))
   `(font-lock-negation-char-face ((t (:foreground, *strong-orange*))))
   `(font-lock-number-face ((t (:foreground, *yellow*))))
   `(font-lock-preprocessor-face ((t (:foreground, *weak-cyan*))))
   `(font-lock-reference-face ((t (:foreground, *green*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *strong-orange*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *strong-orange*))))
   `(font-lock-string-face ((t (:foreground, *beige*))))
   `(font-lock-type-face ((t (:foreground, *strong-cyan*))))
   `(font-lock-variable-name-face ((t (:foreground, *strong-orange*))))
   `(font-lock-warning-face ((t (:foreground, *strong-orange*))))

   ;; GUI
   `(fringe ((t (:background, *gutter*))))
   ;;`(line-number ((t (:background, *line-number-bg* :foreground, *line-number-fg*))))
   `(line-number ((t (:foreground, *line-number-fg*))))
   `(minibuffer-prompt ((t (:foreground, *strong-orange*))))
   `(mode-line ((t (:background, *visual-selection* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *mode-inactive-fg*))))
   `(cursor ((t (:background, *yellow*))))
   `(text-cursor ((t (:background, *yellow*))))
   `(vertical-border ((t (:foreground, *vborder*)))) ;; between splits

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *strong-orange* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *weak-cyan* :foreground, *mode-inactive-bg* :weight bold))))

   ;; search
   `(isearch ((t (:background, *strong-orange* :foreground, *visual-selection*))))
   `(isearch-fail ((t (:background, *strong-orange*))))
   `(lazy-highlight ((t (:background, *strong-cyan* :foreground, *visual-selection*))))

   ;; niche stuff
   `(sh-heredoc ((t (:foreground, *beige*))))
   `(magit-section-heading ((t (:foreground, *beige* :weight bold))))

   ;; modeline theming - look in doom-modeline-core.el to figure these out
   `(doom-modeline-evil-normal-state ((t (:foreground, *green* :weight bold))))
   `(doom-modeline-evil-visual-state ((t (:foreground, *strong-orange* :weight bold))))
   `(doom-modeline-info ((t (:foreground, *green* :weight bold))))

   ;; modeline theming - look in doom-modeline-core.el to figure these out
   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dehydrated)

;; Local Variables:
;; no-byte-compile: t
;; End:
