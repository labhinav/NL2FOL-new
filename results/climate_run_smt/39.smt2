(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSomeone (BoundSet) Bool)
(declare-fun AreBillionPeople (BoundSet) Bool)
(declare-fun AreUnlivableConditions (BoundSet) Bool)
(declare-fun IsUnraveling (BoundSet BoundSet) Bool)
(declare-fun IsNationState (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSomeone a) (and (AreBillionPeople b) (AreUnlivableConditions c)))))) (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsUnraveling g h) (AreUnlivableConditions i)))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (exists ((f BoundSet)) (and (IsNationState d) (or (IsUnraveling e f) (IsUnraveling f e)))))))))
(check-sat)
(get-model)