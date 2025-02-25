(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun RaisesTaxes (BoundSet BoundSet) Bool)
(declare-fun Amount (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun TimeFrame (BoundSet) Bool)
(declare-fun WillIncrease (BoundSet) Bool)
(declare-fun SignificantIncrease (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (exists ((b BoundSet)) (( (and (RaisesTaxes b a) (Amount c)))) (TimeFrame d))))) (and (forall ((g BoundSet)) (forall ((f BoundSet)) (forall ((h BoundSet)) (=> (WillIncrease f) (RaisesTaxes g h))))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (WillIncrease i) (Amount j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (SignificantIncrease k) (Amount l)))) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (SignificantIncrease m) (TimeFrame n)))))))) (exists ((a BoundSet)) (and (WillIncrease a) (SignificantIncrease a))))))
(check-sat)
(get-model)