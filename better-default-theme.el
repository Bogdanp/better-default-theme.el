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
      (gray-1 "#E9E9E9") (yellow-1 "yellow1")
      (green-1 "ForestGreen") (red-1 "red1")
      (black "black") (white "white"))
  (custom-theme-set-faces
   'better-default

   ;; git-gutter
   `(git-gutter:added ((t (:foreground ,green-1 :background ,white))))

   ;; hl-line
   `(hl-line ((t (:background ,hl-line))))

   ;; ido
   `(ido-first-match ((t (:foreground ,red-1))))

   ;; isearch
   `(isearch ((t (:foreground ,black :background ,yellow-1))))

   ;; shm
   `(shm-current-face ((t (:background ,gray-1))))
   `(shm-quarantine-face ((t (:background ,gray-1))))

   ;; web-mode
   `(web-mode-current-element-highlight-face ((t (:background ,gray-1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'better-default)
;;; better-default-theme.el ends here
