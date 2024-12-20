(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsBroughtBy (BoundSet BoundSet) Bool)
(declare-fun IsSeated (BoundSet) Bool)
(declare-fun IsGottenFrom (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsBroughtBy b a) (IsSeated c))))) (forall ((g BoundSet)) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsBroughtBy e f) (IsGottenFrom g f)))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (IsGottenFrom d a))))))
(check-sat)
(get-model)