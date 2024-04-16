(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInBowlingAlley (BoundSet) Bool)
(declare-fun IsPreparingToBowl (BoundSet) Bool)
(declare-fun IsBowling (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsInBowlingAlley a)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsPreparingToBowl a) (IsBowling c)))))))
(check-sat)
(get-model)