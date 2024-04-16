(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsYoung (BoundSet) Bool)
(declare-fun IsCompetingFor (BoundSet BoundSet) Bool)
(declare-fun IsCompeting (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsYoung a) (IsCompetingFor a b)))) (and (forall ((e BoundSet)) (forall ((d BoundSet)) (forall ((f BoundSet)) (=> (IsCompetingFor d e) (IsCompeting f))))) (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsCompeting g) (IsCompetingFor h i))))))) (exists ((c BoundSet)) (and (IsCompeting c) (IsCompeting c))))))
(check-sat)
(get-model)