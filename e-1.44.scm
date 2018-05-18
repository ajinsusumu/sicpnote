(define (smooth f dx)
  (lambda (x)
    (/
     (+ (f (- x dx))
        (f x)
        (f (+ x dx)))
     3.0)))
;; ((repeated (smooth f dx) 10) x)
