(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsRiding (BoundSet BoundSet) Bool)
(declare-fun IsOnRoad (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsRiding a b) (IsOnRoad c))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (not (IsRiding e d)))))))
(check-sat)
(get-model)