Red [
    Title: "include test"
    Author: koba-yu
    File: %include3.red
]

; This script should be compiled to run.

a: 0
print a
#include %print-hello3.red ; introduce content of %print-hello.red
print-hello ; defined in %print-hello.red
print a