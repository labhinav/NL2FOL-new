(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun IsStanding (BoundSet) Bool)
(declare-fun IsNextTo (BoundSet BoundSet) Bool)
(declare-fun IsAt (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (IsWearing a b))) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsStanding a) (and (IsNextTo a c) (IsAt a c))))))))
(check-sat)
(get-model)