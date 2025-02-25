(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun UsedCocaine (BoundSet) Bool)
(declare-fun ReadBook (BoundSet BoundSet) Bool)
(declare-fun WrittenBy (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (UsedCocaine a)) (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (ReadBook c d) (and (WrittenBy d a) (not (ReadBook c d))))))))))
(check-sat)
(get-model)