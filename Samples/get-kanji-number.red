Red [
	Title: "Convert number to Japanese kanji number"
	Author: "Koba-yu"
	File: %get-kanji-number.red
]

; 数字から漢数字に変換するためのハッシュ
kansuji-map: make hash! [
	#"0" ""
	#"1" "一"
	#"2" "二"
	#"3" "三"
	#"4" "四"
	#"5" "五"
	#"6" "六"
	#"7" "七"
	#"8" "八"
	#"9" "九"
]

; 桁数の数値から漢字を取得するためのハッシュ
keta-map: make hash! [
	1 ""
	2 "十"
	3 "百"
	4 "千"
]

; パースに使う文字セット
zero: #"0"							; 0
one: #"1"							; 1
one-to-nine: charset [#"1" - #"9"]	; 1から9
two-to-nine: charset [#"2" - #"9"]	; 2から9

; 数値から漢数字の表現に置き換える関数
get-kanji-number: func [num [integer!] return: [string!]] [
	num-text: mold num 				; 数値を文字列化
	keta: (length? num-text) + 1 	; 文字列の長さ +1 に桁数のインデックスをセット。

	; パース部分
	rejoin parse num-text [collect [any [
				(keta: keta - 1)	; 1文字処理するごとに桁数を -1 する
				zero ; 0の場合は常に何もしない
				| set current one-to-nine end keep (select kansuji-map current) ; 1の位が 1 ～ 9 の場合の処理
				| one keep (select keta-map keta)	; １の位以外が１の場合の処理
				| set current two-to-nine keep (rejoin [select kansuji-map current select keta-map keta]) ; その他の場合
			]
		]
	]
]

; 1000まで繰り返し結果をblock!に格納
kanji-numbers: []
repeat count 1000 [
	append kanji-numbers get-kanji-number count
]

; 結果をファイルに書き込む
; カレントディレクトリを変更していなければ、出力フォルダは「C:\ProgramData\Red」になります。
write/lines to-red-file %"test.txt" kanji-numbers