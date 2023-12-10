(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun b () UnboundSet)
(declare-fun c () UnboundSet)
(declare-fun IsRubbing (BoundSet UnboundSet) Bool)
(declare-fun IsInYellowTie (UnboundSet) Bool)
(declare-fun IsRubbingNeck (BoundSet) Bool)
(assert (not (=> (forall ((a BoundSet)) (IsRubbing a b)) (=> (exists ((d BoundSet)) (IsInYellowTie c)) (IsRubbingNeck d)))))
(check-sat)
(get-model)