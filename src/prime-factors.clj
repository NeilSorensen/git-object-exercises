(ns primefactors)

(defn of
  ([n]
    (of [] n 2))
  ([factors n candidate]
    (cond
      (= n 1) factors
      (= 0 (rem n candidate)) (recur (conj factors candidate) (quot n candidate) candidate)
      (> candidate (Math/sqrt n)) (conj factors n)
      :else (recur factors n (inc candidate))
      )
   )
)
