; Exercise 1.16.
;
; Design a procedure that evolves an iterative exponentiation process that uses successive
; squaring and uses a logarithmic number of steps, as does fast-expt.
; (Hint: Using the observation that (b^(n/2))^2 = (b^2)^(n/2), keep, along with the exponent
; n and the base b, an additional state variable a, and define the state transformation in
; such a way that the product a bn is unchanged from state to state. At the beginning of
; the process a is taken to be 1, and the answer is given by the value of a at the end of the
; process. In general, the technique of defining an invariant quantity that remains unchanged
; from state to state is a powerful way to think about the design of iterative algorithms.)
;

;;    b    ^     n
;;=   (b^2) ^ (n/2)
;;=b* b    ^ (n - 1)


(define (square x)
  (* x x))

(define (fast-expt x n)
  (cond
   ((= 0 n) 1)
   ((odd? n) (* x (fast-expt x (- n 1))))
   (else
    (square (fast-expt x (/ n 2))))
    ))

(define (fas-expt x n)
  (define (expt a b n)
    (cond
     ((= 0 n) a)
     ((odd? n) (expt (* a b) b (- n 1)))
     (else
      (expt a (square b) (/ n 2)))))
  (expt 1 x n))
