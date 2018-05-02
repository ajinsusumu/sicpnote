; Exercise 1.17.
;
; The exponentiation algorithms in this section are based on
; performing exponentiation by means of repeated multiplication.
; In a similar way, one can perform integer multiplication by means of repeated addition. 
; The following multiplication procedure (in which it is assumed that our language can only add, not multiply) 
; is analogous to the expt procedure:

; (define (* a b)
;   (if (= b 0)
;       0
;       (+ a (* a (- b 1)))))

; This algorithm takes a number of steps that is linear in b.
; Now suppose we include, together with addition, operations double,
; which doubles an integer, and halve, which divides an (even) integer by 2.
; Using these, design a multiplication procedure analogous to
; fast-expt that uses a logarithmic number of steps.


;;       a *      b
;; =     a * 2 * (b/2)
;; = a + a *     (b-1)


(define (double x) (+ x x))

(define (fas-mult a b)
  (define (mult r a b)
    (cond
     ((= 0 b) r)
     ((even? b) (mult r (double a) (/ b 2)))
     (else (mult a a (- b 1)))))
  (mult 0 a b)
  )


(define (fast-mult a b)
  (cond
   ((= 0 b) 0)
   ((even? b) (double (fast-mult a (/ b 2))))
   (else (+ a (fast-mult a (- b 1))))
   )
  ) 

(display (* 23 46))
(display (fast-mult 23 46))
(display (fas-mult 23 46))
