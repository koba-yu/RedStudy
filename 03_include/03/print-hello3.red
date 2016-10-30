Red [
    Title: "print hello"
    Author: koba-yu
    File: %print-hello3.red
]

; define 'a' as '/local'. it is prevent from being shared in outer scope of function.
print-hello: func [/local a][  
    a: 1 ; change for 'a' is not shared in %include3.red
    print "Hello World!"
]