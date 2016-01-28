;;;
;; Python
;;;

(elpy-enable)

;; (setq elpy-rpc-python-command "python3")

(elpy-use-ipython)

(setenv "WORKON_HOME" (concat (getenv "HOME") "/pythonenvs/"))
 
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(setq flycheck-check-syntax-automatically '(mode-enabled save))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

