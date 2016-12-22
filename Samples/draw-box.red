Red [
    Title: "draw box sample"
    File: %draw-box.red
    Needs: 'View
]

top: 0
left: 0
bottom: 0
right: 0
apply: does [
  x: sort reduce [point1/offset/x point2/offset/x]
  y: sort reduce [point1/offset/y - 25 point2/offset/y - 25]
  cood/data: form reduce ["top:" y/1 "left:" x/1 "bottom:" y/2 "right:" x/2]
  top-left: to-pair reduce [x/1 y/1]
  bottom-right: to-pair reduce [x/2 y/2]
  box/image: draw 590x550 compose [
    pen black
    box (top-left) (bottom-right) 
  ]
]

view/options [
  cood: text "Drag the two squres!" 300x100
  return
  at 5x30 box: base 590x550 white
  at 5x30 point1: base 10x10 loose on-drag [ apply ]
  at 20x30 point2: base 10x10 loose on-drag [ apply ]
] [size: 600x600]