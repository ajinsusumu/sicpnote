(define (range n)
  (define (iter r n)
    (cond
     ((> 0 n) r)
     (else
      (iter (cons n r) (- n 1))))
    )
  (iter '() (- n 1))
  )
