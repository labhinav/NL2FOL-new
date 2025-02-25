(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HasNotAccelerated (BoundSet) Bool)
(declare-fun IsNotAConcern (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (HasNotAccelerated a)) (exists ((a BoundSet)) (IsNotAConcern a)))))
(check-sat)
(get-model)