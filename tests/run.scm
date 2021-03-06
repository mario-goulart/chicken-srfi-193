(import test)
(import srfi-193)

(test-group
 "command"
 (test "command-line is given"
       #t
       (pair? (command-line)))
 (test "command-name is given"
       #t
       (string? (command-name)))
 (test "command-args is a list"
       #t
       (list? (command-args)))
 (test "overriding command-line works"
       '("foo" "bar")
       (parameterize ((command-line '("foo" "bar")))
         (command-line))))

(test-group
 "script"
 (test "script-file is given"
       #t
       (string? (script-file)))
 (test "script-directory is given"
       #t
       (string? (script-directory))))

(test-exit)
