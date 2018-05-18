

(define (iterative-improve good? improve)
  (define (ii x)
    (let ((im (improve x)))
      (if (good? x im)
          x
          (ii im))))
  (lambda (guess)
    (ii guess)))

(define (sqrtii x)
  ((iterative-improve
    (lambda (a b)
      (< (abs (- a b)) .0001))
    (lambda (y)
      (/ (+ y
            (/ x y))
         2.0))) 1.0))

(sqrtii 3)

(define (fixed-pointii f first-guess delta)
  ((iterative-improve
    (lambda (a b)
      (< (abs (- a b)) delta))
    f) first-guess))

(fixed-pointii
 (lambda (x)
   (+ x (/ 1.0 (expt 20 x))))
 1.0
 .0001
 )
