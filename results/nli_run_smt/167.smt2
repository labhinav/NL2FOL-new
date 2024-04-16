(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInBlueCollaredShirt (BoundSet) Bool)
(declare-fun IsSatInFrontOf (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsInBlueCollaredShirt a) (IsSatInFrontOf b)))) (exists ((b BoundSet)) (IsSatInFrontOf b)))))
(check-sat)
(get-model)