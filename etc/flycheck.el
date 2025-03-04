(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-jshint 'espresso-mode)

;; disable json-jsonlist checking for json files
;(setq-default flycheck-disabled-checkers
;  (append flycheck-disabled-checkers
;    '(json-jsonlist)))
