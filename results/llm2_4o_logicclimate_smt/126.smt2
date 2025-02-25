(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSmall (BoundSet) Bool)
(declare-fun IsInPinkDress (BoundSet) Bool)
(declare-fun IsPlayingDrumPads (BoundSet) Bool)
(declare-fun UsesSticks (BoundSet) Bool)
(declare-fun IsPlayingDrums (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsSmall a) (and (IsInPinkDress a) (and (IsPlayingDrumPads a) (UsesSticks a))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsPlayingDrums g) (IsSmall h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsPlayingDrums i) (IsInPinkDress j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (IsPlayingDrumPads k) (IsPlayingDrums l)))) (and (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (IsPlayingDrums m) (IsPlayingDrumPads n)))) (and (forall ((p BoundSet)) (forall ((o BoundSet)) (=> (UsesSticks o) (IsPlayingDrums p)))) (forall ((q BoundSet)) (forall ((r BoundSet)) (=> (IsPlayingDrums q) (UsesSticks r)))))))))) (exists ((e BoundSet)) (IsPlayingDrums e)))))
(check-sat)
(get-model)