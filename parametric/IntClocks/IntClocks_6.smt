; Quantified encoding for IntClocks example of size 6
; Simulates bounded model checking run of length 6*10
; Created Thu Apr 30 15:16:11 CEST 2020 by andrey

(declare-datatypes () ((Values p0 p1 p2 p3 p4 p5 )))
(define-fun none () (Array Values Int)
    ((as const (Array Values Int)) 0))

(define-fun all () (Array Values Int)
    ((as const (Array Values Int)) 10))

(declare-const c0 (Array Values Int))
(assert (= c0 none))

(declare-const c1 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c1 x) (ite (< (select c0 x) 10) (+ (select c0 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c1 y) (select c0 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c1 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c1 y) (select c0 y))
        )
      )
    )
  )
))

(push)
(assert (= c1 all))
(check-sat)
(pop)

(declare-const c2 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c2 x) (ite (< (select c1 x) 10) (+ (select c1 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c2 y) (select c1 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c2 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c2 y) (select c1 y))
        )
      )
    )
  )
))

(push)
(assert (= c2 all))
(check-sat)
(pop)

(declare-const c3 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c3 x) (ite (< (select c2 x) 10) (+ (select c2 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c3 y) (select c2 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c3 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c3 y) (select c2 y))
        )
      )
    )
  )
))

(push)
(assert (= c3 all))
(check-sat)
(pop)

(declare-const c4 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c4 x) (ite (< (select c3 x) 10) (+ (select c3 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c4 y) (select c3 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c4 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c4 y) (select c3 y))
        )
      )
    )
  )
))

(push)
(assert (= c4 all))
(check-sat)
(pop)

(declare-const c5 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c5 x) (ite (< (select c4 x) 10) (+ (select c4 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c5 y) (select c4 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c5 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c5 y) (select c4 y))
        )
      )
    )
  )
))

(push)
(assert (= c5 all))
(check-sat)
(pop)

(declare-const c6 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c6 x) (ite (< (select c5 x) 10) (+ (select c5 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c6 y) (select c5 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c6 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c6 y) (select c5 y))
        )
      )
    )
  )
))

(push)
(assert (= c6 all))
(check-sat)
(pop)

(declare-const c7 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c7 x) (ite (< (select c6 x) 10) (+ (select c6 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c7 y) (select c6 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c7 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c7 y) (select c6 y))
        )
      )
    )
  )
))

(push)
(assert (= c7 all))
(check-sat)
(pop)

(declare-const c8 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c8 x) (ite (< (select c7 x) 10) (+ (select c7 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c8 y) (select c7 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c8 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c8 y) (select c7 y))
        )
      )
    )
  )
))

(push)
(assert (= c8 all))
(check-sat)
(pop)

(declare-const c9 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c9 x) (ite (< (select c8 x) 10) (+ (select c8 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c9 y) (select c8 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c9 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c9 y) (select c8 y))
        )
      )
    )
  )
))

(push)
(assert (= c9 all))
(check-sat)
(pop)

(declare-const c10 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c10 x) (ite (< (select c9 x) 10) (+ (select c9 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c10 y) (select c9 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c10 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c10 y) (select c9 y))
        )
      )
    )
  )
))

(push)
(assert (= c10 all))
(check-sat)
(pop)

(declare-const c11 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c11 x) (ite (< (select c10 x) 10) (+ (select c10 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c11 y) (select c10 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c11 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c11 y) (select c10 y))
        )
      )
    )
  )
))

(push)
(assert (= c11 all))
(check-sat)
(pop)

(declare-const c12 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c12 x) (ite (< (select c11 x) 10) (+ (select c11 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c12 y) (select c11 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c12 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c12 y) (select c11 y))
        )
      )
    )
  )
))

(push)
(assert (= c12 all))
(check-sat)
(pop)

(declare-const c13 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c13 x) (ite (< (select c12 x) 10) (+ (select c12 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c13 y) (select c12 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c13 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c13 y) (select c12 y))
        )
      )
    )
  )
))

(push)
(assert (= c13 all))
(check-sat)
(pop)

(declare-const c14 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c14 x) (ite (< (select c13 x) 10) (+ (select c13 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c14 y) (select c13 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c14 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c14 y) (select c13 y))
        )
      )
    )
  )
))

