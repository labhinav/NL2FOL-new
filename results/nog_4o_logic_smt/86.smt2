(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsDestroyed (BoundSet) Bool)
(declare-fun WillGetCancer (BoundSet BoundSet) Bool)
(declare-fun WillSufferFromIllnesses (BoundSet BoundSet) Bool)
(declare-fun IsSpared (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsDestroyed c) (and (WillGetCancer a d) (WillSufferFromIllnesses a b))))))) (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((e BoundSet)) (and (IsSpared a e) (IsSpared a b))))))))
(check-sat)
(get-model)