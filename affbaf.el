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

;; ----------------------------
;;
;; AFFBAF: A muted color theme
;;
;; ----------------------------
;;
;; This is a fork of the 'odersky' theme from this GitHub repo:
;; https://github.com/owainlewis/emacs-color-themes
;; 
;; It takes its name from the color code of the muted green color that
;; it added to the scheme.

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme affbaf "A muted color theme for Emacs")

(let ((*background*         "#3c4246")
      (*vborder*            "#848484")
      (*gutter*             "#3E3E3E")
      (*comments*           "#999999")
      (*constant*           "#affbaf")
      (*current-line*       "#434c5e")
      (*cursor-underscore*  "#FFFAAA")
      (*keywords*           "#A7DBD8")
      (*line-number-bg*     "#4e4e4e")
      (*line-number-fg*     "#797979")
      (*method-declaration* "#FFD2A7")
      (*mode-line-bg*       "#505C63")
      (*mode-line-fg*       "#E0E4CC")
      (*mode-inactive-bg*   "#2E3336")
      (*mode-inactive-fg*   "#F8F8F2")
      (*normal*             "#DEDEDE")
      (*number*             "#2EBF7E")
      (*operators*          "#69D2E7")
      (*warning*            "#ffa07a")
      (*regexp*             "#ffa07a")
      (*string*             "#E0E4CC")
      (*variable*           "#ffa07a")
      (*visual-selection*   "#505C63"))

  (custom-theme-set-faces
   'affbaf

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *keywords* :underline t))))
   `(default ((t (:background, *background* :foreground, *normal*))))
   `(header-line ((t (:background, *mode-line-bg* :foreground, *normal*)))) ;; info header
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line*))))
   `(info-xref ((t (:foreground, *keywords* :underline t))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*))))
   `(font-lock-negation-char-face ((t (:foreground, *warning*))))
   `(font-lock-number-face ((t (:foreground, *number*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *operators*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *warning*))))

   ;; GUI
   `(fringe ((t (:background, *gutter*))))
   ;;`(linum ((t (:background, *line-number-bg*))))
   `(line-number ((t (:background, *line-number-bg* :foreground, *line-number-fg*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *mode-inactive-fg*))))
   `(cursor ((t (:background, *cursor-underscore*))))
   `(text-cursor ((t (:background, *cursor-underscore*))))
   `(vertical-border ((t (:foreground, *vborder*)))) ;; between splits

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *warning* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *keywords* :foreground, *mode-inactive-bg* :weight bold))))

   ;; search
   `(isearch ((t (:background, *regexp* :foreground, *visual-selection*))))
   `(isearch-fail ((t (:background, *warning*))))
   `(lazy-highlight ((t (:background, *operators* :foreground, *visual-selection*))))

   ;; niche stuff
   `(sh-heredoc ((t (:foreground, *string*))))
   `(magit-section-heading ((t (:foreground, *string* :weight bold))))

   ;; modeline theming - look in doom-modeline-core.el to figure these out
   `(doom-modeline-evil-normal-state ((t (:foreground, *constant* :weight bold))))
   `(doom-modeline-evil-visual-state ((t (:foreground, *variable* :weight bold))))
   `(doom-modeline-info ((t (:foreground, *constant* :weight bold))))
   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'affbaf)

;; Local Variables:
;; no-byte-compile: t
;; End:
