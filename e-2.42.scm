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

(define (ns n)
  (if (= 0 n) '() (cons '() (ns (- n 1)))))

(define (queens board-size)
  (define empty-board (ns board-size))

  (define (adjoin-position row k board)
    (append-col board
                (new-col row board-size '())
                ))

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


(define (append-col board col)
  (if (null? board)
      '()
      (cons (cons (car col) (car board))
            (append-col (cdr board) (cdr col)))))

(define (first-col board)
  (map (lambda (x) (car x)) board))

(define (rest-board board)
  (map (lambda (x) (cdr x)) board))

(define (row-q col)
  (define (f row col)
    (if (= 1 (car col))
        row
        (f (+ 1 row) (cdr col))))
  (f 1 col))

(define (safe? k board)
  (define (check-col? r1 r2 r3 col)
    (cond
     ((null? col) #f)
     ((and
       (or
        (= 1 r1)
        (= 1 r2)
        (= 1 r3))
       (= 1 (car col)) #t))
     (else
      (check-col? (- r1 1) (- r2 1) (- r3 1) (cdr col)))))

  (define (check-front-column? r board)
    (define (f r1 r2 r3 b)
      (if (null? (car b))
          #f
          (or
           (check-col? r1 r2 r3 (first-col b))
           (f (- r1 1) r2 (+ r3 1) (rest-board b)))))
    (f (- r 1) r (+ r 1) board))

  (let ((row (row-q (first-col board)))
        (rest (rest-board board)))
    (not
     (check-front-column? row rest))))

(define (new-col row size r)
  (if (= 0 size)
      r
      (new-col
       row
       (- size 1)
       (cons (if (= size row)
                 1
                 0) r)))
  )


(accumulate + 0 (map (lambda (x) 1) (queens 8)))
