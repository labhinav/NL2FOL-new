(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWaitingToUse (BoundSet BoundSet) Bool)
(declare-fun IsInField (BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsWaitingToUse a b) (IsInField b)))) (forall ((g BoundSet)) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsWaitingToUse e f) (IsOutside g)))))) (exists ((d BoundSet)) (IsOutside d)))))
(check-sat)
(get-model)