(push)
(assert (= c14 all))
(check-sat)
(pop)

(declare-const c15 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c15 x) (ite (< (select c14 x) 10) (+ (select c14 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c15 y) (select c14 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c15 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c15 y) (select c14 y))
        )
      )
    )
  )
))

(push)
(assert (= c15 all))
(check-sat)
(pop)

(declare-const c16 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c16 x) (ite (< (select c15 x) 10) (+ (select c15 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c16 y) (select c15 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c16 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c16 y) (select c15 y))
        )
      )
    )
  )
))

(push)
(assert (= c16 all))
(check-sat)
(pop)

(declare-const c17 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c17 x) (ite (< (select c16 x) 10) (+ (select c16 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c17 y) (select c16 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c17 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c17 y) (select c16 y))
        )
      )
    )
  )
))

(push)
(assert (= c17 all))
(check-sat)
(pop)

(declare-const c18 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c18 x) (ite (< (select c17 x) 10) (+ (select c17 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c18 y) (select c17 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c18 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c18 y) (select c17 y))
        )
      )
    )
  )
))

(push)
(assert (= c18 all))
(check-sat)
(pop)

(declare-const c19 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c19 x) (ite (< (select c18 x) 10) (+ (select c18 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c19 y) (select c18 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c19 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c19 y) (select c18 y))
        )
      )
    )
  )
))

(push)
(assert (= c19 all))
(check-sat)
(pop)

(declare-const c20 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c20 x) (ite (< (select c19 x) 10) (+ (select c19 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c20 y) (select c19 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c20 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c20 y) (select c19 y))
        )
      )
    )
  )
))

(push)
(assert (= c20 all))
(check-sat)
(pop)

(declare-const c21 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c21 x) (ite (< (select c20 x) 10) (+ (select c20 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c21 y) (select c20 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c21 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c21 y) (select c20 y))
        )
      )
    )
  )
))

(push)
(assert (= c21 all))
(check-sat)
(pop)

(declare-const c22 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c22 x) (ite (< (select c21 x) 10) (+ (select c21 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c22 y) (select c21 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c22 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c22 y) (select c21 y))
        )
      )
    )
  )
))

(push)
(assert (= c22 all))
(check-sat)
(pop)

(declare-const c23 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c23 x) (ite (< (select c22 x) 10) (+ (select c22 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c23 y) (select c22 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c23 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c23 y) (select c22 y))
        )
      )
    )
  )
))

(push)
(assert (= c23 all))
(check-sat)
(pop)

(declare-const c24 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c24 x) (ite (< (select c23 x) 10) (+ (select c23 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c24 y) (select c23 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c24 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c24 y) (select c23 y))
        )
      )
    )
  )
))

(push)
(assert (= c24 all))
(check-sat)
(pop)

(declare-const c25 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c25 x) (ite (< (select c24 x) 10) (+ (select c24 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c25 y) (select c24 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c25 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c25 y) (select c24 y))
        )
      )
    )
  )
))

(push)
(assert (= c25 all))
(check-sat)
(pop)

(declare-const c26 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c26 x) (ite (< (select c25 x) 10) (+ (select c25 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c26 y) (select c25 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c26 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c26 y) (select c25 y))
        )
      )
    )
  )
))

(push)
(assert (= c26 all))
(check-sat)
(pop)

(declare-const c27 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c27 x) (ite (< (select c26 x) 10) (+ (select c26 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c27 y) (select c26 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c27 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c27 y) (select c26 y))
        )
      )
    )
  )
))

(push)
(assert (= c27 all))
(check-sat)
(pop)

(declare-const c28 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c28 x) (ite (< (select c27 x) 10) (+ (select c27 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c28 y) (select c27 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c28 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c28 y) (select c27 y))
        )
      )
    )
  )
))

(push)
(assert (= c28 all))
(check-sat)
(pop)

(declare-const c29 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c29 x) (ite (< (select c28 x) 10) (+ (select c28 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c29 y) (select c28 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c29 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c29 y) (select c28 y))
        )
      )
    )
  )
))

(push)
(assert (= c29 all))
(check-sat)
(pop)

(declare-const c30 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c30 x) (ite (< (select c29 x) 10) (+ (select c29 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c30 y) (select c29 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c30 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c30 y) (select c29 y))
        )
      )
    )
  )
))

