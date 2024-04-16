(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWearing (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (IsWearing b)) (exists ((a BoundSet)) (IsWearing a)))))
(check-sat)
(get-model)