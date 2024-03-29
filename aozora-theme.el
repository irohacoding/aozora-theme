;;; aozora-theme.el --- A light theme for Emacs inspired by blue sky -*- lexical-binding: t -*-

;; Copyright (C) 2021-2023 IrohaCoding

;; Author: IrohaCoding <info@irohacoding.com>
;; Created: 2021-11-11
;; Version: 0.5.3
;; Keywords: faces
;; Package-Requires: ((emacs "27.1"))
;; Homepage: https://github.com/irohacoding/aozora-theme

;; This file is not part of GNU Emacs, but is distributed under
;; the same terms.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either verion 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Aozora theme is a custom theme for GNU Emacs. Inspired by blue sky.
;; Ao means blue in Japanese, also z(s)ora is sky.

;;; Code:

(deftheme aozora
  "A light, energetic theme for Emacs as if you were under the blue sky.")

(let ((aozora-blue-1 "#aae1ee")
      (aozora-blue-2 "#81d2e4")
      (aozora-blue-3 "#58c3da")
      (aozora-blue-4 "#2fb3d0")
      (aozora-blue-5 "#258fa7")
      (aozora-blue-6 "#1b6b7e")
      (aozora-blue-7 "#114755")
      (aozora-blue-8 "#07242c")
      (aozora-gray-0 "#faf9f8")
      (aozora-gray-1 "#e3e3e3")
      (aozora-gray-2 "#c2c2c2")
      (aozora-gray-3 "#ababab")
      (aozora-gray-4 "#868686")
      (aozora-gray-5 "#545454")
      (aozora-white  "#f8fbf8")
      (aozora-yellow "#fffabc")
      (aozora-pink-1 "#ffc0cb")
      (aozora-pink-2 "#ff69b4"))

  (custom-theme-set-faces
   'aozora
   `(default             ((t (:foreground ,aozora-blue-6 :background ,aozora-white :bold nil))))
   `(cursor              ((t (:background ,aozora-blue-7))))
   `(escape-glyph        ((t (:foreground ,aozora-blue-3))))
   `(homoglyph           ((t (:foreground ,aozora-blue-3))))
   `(minibuffer-prompt   ((t (:foreground ,aozora-blue-3))))
   `(highlight           ((t (:background ,aozora-gray-1))))
   `(region              ((t (:extend t :background ,aozora-gray-2))))
   `(shadow              ((t (:foreground ,aozora-blue-5))))
   `(secondary-selection ((t (:extend t :background ,aozora-blue-3))))
   `(whitespace-space    ((t (:foreground ,aozora-gray-2))))
   `(linum               ((t (:foreground ,aozora-gray-3 :background ,aozora-gray-0))))
   `(hl-line             ((t (:background ,aozora-gray-1))))

   `(show-paren-match            ((t (:background ,aozora-blue-4))))
   `(show-paren-match-expression ((t (:background ,aozora-gray-1))))
   `(show-paren-mismatch         ((t (:background ,aozora-pink-2))))

   `(font-lock-builtin-face              ((t (:foreground ,aozora-blue-3))))
   '(font-lock-comment-delimiter-face    ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-comment-face              ((t (:foreground ,aozora-gray-4))))
   `(font-lock-constant-face             ((t (:foreground ,aozora-blue-3))))
   '(font-lock-doc-face                  ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face        ((t (:foreground ,aozora-blue-5))))
   `(font-lock-keyword-face              ((t (:foreground ,aozora-blue-3))))
   '(font-lock-negation-char-face        ((t nil)))
   '(font-lock-preprocessor-face         ((t (:inherit (font-lock-builtin-face)))))
   '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
   '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
   `(font-lock-string-face               ((t (:foreground ,aozora-blue-4))))
   `(font-lock-type-face                 ((t (:foreground ,aozora-blue-5))))
   `(font-lock-variable-name-face        ((t (:foreground ,aozora-blue-6))))
   `(font-lock-warning-face              ((t (:foreground ,aozora-pink-2 :weight bold))))

   `(mode-line ((t (:foreground ,aozora-blue-5 :background ,aozora-blue-1
                                :box (:line-width -1 :color ,aozora-blue-2) :weight normal))))
   '(mode-line-buffer-id ((t (:weight bold))))
   '(mode-line-emphasis  ((t (:weight bold))))
   `(mode-line-highlight ((t (:box (:line-width 2 :color ,aozora-blue-1)))))
   `(mode-line-inactive  ((t (:inherit mode-line :background ,aozora-gray-1 :foreground ,aozora-blue-3 :weight light))))
   `(vertical-border     ((t (:foreground ,aozora-gray-3))))

   '(button       ((t (:inherit (link)))))
   `(link         ((t (:foreground ,aozora-blue-3 :underline t))))
   `(link-visited ((t (:inherit link :foreground ,aozora-blue-6))))
   `(fringe       ((t (:background ,aozora-white))))
   `(header-line  ((t (:inherit mode-line :background ,aozora-white :foreground ,aozora-blue-5 :box nil))))
   `(tooltip      ((t (:inherit variable-pitch :background ,aozora-blue-6 :foreground ,aozora-blue-5))))

   `(isearch        ((t (:background ,aozora-blue-7 :foreground ,aozora-white))))
   `(isearch-fail   ((t (:background ,aozora-pink-2 :foreground ,aozora-white))))
   `(lazy-highlight ((t (:background ,aozora-white))))
   `(match          ((t (:background ,aozora-blue-6 :foreground ,aozora-white))))
   '(next-error     ((t (:inherit (region)))))
   '(query-replace  ((t (:inherit isearch))))

   `(dired-directory ((t (:foreground ,aozora-blue-5 :background ,aozora-gray-1))))
   `(dired-flagged   ((t (:foreground ,aozora-white :background ,aozora-blue-5))))
   `(dired-header    ((t (:foreground ,aozora-blue-5 :background ,aozora-gray-1))))
   `(dired-mark      ((t (:foreground ,aozora-blue-7 :weight bold))))

   `(web-mode-doctype-face           ((t (:foreground ,aozora-blue-7))))
   `(web-mode-html-tag-face          ((t (:foreground ,aozora-blue-4))))
   `(web-mode-html-tag-bracket-face  ((t (:foreground ,aozora-blue-4))))
   `(web-mode-html-attr-name-face    ((t (:foreground ,aozora-blue-3))))
   `(web-mode-html-attr-value-face   ((t (:foreground ,aozora-blue-5))))
   `(web-mode-css-selector-face      ((t (:foreground ,aozora-blue-6))))
   `(web-mode-css-property-name-face ((t (:foreground ,aozora-blue-4))))
   `(web-mode-function-name-face     ((t (:foreground ,aozora-blue-5))))
   `(web-mode-function-call-face     ((t (:foreground ,aozora-blue-3))))

   `(org-meta-line            ((t (:foreground ,aozora-gray-3))))
   `(org-document-title       ((t (:foreground ,aozora-blue-5 :weight bold))))
   `(org-document-info        ((t (:foreground ,aozora-blue-5))))
   '(org-todo                 ((t (:inherit font-lock-warning-face :weight bold))))
   '(org-done                 ((t (:inherit font-lock-type-face :weight bold))))
   '(org-table                ((t (:inherit font-lock-function-name-face))))
   `(org-priority             ((t (:foreground ,aozora-blue-3 :weight bold))))
   `(org-date                 ((t (:foreground ,aozora-blue-5 :weight bold))))
   `(org-level-1              ((t (:foreground ,aozora-blue-7))))
   `(org-level-2              ((t (:foreground ,aozora-blue-6))))
   `(org-level-3              ((t (:foreground ,aozora-blue-5))))
   `(org-level-4              ((t (:foreground ,aozora-blue-4))))
   `(org-level-5              ((t (:foreground ,aozora-blue-3))))
   `(org-level-6              ((t (:foreground ,aozora-blue-2))))
   `(org-level-7              ((t (:foreground ,aozora-gray-3))))
   `(org-level-8              ((t (:foreground ,aozora-gray-2))))
   `(org-dispatcher-highlight ((t (:foreground ,aozora-pink-2 :weight bold))))

   `(ivy-current-match           ((t (:foreground ,aozora-white :background ,aozora-blue-5))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,aozora-blue-6 :background ,aozora-blue-1))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,aozora-blue-6 :background ,aozora-blue-2))))
   `(ivy-minibuffer-match-face-3 ((t (:foreground ,aozora-blue-6 :background ,aozora-blue-3))))
   `(ivy-minibuffer-match-face-4 ((t (:foreground ,aozora-blue-6 :background ,aozora-blue-4))))

   `(counsel-key-binding     ((t (:foreground ,aozora-pink-2 :weight bold))))
   `(counsel-outline-default ((t (:foreground ,aozora-blue-5))))

   `(completions-common-part ((t (:foreground ,aozora-blue-4))))

   '(corfu-annotations ((t (:underline nil))))
   `(corfu-current     ((t (:background ,aozora-gray-1))))

   `(mozc-cand-echo-area-annotation-face ((t (:foreground ,aozora-blue-6))))
   `(mozc-cand-echo-area-candidate-face  ((t (:foreground ,aozora-blue-4))))
   `(mozc-cand-echo-area-focused-face    ((t (:foreground ,aozora-blue-6 :background ,aozora-yellow))))
   `(mozc-cand-echo-area-shortcut-face   ((t (:foreground ,aozora-blue-6))))
   `(mozc-cand-echo-area-stats-face      ((t (:foreground ,aozora-blue-6 :background ,aozora-pink-1))))
   `(mozc-cand-overlay-description-face  ((t (:foreground ,aozora-gray-3 :background ,aozora-gray-1))))
   `(mozc-cand-overlay-even-face         ((t (:foreground ,aozora-gray-5 :background ,aozora-gray-1))))
   `(mozc-cand-overlay-focused-face      ((t (:foreground ,aozora-gray-5 :background ,aozora-gray-2))))
   `(mozc-cand-overlay-footer-face       ((t (:foreground ,aozora-gray-5 :background ,aozora-gray-3))))
   `(mozc-cand-overlay-odd-face          ((t (:foreground ,aozora-gray-5 :background ,aozora-gray-1))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'aozora)

;;; aozora-theme.el ends here
