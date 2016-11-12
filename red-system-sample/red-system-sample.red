Red[
        Title:  "hello"
        Author: "jocko"
        File:   %hello-2.red
]
; --- lib imports -----
#system[
    #import [
        "user32.dll" stdcall [
            MessageBox: "MessageBoxA" [
                handle      [integer!] 
                text        [c-string!] 
                title       [c-string!]
                type        [integer!]
            return: [integer!]
            ]
        ]
    ]
]

; note the conversion from string to c-string : 
; as c-string! string/rs-head txt

alert: routine [
            txt [string!] 
            return: [integer!]][
        MessageBox 0 as c-string! string/rs-head txt "alert" 48 
]

confirm: routine [
            txt [string!] 
            return: [integer!] 
            /local rep [integer!]][
        rep: MessageBox 0 as c-string! string/rs-head txt "confirm" 4 
        if rep = 6 [rep: 1]  ; otherwise rep = 7
        rep
]

rep: 0

until [
    alert "hello, red world !"
    rep: confirm "quit ?"    
    rep = 1
] 