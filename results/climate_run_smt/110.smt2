(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWithFlower (BoundSet) Bool)
(declare-fun IsOnShirt (BoundSet) Bool)
(declare-fun IsRidesSkateboard (BoundSet) Bool)
(declare-fun IsWithBoy (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsWithFlower a) (and (IsOnShirt b) (IsRidesSkateboard d)))))) (exists ((f BoundSet)) (exists ((g BoundSet)) (and (IsRidesSkateboard g) (IsWithBoy f)))))))
(check-sat)
(get-model)