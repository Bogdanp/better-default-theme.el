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

(deftheme better-default-theme
  "Small adjustments to the default EMACS theme.")

(let ((hl-line "#F9F9F9")
      (red-1 "red1"))
  (custom-theme-set-faces
   'better-default-theme

   `(hl-line ((t (:background ,hl-line))))
   `(ido-first-match ((t (:foreground ,red-1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'better-default-theme)
;;; better-default-theme.el ends here
