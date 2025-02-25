(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInSuit (BoundSet) Bool)
(declare-fun IsWaitingForGreenLight (BoundSet) Bool)
(declare-fun IsWaitingAtRedLight (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInSuit a) (IsWaitingForGreenLight a))) (and (forall ((e BoundSet)) (=> (IsWaitingForGreenLight e) (IsWaitingAtRedLight e))) (forall ((f BoundSet)) (=> (IsWaitingAtRedLight f) (IsWaitingForGreenLight f))))) (exists ((a BoundSet)) (IsWaitingAtRedLight a)))))
(check-sat)
(get-model)