Red [
    Title: "print hello"
    Author: koba-yu
    File: %print-hello2.red
]

print-hello: func [][ 
    a: 1 ; the word 'a' is also used in %include2.red. 'a' is shared in both file.
    print "Hello World!"
]