(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTendingTo (BoundSet BoundSet) Bool)
(declare-fun Includes (BoundSet BoundSet) Bool)
(declare-fun IsNear (BoundSet BoundSet) Bool)
(declare-fun IsMadeOf (BoundSet BoundSet) Bool)
(declare-fun IsTakingCareOf (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((f BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((e BoundSet)) (and (IsTendingTo a b) (and (Includes b c) (and (Includes b d) (and (IsNear a e) (IsMadeOf e f))))))))))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsTendingTo i j) (IsTakingCareOf i k))))) (and (forall ((n BoundSet)) (forall ((o BoundSet)) (forall ((m BoundSet)) (forall ((l BoundSet)) (=> (Includes l m) (IsTakingCareOf n o)))))) (forall ((r BoundSet)) (forall ((s BoundSet)) (forall ((q BoundSet)) (forall ((p BoundSet)) (=> (Includes p q) (IsTakingCareOf r s))))))))) (exists ((a BoundSet)) (exists ((g BoundSet)) (IsTakingCareOf a g))))))
(check-sat)
(get-model)