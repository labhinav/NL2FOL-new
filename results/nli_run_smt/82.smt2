(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInside (BoundSet BoundSet) Bool)
(declare-fun IsStrolling (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (IsInside b a))) (exists ((c BoundSet)) (exists ((a BoundSet)) (IsStrolling c a))))))
(check-sat)
(get-model)