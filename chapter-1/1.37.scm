(define (cont-frac n d k)
  (define (cont-frac-recur n d i k)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (cont-frac-recur n d (+ 1 i) k)))))
  (define (cont-frac-iter n d k result)
    (if (= k 0)
        result
        (cont-frac-iter n d (- k 1) (/ (n k) (+ (d k) result)))))
  ; (a)
  ; (cont-frac-recur n d 1 k))
  ; (b)
  (cont-frac-iter n d k 0))