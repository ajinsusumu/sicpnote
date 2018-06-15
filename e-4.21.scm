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


(define (f x)
  ((lambda (even? odd?)
     (even? even? odd? x))
   (lambda (ev? od? n)
     (if (= n 0) true (od? ev? od? (- n 1))))
   (lambda (ev? od? n)
     (if (= n 0) false (ev? ev? od? (- n 1))))))

true
false
(f 0)
(f 1)
(f 2)
(f 3)
