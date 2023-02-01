;;; aozora-theme.el --- A light theme for Emacs inspired by blue sky -*- lexical-binding: t -*-

;;; Copyright (C) 2021-2023 IrohaCoding

;; Author: IrohaCoding <info@irohacoding.com>
;; Created: 2021-11-11
;; Version: 0.1.1
;; Keywords: faces
;; Package-Requires: ((emacs "27.1"))
;; Homepage: https://github.com/irohacoding/aozora-theme

;; This file is not part of GNU Emacs, but is distributed under
;; the same terms.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either verion 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Aozora theme is a custom theme for GNU Emacs. Inspired by blue sky.
;; Ao means blue in Japanese, also z(s)ora is sky.

;;; Code:

(deftheme aozora
  "A light, energetic theme for Emacs as if you were under the blue sky.")

(let* ((fg     "#2590a7")
       (bg     "#ffffff")
       (cursor "#1c6a7d")

       (blue-1 "#abdded")
       (blue-2 "#82d0e3")
       (blue-3 "#58c3da")
       (blue-4 "#2eb2d1")
       (blue-5 "#2590a7")
       (blue-6 "#1c6a7d")
       (blue-7 "#124454")
       (blue-8 "#0f3743")

       (gray-1 "#e3e3e3")
       (gray-2 "#c2c2c2")
       (gray-3 "#ababab")
       (pink-1 "#ff2a7f"))

  (custom-theme-set-faces
   'aozora
   `(default             ((t (:foreground ,fg :background ,bg :bold nil))))
   `(cursor              ((t (:background ,cursor))))
   `(escape-glyph        ((t (:foreground ,blue-3))))
   `(homoglyph           ((t (:foreground ,blue-3))))
   `(minibuffer-prompt   ((t (:foreground ,blue-3))))
   `(highlight           ((t (:background ,gray-1))))
   `(region              ((t (:extend t :background ,blue-1))))
   `(shadow              ((t (:foreground ,blue-5))))
   `(secondary-selection ((t (:extend t :background ,blue-3))))
   `(trailing-whitespace ((t (:background ,blue-1))))

   `(show-paren-match            ((t (:background ,blue-4))))
   `(show-paren-match-expression ((t (:background ,gray-1))))
   `(show-paren-mismatch         ((t (:background ,pink-1))))

   `(font-lock-builtin-face              ((t (:foreground ,blue-3))))
   `(font-lock-comment-delimiter-face    ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-comment-face              ((t (:foreground ,blue-6))))
   `(font-lock-constant-face             ((t (:foreground ,blue-3))))
   `(font-lock-doc-face                  ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face        ((t (:foreground ,blue-5))))
   `(font-lock-keyword-face              ((t (:foreground ,blue-3))))
   `(font-lock-negation-char-face        ((t nil)))
   `(font-lock-preprocessor-face         ((t (:inherit (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   `(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face               ((t (:foreground ,blue-4))))
   `(font-lock-type-face                 ((t (:foreground ,blue-5))))
   `(font-lock-variable-name-face        ((t (:foreground ,blue-6))))
   `(font-lock-warning-face              ((t (:foreground ,pink-1))))

   `(mode-line           ((t (:foreground ,fg :background ,blue-1
                                          :box (:line-width -1 :color ,blue-2) :weight normal))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis  ((t (:weight bold))))
   `(mode-line-highlight ((t (:box (:line-width 2 :color ,blue-2)))))
   `(mode-line-inactive  ((t (:inherit mode-line :background ,gray-1 :foreground ,blue-3 :weight light))))

   `(button       ((t (:inherit (link)))))
   `(link         ((t (:foreground ,blue-3 :underline t))))
   `(link-visited ((t (:inherit link :foreground ,blue-6))))
   `(fringe       ((t (:background ,bg))))
   `(header-line  ((t (:inherit mode-line :background ,bg :foreground ,fg :box nil))))
   `(tooltip      ((t (:inherit variable-pitch :background ,cursor :foreground ,fg))))

   `(isearch        ((t (:background ,blue-7 :foreground ,bg))))
   `(isearch-fail   ((t (:background ,pink-1))))
   `(lazy-highlight ((t (:background ,bg))))
   `(match          ((t (:background ,blue-7))))
   `(next-error     ((t (:inherit (region)))))
   `(query-replace  ((t (:inherit isearch))))

   `(web-mode-doctype-face           ((t (:foreground ,blue-7))))
   `(web-mode-html-tag-face          ((t (:foreground ,blue-4))))
   `(web-mode-html-tag-bracket-face  ((t (:foreground ,blue-4))))
   `(web-mode-html-attr-name-face    ((t (:foreground ,blue-2))))
   `(web-mode-html-attr-value-face   ((t (:foreground ,blue-6))))
   `(web-mode-css-selector-face      ((t (:foreground ,blue-6))))
   `(web-mode-css-property-name-face ((t (:foreground ,blue-4))))
   `(web-mode-function-name-face     ((t (:foreground ,blue-5))))
   `(web-mode-function-call-face     ((t (:foreground ,blue-3))))

   `(org-meta-line      ((t (:foreground ,gray-3))))
   `(org-document-title ((t (:foreground ,blue-5 :weight bold))))
   `(org-document-info  ((t (:foreground ,blue-5))))
   `(org-todo           ((t (:inherit font-lock-warning-face :weight bold))))
   `(org-done           ((t (:inherit font-lock-type-face :weight bold))))
   `(org-table          ((t (:inherit font-lock-function-name-face))))
   `(org-level-1        ((t (:foreground ,blue-7))))
   `(org-level-2        ((t (:foreground ,blue-6))))
   `(org-level-3        ((t (:foreground ,blue-5))))
   `(org-level-4        ((t (:foreground ,blue-4))))
   `(org-level-5        ((t (:foreground ,blue-3))))
   `(org-level-6        ((t (:foreground ,blue-2))))
   `(org-level-7        ((t (:foreground ,gray-3))))
   `(org-level-8        ((t (:foreground ,gray-2))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'aozora)

;;; aozora-theme.el ends here
