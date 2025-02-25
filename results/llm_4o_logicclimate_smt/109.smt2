(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsLargeNumber (BoundSet) Bool)
(declare-fun AreWatching (BoundSet BoundSet) Bool)
(declare-fun AreDressedIn (BoundSet BoundSet) Bool)
(declare-fun HasThrown (BoundSet BoundSet) Bool)
(declare-fun AreInKilts (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (IsLargeNumber c) (and (AreWatching c a) (and (AreDressedIn a b) (HasThrown d e))))))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (AreWatching g h) (IsLargeNumber i))))) (and (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (AreInKilts j) (AreWatching k l))))) (and (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (AreDressedIn m n) (AreInKilts m)))) (and (forall ((o BoundSet)) (forall ((p BoundSet)) (=> (AreInKilts o) (AreDressedIn o p)))) (and (forall ((r BoundSet)) (forall ((t BoundSet)) (forall ((q BoundSet)) (forall ((s BoundSet)) (=> (HasThrown q r) (AreWatching s t)))))) (forall ((u BoundSet)) (forall ((v BoundSet)) (forall ((w BoundSet)) (=> (HasThrown u v) (AreInKilts w))))))))))) (exists ((a BoundSet)) (exists ((f BoundSet)) (and (AreWatching f a) (AreInKilts a)))))))
(check-sat)
(get-model)