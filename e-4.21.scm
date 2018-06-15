;; factorial
((lambda (n)
   ((lambda (fact)
      (fact fact n))
    (lambda (ft k)
      (if (= k 1)
          1
          (* k (ft ft (- k 1)))))))
 10)


;; fib
((lambda (n)
   ((lambda (fib)
      (fib fib n))
    (lambda (ft k)
      (if (< k 2)
          k
          (+ (ft ft (- k 1)) (ft ft (- k 2)))))))
 10)

(define (fib k)
  (if (< k 2)
      k
      (+ (fib (- k 1)) (fib (- k 2)))))

(fib 0)
(fib 1)
(fib 2)
(fib 3)
