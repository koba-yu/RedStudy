Red [
	Title: "get the last word of a sentence"
	Author: "koba-yu"
	File: %get-sentence-last.red
]

neither-space-dot: charset [not " ."]
space: charset " "
dot: charset "."
none-spaces: [some neither-space-dot]
ending: [some neither-space-dot "."]

parse "This is a pen." [collect [any[
			keep ending
			| none-spaces
			| space
			| dot
		]
	]
]
