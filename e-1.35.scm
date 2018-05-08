(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((t (f guess)))
      (if (close-enough? guess t)
          t
          (try t)
          )))
  (try first-guess)
  )

(define (average a b) (/ (+ a b) 2.0))

;(fixed-point (lambda (y) (average y (/ 10 y)))  1)
(fixed-point (lambda (x) (+ 1 (/ 1.0 x))) 1)
