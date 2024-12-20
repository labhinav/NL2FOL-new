(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSmall (BoundSet) Bool)
(declare-fun IsBlackAndWhite (BoundSet) Bool)
(declare-fun IsLeaping (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsSmall a) (and (IsBlackAndWhite a) (IsLeaping a)))) (exists ((b BoundSet)) (IsLeaping b)))))
(check-sat)
(get-model)