(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsGoingToHaveLunch (BoundSet BoundSet) Bool)
(declare-fun IsBelieve (BoundSet) Bool)
(declare-fun IsDitching (BoundSet) Bool)
(declare-fun IsNew (BoundSet) Bool)
(assert (not (IsNew b)))
(check-sat)
(get-model)