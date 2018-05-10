
(define close-enough?
  (lambda (a b delta) (< (abs (- a b)) delta)))

(define (fixed-point f first-guess delta)
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next delta)
          next
          (try next))))
  (try first-guess))

(define (average a b) (/ (+ a b) 2.0))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(fixed-point
 (average-damp
  (lambda (x)
    (/ 9.0 x))) 1 .0001)

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (lambda (x)
    (if (= 0 n) x ((compose f (repeated f (- n 1))) x))
    )
  )

(define (nth-roots x n)
  (define (f y)
    (/ x
       (expt y (- n 1))))
  (fixed-point ((repeated average-damp 2) f) 1.0 .0001))

(nth-roots 9.0 4)
