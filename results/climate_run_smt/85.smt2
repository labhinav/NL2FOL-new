(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsClaimedBy (BoundSet BoundSet) Bool)
(declare-fun IsOnRecord (BoundSet) Bool)
(declare-fun IsReal (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsClaimedBy a b) (IsOnRecord b)))) (exists ((d BoundSet)) (IsReal d)))))
(check-sat)
(get-model)