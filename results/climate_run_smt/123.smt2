(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsBlackAndBrown (BoundSet) Bool)
(declare-fun IsShakingWater (BoundSet) Bool)
(declare-fun IsOnItself (BoundSet) Bool)
(declare-fun IsShakingItself (BoundSet) Bool)
(declare-fun IsDry (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsBlackAndBrown a) (and (IsShakingWater a) (IsOnItself c))))) (and (forall ((f BoundSet)) (=> (IsShakingItself f) (IsBlackAndBrown f))) (forall ((g BoundSet)) (=> (IsShakingWater g) (IsBlackAndBrown g))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsBlackAndBrown a) (and (IsShakingItself a) (IsDry d))))))))
(check-sat)
(get-model)