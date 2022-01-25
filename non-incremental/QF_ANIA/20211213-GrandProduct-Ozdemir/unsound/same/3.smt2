
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
(declare-fun w__0 () Int)
(declare-fun v__0 () Int)
(declare-fun w__1 () Int)
(declare-fun v__1 () Int)
(declare-fun w__2 () Int)
(declare-fun v__2 () Int)
(declare-fun b__1 () Int)
(declare-fun b__0 () Int)
(declare-fun start () (Array Int Int))
(assert
 (= v__0 w__0))
(assert
 (= v__1 w__1))
(assert
 (= v__2 w__2))
(assert
 (and (distinct b__0 b__1) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 3))
(assert
 (<= v__0 3))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 3))
(assert
 (<= v__1 3))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 3))
(assert
 (<= v__2 3))
(assert
 (let ((?x53 (* b__0 1)))
 (let ((?x77 (+ v__2 ?x53)))
 (let ((?x68 (* b__0 3)))
 (let ((?x69 (+ v__1 ?x68)))
 (let ((?x59 (* b__0 2)))
 (let ((?x60 (+ v__0 ?x59)))
 (let ((?x63 (store start ?x60 (+ (select start ?x60) 1))))
 (let ((?x72 (store ?x63 ?x69 (+ (select ?x63 ?x69) 1))))
 (let ((?x80 (store ?x72 ?x77 (+ (select ?x72 ?x77) 1))))
 (let ((?x73 (+ w__2 ?x68)))
 (let ((?x64 (+ w__1 ?x59)))
 (let ((?x54 (+ w__0 ?x53)))
 (let ((?x57 (store start ?x54 (+ (select start ?x54) 1))))
 (let ((?x67 (store ?x57 ?x64 (+ (select ?x57 ?x64) 1))))
 (let ((?x76 (store ?x67 ?x73 (+ (select ?x67 ?x73) 1))))
 (= ?x76 ?x80)))))))))))))))))
(assert
 (let ((?x109 (* b__1 1)))
 (let ((?x132 (+ v__2 ?x109)))
 (let ((?x123 (* b__1 3)))
 (let ((?x124 (+ v__1 ?x123)))
 (let ((?x114 (* b__1 2)))
 (let ((?x115 (+ v__0 ?x114)))
 (let ((?x118 (store start ?x115 (+ (select start ?x115) 1))))
 (let ((?x127 (store ?x118 ?x124 (+ (select ?x118 ?x124) 1))))
 (let ((?x135 (store ?x127 ?x132 (+ (select ?x127 ?x132) 1))))
 (let ((?x128 (+ w__2 ?x123)))
 (let ((?x119 (+ w__1 ?x114)))
 (let ((?x110 (+ w__0 ?x109)))
 (let ((?x113 (store start ?x110 (+ (select start ?x110) 1))))
 (let ((?x122 (store ?x113 ?x119 (+ (select ?x113 ?x119) 1))))
 (let ((?x131 (store ?x122 ?x128 (+ (select ?x122 ?x128) 1))))
 (= ?x131 ?x135)))))))))))))))))
(assert
 (not (and (= w__1 v__0) (= w__2 v__1) (= w__0 v__2))))
(check-sat)
(exit)
