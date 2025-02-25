(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsHavingLunchWith (BoundSet BoundSet) Bool)
(declare-fun IsDitchingFor (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsHavingLunchWith a b))) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsHavingLunchWith e f) (IsDitchingFor e f))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (IsDitchingFor a b))))))
(check-sat)
(get-model)