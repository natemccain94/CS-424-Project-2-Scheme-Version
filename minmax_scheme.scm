; Nate McCain
; 04/25/2017
; CS 424, Section 2 (Tuesday/Thursday)
; This program calculates the minimum and maximum values
; of a list. Minimax sets up a call to minmax_work (which 
; does the real work).
; An example call to this function is:
; (minmax ‘(1 2 3 4 5))
; This would yield the result: (1 5)

(define (minmax_work lis min max)
	(cond
		((null? lis) (list min max))
		((< (car lis) min) (minmax_work (cdr lis) (car lis) max))
		((> (car lis) max) (minmax_work (cdr lis) min (car lis)))
		(else (minmax_work (cdr lis) min max))
	)
)

(define (minmax lis)
  (minmax_work (cdr lis) (car lis) (car lis))
)