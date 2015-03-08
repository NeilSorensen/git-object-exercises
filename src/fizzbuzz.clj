(defn divisible? [number, by]
  (zero? (rem number by)))

(defn fizz? [number]
  (divisible? number 3))

(defn buzz? [number]
  (divisible? number 5))

(defn fizz-buzz? [number]
  (and (fizz? number) (buzz? number)))

(defn fizz-buzz [number]
  (cond
    fizz-buzz? "fizzbuzz"
    fizz? "fizz"
    buzz? "buzz"
    :else number))

(defn run-fizz-buzz []
  (map fizz-buzz (range 1 100))
