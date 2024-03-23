(lang dune 3.8)

(using melange 0.1)

(generate_opam_files true)

(name helloworld-sample)

(license "MIT")

(maintainers Thibaut Mattio)

(authors Thibaut Mattio)

(homepage https://github.com/tmattio/helloworld-sample)

(bug_reports https://github.com/tmattio/helloworld-sample/issues)

(package
 (allow_empty)
 (name helloworld-sample)
 (synopsis "HelloWorld example for VS Code")
 (description "HelloWorld example for VS Code")
 (depends melange))
