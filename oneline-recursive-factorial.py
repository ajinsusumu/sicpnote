# *Exercise 4.21:* Amazingly, Louis's intuition in *Note Exercise
# 4-20:: is correct.  It is indeed possible to specify recursive
# procedures without using `letrec' (or even `define'), although the
# method for accomplishing this is much more subtle than Louis
# imagined.  The following expression computes 10 factorial by
# applying a recursive factorial procedure:(4)

#      ((lambda (n)
#         ((lambda (fact)
#            (fact fact n))
#          (lambda (ft k)
#            (if (= k 1)
#                1
#                (* k (ft ft (- k 1)))))))
#       10)


print(
    (lambda n: (
        (lambda fact: fact(fact,n))
        (lambda ft,k: 1 if k==1 else k*ft(ft,k-1))
    ))(10)
    )

print(
    (lambda n: (
        (lambda fact: fact(fact,n,1))
        (lambda ft,k,r: r if k==1 else ft(ft,k-1,r*k))
    ))(10)
    )
