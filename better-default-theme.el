;;; better-default-theme.el --- Small adjustments to the default EMACS theme
;;
;; Copyright (c) 2015 Bogdan Popa
;;
;; Author: Bogdan Popa <popa.bogdanp@gmail.com>
;; Version: 0.1.0
;; Keywords: themes
;; URL: https://github.com/bogdanp/better-default-theme.el
;;
;; This file is NOT part of GNU Emacs.
;;
;;; License:
;;
;; Permission is hereby granted, free of charge, to any person obtaining a
;; copy of this software and associated documentation files (the "Software"),
;; to deal in the Software without restriction, including without limitation
;; the rights to use, copy, modify, merge, publish, distribute, sublicense,
;; and/or sell copies of the Software, and to permit persons to whom the
;; Software is furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;; DEALINGS IN THE SOFTWARE.
;;
;;; Commentary:
;;; Code:

(deftheme better-default
  "Small adjustments to the default EMACS theme.")

(let ((hl-line "#F9F9F9")
      (gray-1 "#E9E9E9") (gray-3 "#999999") (gray-4 "#555555")
      (yellow-1 "yellow1") (orange-1 "orange")
      (green-1 "ForestGreen") (red-1 "red1") (purple-3 "purple3") (purple-4 "purple4")
      (blue "blue") (black "black") (white "white"))
  (custom-theme-set-faces
   'better-default

   ;; evil
   `(evil-ex-lazy-highlight ((t (:foreground ,black :background ,yellow-1 :underline ,orange-1))))
   `(evil-ex-substitute-matches ((t (:foreground ,black :background ,yellow-1 :underline ,orange-1))))
   `(evil-ex-substitute-replacement ((t (:foreground ,red-1 :background ,white :underline t))))

   ;; helm
   `(helm-selection ((t (:background ,hl-line))))
   `(helm-source-header ((t (:background ,purple-3 :foreground ,white :box (:line-width 1 :color ,purple-4 :style released-button)))))
   `(helm-ff-dotted-directory ((t (:foreground ,gray-3))))
   `(helm-ff-directory ((t (:foreground ,gray-4))))
   `(helm-ff-executable ((t (:foreground ,green-1))))
   `(helm-ff-symlink ((t (:foreground ,blue))))
   `(helm-grep-finish ((t (:foreground ,purple-4))))
   `(helm-locate-finish ((t (:foreground ,purple-4))))

   ;; helm-swoop
   `(helm-swoop-target-line-block-face ((t (:background ,gray-1))))
   `(helm-swoop-target-line-face ((t (:background ,hl-line))))
   `(helm-swoop-target-word-face ((t (:foreground ,black :background ,yellow-1 :underline ,orange-1))))

   ;; git-gutter
   `(git-gutter:added ((t (:foreground ,green-1 :background ,white))))

   ;; hl-line
   `(hl-line ((t (:background ,hl-line))))

   ;; ido
   `(ido-first-match ((t (:foreground ,red-1))))

   ;; isearch
   `(isearch ((t (:foreground ,black :background ,yellow-1 :underline ,orange-1))))

   ;; paren
   `(show-paren-match ((t (:foreground ,black :background ,yellow-1))))

   ;; shm
   `(shm-current-face ((t (:background ,gray-1))))
   `(shm-quarantine-face ((t (:background ,gray-1))))

   ;; web-mode
   `(web-mode-current-element-highlight-face ((t (:background ,gray-1))))
   `(web-mode-symbol-face ((t (:foreground ,red-1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'better-default)
;;; better-default-theme.el ends here
