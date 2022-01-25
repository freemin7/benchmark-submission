
(set-info :smt-lib-version 2.6)
(set-logic QF_ANIA)
(set-info :source |
Generated by: Alex Ozdemir
Generated on: 2021-12-13
Generator: Z3Py API
Application: Soundness counterexamples for a cryptographic argument
Target solver: cvc5, Z3

# The special soundness of PLONK's grand product argument

Let F be a prime-order field and n a natural less than F's size. Let n = {1,
2, .., n} be a subset of F. The PLONK[1] grand product argument relies on the
fact that given a permutation pi: [n] -> [n] and functions A, B: [n] -> [n],

    prod_i (A(i) + beta * i + gamma) = prod_i (B(i) + beta * pi(i) + gamma)

holds for random beta, gamma in F with good probability only when A composed
with pi is B.

Does this implication hold in a deterministic setting, where the above is
checked for distinct---but non-random---beta and gamma?

If it is checked for n+1 distinct values of beta, and for each value of beta,
n+1 distinct values of gamma, then yes. One can prove this.

If it is checked for 2 distinct values of beta, and for each value of beta, n+1
distinct values of gamma, then no.

This series of benchmarks checks the implication holds
* for varying n
* for a fixed permutation pi = (2 3 ... n 1)
* for all A and B
  * that must be equal ("same") or may differ ("diff")
* for all distinct 2 ("unsound") or n+1 ("sound") beta values

rather than instantiating gamma explicitly, we just check that the multisets

    {{A[i] + beta * i}}_i  ==  {{B[i] + beta * pi(i)}}_i

are equal.

[1]: https://eprint.iacr.org/2019/953

|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status sat)
; benchmark generated from python API
(set-info :status unknown)
(declare-fun b__1 () Int)
(declare-fun b__0 () Int)
(declare-fun w__0 () Int)
(declare-fun v__0 () Int)
(declare-fun w__1 () Int)
(declare-fun v__1 () Int)
(declare-fun w__2 () Int)
(declare-fun v__2 () Int)
(declare-fun w__3 () Int)
(declare-fun v__3 () Int)
(declare-fun w__4 () Int)
(declare-fun v__4 () Int)
(declare-fun w__5 () Int)
(declare-fun v__5 () Int)
(declare-fun w__6 () Int)
(declare-fun v__6 () Int)
(declare-fun start () (Array Int Int))
(assert
 (and (distinct b__0 b__1) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 7))
(assert
 (<= v__0 7))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 7))
(assert
 (<= v__1 7))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 7))
(assert
 (<= v__2 7))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 7))
(assert
 (<= v__3 7))
(assert
 (>= w__4 0))
(assert
 (>= v__4 0))
(assert
 (<= w__4 7))
(assert
 (<= v__4 7))
(assert
 (>= w__5 0))
(assert
 (>= v__5 0))
(assert
 (<= w__5 7))
(assert
 (<= v__5 7))
(assert
 (>= w__6 0))
(assert
 (>= v__6 0))
(assert
 (<= w__6 7))
(assert
 (<= v__6 7))
