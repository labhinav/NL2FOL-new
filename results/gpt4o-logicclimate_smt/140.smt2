(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun GoingForHike (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (GoingForHike a) (or (GoingForHike b) (GoingForHike c)))))) (exists ((e BoundSet)) (GoingForHike e)))))
(check-sat)
(get-model)