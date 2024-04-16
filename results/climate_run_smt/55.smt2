(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsHigh (BoundSet) Bool)
(declare-fun OccurredDuring (BoundSet BoundSet) Bool)
(declare-fun HasCorrelation (BoundSet BoundSet) Bool)
(declare-fun IsClear (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsHigh a) (OccurredDuring b c))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsHigh g) (HasCorrelation g h)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (=> (HasCorrelation i j) (IsHigh i)))) (forall ((k BoundSet)) (forall ((n BoundSet)) (forall ((m BoundSet)) (forall ((l BoundSet)) (=> (OccurredDuring k l) (HasCorrelation m n))))))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (IsClear d) (HasCorrelation a e))))))))
(check-sat)
(get-model)