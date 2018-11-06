;;; switch-to-previous-buffer-mode.el --- Alt-Tab for Buffers
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 1.0.2
;; Keywords: convenience
;; URL: https://github.com/EricCrosson/switch-to-previous-buffer-mode
;; Package-Requires: ((emacs "24"))
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; Provides a function `switch-to-previous-buffer' and a minor-mode
;; keymap for binding this function to.  There is no current
;; default-binding.

;;; Code:


(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently opened
buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


;;;###autoload
(define-minor-mode switch-to-previous-buffer-mode
  "Toggle Switch to Previous Buffer mode.
This mode provides a binding to invoke `switch-to-previous-buffer`."
  :init-value t
  :lighter nil
  :keymap (make-sparse-keymap)
  :global t
  :group 'switch-to-previous-buffer
  :require 'switch-to-previous-buffer-mode)


(provide 'switch-to-previous-buffer-mode)

;;; switch-to-previous-buffer-mode.el ends here
