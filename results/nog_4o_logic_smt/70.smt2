(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SpeaksForItself (BoundSet) Bool)
(declare-fun RelatesToGunViolence (BoundSet BoundSet) Bool)
(declare-fun ShouldBan (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (SpeaksForItself a) (RelatesToGunViolence a b)))) (exists ((d BoundSet)) (exists ((c BoundSet)) (ShouldBan c d))))))
(check-sat)
(get-model)