; Exercise 1.18
;
; Using the results of exercises 1.16 and 1.17, devise a procedure that generates 
; an iterative process for multiplying two integers in terms of adding, doubling, 
; and halving and uses a logarithmic number of steps.

;; if b = 0, return 0
;;
;;   r       + a * 2^n   * b
;;   0       + a * 2^(0) * b,        initial condition
;; = r       + a * 2^(n+1) * b/2,    if b is even
;; = r+a*2^n + a * 2^n     * (b-1),  if b is odd

;;   r       + a * m   * b
;;   0       + a * 1 * b,        initial condition
;; = r       + a * 2m * b/2,    if b is even
;; = r+a*m   + a * m  * (b-1),  if b is odd
;;
;; = (r+a)   + a * (b-1)
;; = r       + (2^n)*a * b/(2^n)


;; r     +     s     *      2     ^     n


(define (div a b)
  (floor (/ a b)))
(define (double x) (+ x x))
(define (halve x) (div x 2))

(define (qmu a b)
  (define (qm r am b)
    (cond
     ((= 0 b) r)
     ((even? b) (qm r                  (double am) (halve b)))
     (else      (qm (+ r am)           (double am) (halve b))))
    )
  (qm 0 a b)
  )


(define (qmu2 a b)
  (define (qm r am a b)
    (cond
     ((= 0 b) r)
     ((even? b) (qm r                  (double am) a (halve b)))
     (else      (qm (+ r am)           am          a (- b 1))))
    )
  (qm 0 a a b)
  )

(define (qmu1 a b)
  (define (qm r m am a b)
    (cond
     ((= 0 b) r)
     ((even? b) (qm r                  (double m) (double am) a (halve b)))
     (else      (qm (+ r am)           m          am          a (- b 1))))
    )
  (qm 0 1 a a b)
  )

(define (qmul a b)
  (cond
   ((= 0 b) 0)
   ((even? b) (qmul (double a) (halve b)))
   (else (+ a (qmul (double a) (halve (- b 1)))))
  ))

(display (* 23 46))
(display (qmul 23 46))
(display (qmu 23 46))
