(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun MovedIn (BoundSet BoundSet) Bool)
(declare-fun WasBurglarized (BoundSet) Bool)
(declare-fun IsInvolved (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (MovedIn a b) (WasBurglarized c))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (IsInvolved a d))))))
(check-sat)
(get-model)