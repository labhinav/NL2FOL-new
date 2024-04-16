(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsOnBikes (BoundSet) Bool)
(declare-fun IsFocalPointOf (BoundSet) Bool)
(declare-fun IsLocal (BoundSet) Bool)
(declare-fun IsStolen (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsOnBikes a) (IsFocalPointOf c)))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsLocal d) (IsStolen e)))))))
(check-sat)
(get-model)