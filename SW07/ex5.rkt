;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define a-list (list (list 1 2 3) (list 1 2) (list 1 2 3 4)))

(map (lambda (other-list) (cons 0 other-list)) a-list)
