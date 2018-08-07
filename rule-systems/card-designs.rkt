#lang racket

(provide render-symbol
         symbol-page
         lparen
         rparen
         get-lparen
         get-rparen
         get-all-symbols
         define-tile
         define-meta-tile
         set-symbol-map!
         make-icon)

(require 2htdp/image)
(require "../util/config.rkt")

(define (scale-to s i)
  (define m (max (image-width i)
                 (image-height i)))
  (scale (/ s m ) i))

(define (card i)
  (overlay
   (scale-to (- CARD-SIZE 20) i)
   (square CARD-SIZE "outline"
           (pen "black" 10 "solid" "round" "bevel"))
   (square (add1 TOTAL-CARD-SIZE) "outline" "white")))

(define lparen (card (text "(" 70 "black")))
(define rparen (card (text ")" 70 "black")))

;Abstract symbols...
(define symbol-map (hash ))

(define (set-symbol-map! k v)
  (set! symbol-map (hash-set symbol-map k v)))

(define-syntax-rule (define-tile name symbol image)
  (begin
    (define name
      (card image))
    (set-symbol-map! symbol name)))

(define-syntax-rule (define-meta-tile name symbol image)
  (begin
    (define name image)
    (set-symbol-map! symbol name)))


(define (render-symbol s)
  (define (fix-bools s)
    (cond [(equal? s #t) 'T]
          [(equal? s #f) 'F]
          [else s]))
  (hash-ref symbol-map (fix-bools s) (make-icon s)))


(define (all-symbols)
  (hash-values symbol-map))

(define (row i n)
  (apply beside (map (thunk* i) (range n))))


;start of accessor functions
(define (get-rparen)
  rparen)

(define (get-lparen)
  lparen)

(define (get-all-symbols)
  (all-symbols))
;end of accessor functions


(define (symbol-page)
  (apply above
         (append
          (list 
           (row lparen 6)
           (row rparen 6))

          (map (curryr row 6) (all-symbols)))))

(define (make-icon s)
  (text (format "~a" s) 24 'black))

(define-tile the-x  'x
  (square 50 "solid" "green"))

(define-tile the-y  'y
  (square 50 "solid" "red"))

(define-tile the-a  'a
  (square 50 "solid" "blue"))

(define-tile the-b  'b
  (square 50 "solid" "yellow"))


(define-tile the-n_1  'n_1
  (square 50 "solid" "green"))

(define-tile the-n_2  'n_2
  (square 50 "solid" "red"))

(define-tile the-number_1  'number_1
  (square 50 "solid" "green"))

(define-tile the-number_2  'number_2
  (square 50 "solid" "red"))

(define-tile the-any_1  'any_1
  (square 50 "solid" "green"))

(define-tile the-any_2  'any_2
  (square 50 "solid" "red"))

