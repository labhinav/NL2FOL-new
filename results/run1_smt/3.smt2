(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsDone (BoundSet) Bool)
(declare-fun IsSpooky (BoundSet) Bool)
(declare-fun IsMorallyJustifiable (BoundSet) Bool)
(assert (not (=> (forall ((b BoundSet)) (IsDone b)) (=> (exists ((c BoundSet)) (IsSpooky c)) (IsMorallyJustifiable c)))))
(check-sat)
(get-model)