(push)
(assert (= c30 all))
(check-sat)
(pop)

(declare-const c31 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c31 x) (ite (< (select c30 x) 10) (+ (select c30 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c31 y) (select c30 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c31 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c31 y) (select c30 y))
        )
      )
    )
  )
))

(push)
(assert (= c31 all))
(check-sat)
(pop)

(declare-const c32 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c32 x) (ite (< (select c31 x) 10) (+ (select c31 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c32 y) (select c31 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c32 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c32 y) (select c31 y))
        )
      )
    )
  )
))

(push)
(assert (= c32 all))
(check-sat)
(pop)

(declare-const c33 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c33 x) (ite (< (select c32 x) 10) (+ (select c32 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c33 y) (select c32 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c33 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c33 y) (select c32 y))
        )
      )
    )
  )
))

(push)
(assert (= c33 all))
(check-sat)
(pop)

(declare-const c34 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c34 x) (ite (< (select c33 x) 10) (+ (select c33 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c34 y) (select c33 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c34 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c34 y) (select c33 y))
        )
      )
    )
  )
))

(push)
(assert (= c34 all))
(check-sat)
(pop)

(declare-const c35 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c35 x) (ite (< (select c34 x) 10) (+ (select c34 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c35 y) (select c34 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c35 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c35 y) (select c34 y))
        )
      )
    )
  )
))

(push)
(assert (= c35 all))
(check-sat)
(pop)

(declare-const c36 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c36 x) (ite (< (select c35 x) 10) (+ (select c35 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c36 y) (select c35 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c36 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c36 y) (select c35 y))
        )
      )
    )
  )
))

(push)
(assert (= c36 all))
(check-sat)
(pop)

(declare-const c37 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c37 x) (ite (< (select c36 x) 10) (+ (select c36 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c37 y) (select c36 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c37 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c37 y) (select c36 y))
        )
      )
    )
  )
))

(push)
(assert (= c37 all))
(check-sat)
(pop)

(declare-const c38 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c38 x) (ite (< (select c37 x) 10) (+ (select c37 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c38 y) (select c37 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c38 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c38 y) (select c37 y))
        )
      )
    )
  )
))

(push)
(assert (= c38 all))
(check-sat)
(pop)

(declare-const c39 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c39 x) (ite (< (select c38 x) 10) (+ (select c38 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c39 y) (select c38 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c39 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c39 y) (select c38 y))
        )
      )
    )
  )
))

(push)
(assert (= c39 all))
(check-sat)
(pop)

(declare-const c40 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c40 x) (ite (< (select c39 x) 10) (+ (select c39 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c40 y) (select c39 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c40 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c40 y) (select c39 y))
        )
      )
    )
  )
))

(push)
(assert (= c40 all))
(check-sat)
(pop)

(declare-const c41 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c41 x) (ite (< (select c40 x) 10) (+ (select c40 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c41 y) (select c40 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c41 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c41 y) (select c40 y))
        )
      )
    )
  )
))

(push)
(assert (= c41 all))
(check-sat)
(pop)

(declare-const c42 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c42 x) (ite (< (select c41 x) 10) (+ (select c41 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c42 y) (select c41 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c42 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c42 y) (select c41 y))
        )
      )
    )
  )
))

(push)
(assert (= c42 all))
(check-sat)
(pop)

(declare-const c43 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c43 x) (ite (< (select c42 x) 10) (+ (select c42 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c43 y) (select c42 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c43 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c43 y) (select c42 y))
        )
      )
    )
  )
))

(push)
(assert (= c43 all))
(check-sat)
(pop)

(declare-const c44 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c44 x) (ite (< (select c43 x) 10) (+ (select c43 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c44 y) (select c43 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c44 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c44 y) (select c43 y))
        )
      )
    )
  )
))

(push)
(assert (= c44 all))
(check-sat)
(pop)

(declare-const c45 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c45 x) (ite (< (select c44 x) 10) (+ (select c44 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c45 y) (select c44 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c45 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c45 y) (select c44 y))
        )
      )
    )
  )
))

(push)
(assert (= c45 all))
(check-sat)
(pop)

(declare-const c46 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c46 x) (ite (< (select c45 x) 10) (+ (select c45 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c46 y) (select c45 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c46 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c46 y) (select c45 y))
        )
      )
    )
  )
))

