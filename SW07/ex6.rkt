;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define rect-calc-list
	(list (lambda (a b) (* a b)) (lambda (a b) (* 2 (+ a b))))
)

(define (calc-a-list functionlist a b)
	(begin (map (lambda (func) (pretty-print (func a b))) functionlist)
         (display "finished"))
)