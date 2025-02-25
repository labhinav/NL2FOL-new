(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun WaitsToUse (BoundSet BoundSet) Bool)
(declare-fun IsInField (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (WaitsToUse a b) (IsInField b c))))) (exists ((d BoundSet)) (IsOutside d)))))
(check-sat)
(get-model)