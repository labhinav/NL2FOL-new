(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInYellowShirt (BoundSet) Bool)
(declare-fun IsOnLog (BoundSet) Bool)
(declare-fun IsInBluePants (BoundSet) Bool)
(declare-fun AreStandingOn (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (IsInYellowShirt c) (and (IsOnLog a) (IsInBluePants d)))))) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (AreStandingOn f g) (IsOnLog g))))) (exists ((e BoundSet)) (exists ((a BoundSet)) (AreStandingOn e a))))))
(check-sat)
(get-model)