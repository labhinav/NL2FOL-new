(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsMan (BoundSet) Bool)
(declare-fun IsBeingFilmedBy (BoundSet BoundSet) Bool)
(declare-fun IsOnSportsField (BoundSet) Bool)
(declare-fun IsWatchedByHugeAudience (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsCheeredBy (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsMan a) (IsBeingFilmedBy a b)))) (exists ((e BoundSet)) (exists ((c BoundSet)) (and (exists ((d BoundSet)) (( (and (IsOnSportsField c) (IsWatchedByHugeAudience d)))) (IsCheeredBy e)))))))
(check-sat)
(get-model)