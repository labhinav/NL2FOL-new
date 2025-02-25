(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsTied (BoundSet BoundSet) Bool)
(declare-fun Affects (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (IsTied b a))) (exists ((c BoundSet)) (exists ((a BoundSet)) (Affects a c))))))
(check-sat)
(get-model)