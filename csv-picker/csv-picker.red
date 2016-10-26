Red [
    Title: "csv-picker"
    Author: "koba-yu"
    File: %csv-picker.red
]

lines: read/lines %sample.csv
take lines ; first row data is header and unnecessary, so just take.

make-record: func [record [string!] return: [hash!] /local row map][
    row: split record #","
    map: #()
    put map 'name take row
    put map 'surname take row
    put map 'e-mail take row
    put map 'city take row
    copy map
]

csv: #()
repeat count length? lines [ put csv count - 1 make-record take lines ]

pick-csv: func [csv [map!] index [integer!] 'word [word!] return: [string!]][
    select select csv index word
]

; you can pick csv data as follows.
pick-csv csv 0 name 
; returns "Taro"
pick-csv csv 1 name
; returns "Jiro"