(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInvestedIn (BoundSet) Bool)
(declare-fun IsInSchools (BoundSet) Bool)
(declare-fun IsCut (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsInvestedIn a) (IsInSchools c)))) (and (forall ((g BoundSet)) (forall ((f BoundSet)) (=> (IsInSchools f) (IsInvestedIn g)))) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsInvestedIn h) (IsInSchools i)))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsCut d) (IsInvestedIn e)))))))
(check-sat)
(get-model)