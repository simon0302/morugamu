#lang racket

(require
  2htdp/image
  "../rule-systems/card-designs.rkt"
  "../rule-systems/rules.rkt"
  "./printing-util.rkt"
  
  (prefix-in bool: "../rule-systems/boolean-algebra-cards.rkt")
  (prefix-in bool: "../themes/emoji-boolean-algebra.rkt")
  (prefix-in bool: "../puzzles/boolean-algebra-puzzles.rkt")
  
  (prefix-in numb: "../rule-systems/clock-number-cards.rkt")
  (prefix-in numb: "../themes/emoji-clock-arithmetic.rkt")
  ;clock arithmetic puzzles here

  (prefix-in ineq: "../rule-systems/inequality-cards.rkt")
  (prefix-in ineq: "../themes/emoji-inequality.rkt")
  ;inequality puzzles here
 
  (prefix-in list: "../rule-systems/list-algebra-cards.rkt")
  (prefix-in list: "../themes/emoji-list-algebra.rkt")
  (prefix-in list: "../puzzles/list-algebra-puzzles.rkt")
  )



(define cards
  ;(cards->pages ;BROKEN???
   (number-all (append (rest (bool:render bool:theme))                 
                       (rest (numb:render numb:theme))
                       (rest (list:render list:theme))
                       (rest (ineq:render #f))))
)


(define tiles
  (list (first (bool:render bool:theme))
         (first (numb:render numb:theme))
         (first (list:render list:theme))
         (first (ineq:render #f)))) 

(append tiles cards)




