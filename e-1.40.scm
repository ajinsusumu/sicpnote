(define dx 0.0001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define close-enough?
  (lambda (a b delta) (< (abs (- a b)) delta)))

(define (fixed-point f first-guess delta)
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next delta)
          next
          (try next))))
  (try first-guess))

(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess 0.0001))

(define (cubic a b c)
  (lambda (x)
    (+
     (expt x 3)
     (* a (expt x 2))
     (* b x)
     c)))

(newtons-method (cubic -9 27 -27) 1)
