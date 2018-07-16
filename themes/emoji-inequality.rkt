#lang racket

(require 2htdp/image
         "../rule-systems/inequality-cards.rkt")

(provide theme)

(define theme
  (list
   (bitmap "./emojis/equals.png")
   (bitmap "./emojis/GreaterThan.png")
   (bitmap "./emojis/LessThan.png")
   (bitmap "./emojis/max.png")
   (bitmap "./emojis/min.png")
   (bitmap "./emojis/not.png")
   )
  )