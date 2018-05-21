(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(define (enumerate-interval-iter a b)
  (if (> a b)
      '()
      (cons a (enumerate-interval (+ a 1) b))
      )
  )

(define (enumerate-interval a b)
  (define (f r a b)
    (if (< b a)
        r
        (f (cons b r) a (- b 1)))
    )
  (f '() a b)
  )

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board '())

(define (adjoin-position row k board)
  (cons row board))

(define (safe? k board)
  (define (f r1 r2 r3 b)
    (if (null? b)
        #t
        ((lambda (x)
           (and
            (not (or (= r1 x) (= r2 x) (= r3 x)))
            (f (- r1 1) r2 (+ r3 1) (cdr b))))
         (car b))))

  (let ((r (car board)))
    (f (- r 1) r (+ r 1) (cdr board))))

(accumulate + 0 (map (lambda (x) 1)
                     (queens 13)
                     ))
