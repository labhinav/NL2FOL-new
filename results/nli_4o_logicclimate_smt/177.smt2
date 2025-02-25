(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsStanding (BoundSet) Bool)
(declare-fun IsTalkingToEachOther (BoundSet) Bool)
(declare-fun IsTalking (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsStanding a) (IsTalkingToEachOther a))) (and (forall ((b BoundSet)) (=> (IsTalkingToEachOther b) (IsTalking b))) (forall ((c BoundSet)) (=> (IsTalking c) (IsTalkingToEachOther c))))) (exists ((a BoundSet)) (IsTalking a)))))
(check-sat)
(get-model)