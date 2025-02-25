(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun BendsCurveOfCOVID19 (BoundSet) Bool)
(declare-fun WantsToLoseJobs (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (BendsCurveOfCOVID19 b)) (exists ((a BoundSet)) (WantsToLoseJobs a)))))
(check-sat)
(get-model)