(push)
(assert (= c46 all))
(check-sat)
(pop)

(declare-const c47 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c47 x) (ite (< (select c46 x) 10) (+ (select c46 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c47 y) (select c46 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c47 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c47 y) (select c46 y))
        )
      )
    )
  )
))

(push)
(assert (= c47 all))
(check-sat)
(pop)

(declare-const c48 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c48 x) (ite (< (select c47 x) 10) (+ (select c47 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c48 y) (select c47 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c48 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c48 y) (select c47 y))
        )
      )
    )
  )
))

(push)
(assert (= c48 all))
(check-sat)
(pop)

(declare-const c49 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c49 x) (ite (< (select c48 x) 10) (+ (select c48 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c49 y) (select c48 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c49 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c49 y) (select c48 y))
        )
      )
    )
  )
))

(push)
(assert (= c49 all))
(check-sat)
(pop)

(declare-const c50 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c50 x) (ite (< (select c49 x) 10) (+ (select c49 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c50 y) (select c49 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c50 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c50 y) (select c49 y))
        )
      )
    )
  )
))

(push)
(assert (= c50 all))
(check-sat)
(pop)

(declare-const c51 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c51 x) (ite (< (select c50 x) 10) (+ (select c50 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c51 y) (select c50 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c51 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c51 y) (select c50 y))
        )
      )
    )
  )
))

(push)
(assert (= c51 all))
(check-sat)
(pop)

(declare-const c52 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c52 x) (ite (< (select c51 x) 10) (+ (select c51 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c52 y) (select c51 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c52 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c52 y) (select c51 y))
        )
      )
    )
  )
))

(push)
(assert (= c52 all))
(check-sat)
(pop)

(declare-const c53 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c53 x) (ite (< (select c52 x) 10) (+ (select c52 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c53 y) (select c52 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c53 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c53 y) (select c52 y))
        )
      )
    )
  )
))

(push)
(assert (= c53 all))
(check-sat)
(pop)

(declare-const c54 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c54 x) (ite (< (select c53 x) 10) (+ (select c53 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c54 y) (select c53 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c54 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c54 y) (select c53 y))
        )
      )
    )
  )
))

(push)
(assert (= c54 all))
(check-sat)
(pop)

(declare-const c55 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c55 x) (ite (< (select c54 x) 10) (+ (select c54 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c55 y) (select c54 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c55 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c55 y) (select c54 y))
        )
      )
    )
  )
))

(push)
(assert (= c55 all))
(check-sat)
(pop)

(declare-const c56 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c56 x) (ite (< (select c55 x) 10) (+ (select c55 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c56 y) (select c55 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c56 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c56 y) (select c55 y))
        )
      )
    )
  )
))

(push)
(assert (= c56 all))
(check-sat)
(pop)

(declare-const c57 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c57 x) (ite (< (select c56 x) 10) (+ (select c56 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c57 y) (select c56 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c57 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c57 y) (select c56 y))
        )
      )
    )
  )
))

(push)
(assert (= c57 all))
(check-sat)
(pop)

(declare-const c58 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c58 x) (ite (< (select c57 x) 10) (+ (select c57 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c58 y) (select c57 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c58 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c58 y) (select c57 y))
        )
      )
    )
  )
))

(push)
(assert (= c58 all))
(check-sat)
(pop)

(declare-const c59 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c59 x) (ite (< (select c58 x) 10) (+ (select c58 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c59 y) (select c58 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c59 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c59 y) (select c58 y))
        )
      )
    )
  )
))

(push)
(assert (= c59 all))
(check-sat)
(pop)

(declare-const c60 (Array Values Int))

(assert (or
  ; Advance
  (exists 
    ((x Values)) 
    (and 
      (= (select c60 x) (ite (< (select c59 x) 10) (+ (select c59 x) 1) 0))
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c60 y) (select c59 y))
        )
      )
    )
  )
  ; Reset
  (exists 
    ((x Values)) 
    (and 
      (= (select c60 x) 0)
      (forall 
        ((y Values))
        (=>
           (not (= x y))
           (= (select c60 y) (select c59 y))
        )
      )
    )
  )
))

(push)
(assert (= c60 all))
(check-sat)
(pop)
