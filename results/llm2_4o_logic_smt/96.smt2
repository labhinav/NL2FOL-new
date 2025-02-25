(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTerriblePerson (BoundSet) Bool)
(declare-fun Tripped (BoundSet BoundSet) Bool)
(declare-fun Stole (BoundSet BoundSet) Bool)
(declare-fun ShouldNotListenTo (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsTerriblePerson a) (and (Tripped a b) (Stole a c)))))) (forall ((e BoundSet)) (=> (IsTerriblePerson e) (ShouldNotListenTo e)))) (exists ((a BoundSet)) (ShouldNotListenTo a)))))
(check-sat)
(get-model)