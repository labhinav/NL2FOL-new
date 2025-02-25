(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsJumpingOver (BoundSet BoundSet) Bool)
(declare-fun IsLowHurdle (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsJumpingOver a b) (IsLowHurdle b)))) (exists ((c BoundSet)) (exists ((d BoundSet)) (IsJumpingOver c d))))))
(check-sat)
(get-model)