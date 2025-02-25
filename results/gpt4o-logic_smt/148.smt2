(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SingTogether (BoundSet) Bool)
(declare-fun WearingBlackDresses (BoundSet) Bool)
(declare-fun IsSinging (BoundSet) Bool)
(declare-fun Woman (BoundSet) Bool)
(declare-fun Exists (BoundSet Bool) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (SingTogether a) (WearingBlackDresses a))) (and (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (SingTogether d) (IsSinging e)))) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsSinging f) (SingTogether g)))))) (exists ((c BoundSet)) (Exists c (and (Woman c) (IsSinging c)))))))
(check-sat)
(get-model)