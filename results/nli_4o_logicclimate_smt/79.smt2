(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun AssumeGlobalWarmingIsReal (BoundSet) Bool)
(declare-fun FollowsInexorably (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (AssumeGlobalWarmingIsReal a)) (exists ((c BoundSet)) (FollowsInexorably c)))))
(check-sat)
(get-model)