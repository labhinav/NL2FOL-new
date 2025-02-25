(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWithBackpack (BoundSet) Bool)
(declare-fun IsAtTable (BoundSet BoundSet) Bool)
(declare-fun IsInBeigeBlazer (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsWithBackpack b) (and (IsAtTable b a) (IsInBeigeBlazer c d))))))) (exists ((a BoundSet)) (exists ((e BoundSet)) (IsAtTable e a))))))
(check-sat)
(get-model)