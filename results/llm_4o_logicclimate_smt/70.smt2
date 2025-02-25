(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun ReleasedPressure (BoundSet) Bool)
(declare-fun AllowsToRise (BoundSet) Bool)
(declare-fun IsRising (BoundSet) Bool)
(declare-fun IsOnContinent (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((e BoundSet)) (and (ReleasedPressure e) (AllowsToRise a)))) (forall ((h BoundSet)) (=> (AllowsToRise h) (IsRising h)))) (exists ((a BoundSet)) (exists ((f BoundSet)) (and (IsOnContinent a f) (IsRising a)))))))
(check-sat)
(get-model)