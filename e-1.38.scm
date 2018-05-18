(load "util.scm")

(define (con-frac-iter n d k)
  (define (iter i r)
    (cond
     ((= 0 i) r)
     (else
      (iter (- i 1)
            (/ (n i) (+ (d i) r))
            ))
     )
    )
  (iter k 0)
  )

(define (con-frac n d k)
  (define (recurse i)
    (cond
     ((> i k) 0)
     (else
      (/ (n i) (+ (d i) (recurse (+ i 1)))))
     ) 
    )
  (recurse 1)
  )


(define (cfi n)
  (con-frac-iter
   (lambda (x) 1.0)
   (lambda (x)
     (cond
      ((= (remainder x 3) 2) (* (+ (/ x 3) 1) 2))
      (else 1)))
   n
  ))

;; (cfi 12)
(map (lambda (x) (+ 2 (cfi x))) (range 20))
