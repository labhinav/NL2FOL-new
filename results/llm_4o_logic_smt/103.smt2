(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun WearsBlackTop (BoundSet) Bool)
(declare-fun WearsGlasses (BoundSet) Bool)
(declare-fun SpeaksInto (BoundSet BoundSet) Bool)
(declare-fun WritesBeside (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (WearsBlackTop a) (and (WearsGlasses a) (and (SpeaksInto a b) (WritesBeside c a))))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((g BoundSet)) (forall ((j BoundSet)) (=> (WritesBeside g h) (SpeaksInto i j)))))) (forall ((m BoundSet)) (forall ((k BoundSet)) (forall ((l BoundSet)) (forall ((n BoundSet)) (=> (SpeaksInto k l) (WritesBeside m n)))))))) (exists ((f BoundSet)) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (SpeaksInto d e) (WritesBeside f d))))))))
(check-sat)
(get-model)