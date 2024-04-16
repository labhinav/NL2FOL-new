(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsOn (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (IsOn a b))) (exists ((c BoundSet)) (exists ((d BoundSet)) (IsOn c d))))))
(check-sat)
(get-model)