(assert
 (let ((?x562 (* b__0 1)))
 (let ((?x443 (+ v__6 ?x562)))
 (let ((?x262 (* b__0 7)))
 (let ((?x269 (+ v__5 ?x262)))
 (let ((?x53 (* b__0 6)))
 (let ((?x172 (+ v__4 ?x53)))
 (let ((?x297 (* b__0 5)))
 (let ((?x518 (+ v__3 ?x297)))
 (let ((?x136 (* b__0 4)))
 (let ((?x322 (+ v__2 ?x136)))
 (let ((?x543 (* b__0 3)))
 (let ((?x544 (+ v__1 ?x543)))
 (let ((?x275 (* b__0 2)))
 (let ((?x129 (+ v__0 ?x275)))
 (let ((?x82 (store start ?x129 (+ (select start ?x129) 1))))
 (let ((?x329 (store ?x82 ?x544 (+ (select ?x82 ?x544) 1))))
 (let ((?x309 (store ?x329 ?x322 (+ (select ?x329 ?x322) 1))))
 (let ((?x608 (store ?x309 ?x518 (+ (select ?x309 ?x518) 1))))
 (let ((?x367 (store ?x608 ?x172 (+ (select ?x608 ?x172) 1))))
 (let ((?x384 (store ?x367 ?x269 (+ (select ?x367 ?x269) 1))))
 (let ((?x378 (store ?x384 ?x443 (+ (select ?x384 ?x443) 1))))
 (let ((?x377 (+ w__6 ?x262)))
 (let ((?x201 (+ w__5 ?x53)))
 (let ((?x333 (+ w__4 ?x297)))
 (let ((?x75 (+ w__3 ?x136)))
 (let ((?x31 (+ w__2 ?x543)))
 (let ((?x96 (+ w__1 ?x275)))
 (let ((?x28 (+ w__0 ?x562)))
 (let ((?x313 (store start ?x28 (+ (select start ?x28) 1))))
 (let ((?x303 (store ?x313 ?x96 (+ (select ?x313 ?x96) 1))))
 (let ((?x321 (store ?x303 ?x31 (+ (select ?x303 ?x31) 1))))
 (let ((?x620 (store ?x321 ?x75 (+ (select ?x321 ?x75) 1))))
 (let ((?x78 (store ?x620 ?x333 (+ (select ?x620 ?x333) 1))))
 (let ((?x243 (store ?x78 ?x201 (+ (select ?x78 ?x201) 1))))
 (let ((?x444 (store ?x243 ?x377 (+ (select ?x243 ?x377) 1))))
 (= ?x444 ?x378)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x810 (* b__1 1)))
 (let ((?x464 (+ v__6 ?x810)))
 (let ((?x162 (* b__1 7)))
 (let ((?x137 (+ v__5 ?x162)))
 (let ((?x713 (* b__1 6)))
 (let ((?x717 (+ v__4 ?x713)))
 (let ((?x798 (* b__1 5)))
 (let ((?x800 (+ v__3 ?x798)))
 (let ((?x274 (* b__1 4)))
 (let ((?x71 (+ v__2 ?x274)))
 (let ((?x719 (* b__1 3)))
 (let ((?x92 (+ v__1 ?x719)))
 (let ((?x690 (* b__1 2)))
 (let ((?x714 (+ v__0 ?x690)))
 (let ((?x712 (store start ?x714 (+ (select start ?x714) 1))))
 (let ((?x80 (store ?x712 ?x92 (+ (select ?x712 ?x92) 1))))
 (let ((?x369 (store ?x80 ?x71 (+ (select ?x80 ?x71) 1))))
 (let ((?x807 (store ?x369 ?x800 (+ (select ?x369 ?x800) 1))))
 (let ((?x577 (store ?x807 ?x717 (+ (select ?x807 ?x717) 1))))
 (let ((?x25 (store ?x577 ?x137 (+ (select ?x577 ?x137) 1))))
 (let ((?x386 (store ?x25 ?x464 (+ (select ?x25 ?x464) 1))))
 (let ((?x263 (+ w__6 ?x162)))
 (let ((?x601 (+ w__5 ?x713)))
 (let ((?x809 (+ w__4 ?x798)))
 (let ((?x15 (+ w__3 ?x274)))
 (let ((?x589 (+ w__2 ?x719)))
 (let ((?x721 (+ w__1 ?x690)))
 (let ((?x811 (+ w__0 ?x810)))
 (let ((?x808 (store start ?x811 (+ (select start ?x811) 1))))
 (let ((?x371 (store ?x808 ?x721 (+ (select ?x808 ?x721) 1))))
 (let ((?x402 (store ?x371 ?x589 (+ (select ?x371 ?x589) 1))))
 (let ((?x797 (store ?x402 ?x15 (+ (select ?x402 ?x15) 1))))
 (let ((?x711 (store ?x797 ?x809 (+ (select ?x797 ?x809) 1))))
 (let ((?x357 (store ?x711 ?x601 (+ (select ?x711 ?x601) 1))))
 (let ((?x465 (store ?x357 ?x263 (+ (select ?x357 ?x263) 1))))
 (= ?x465 ?x386)))))))))))))))))))))))))))))))))))))
(assert
 (let (($x683 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__6 v__5) (= w__0 v__6))))
 (not $x683)))
(check-sat)
(exit)
