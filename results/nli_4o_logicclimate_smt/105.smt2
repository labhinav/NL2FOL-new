(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun StudiesSlide (BoundSet BoundSet) Bool)
(declare-fun RelatedTo (BoundSet BoundSet) Bool)
(declare-fun HerInvention (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (StudiesSlide b c) (and (RelatedTo c a) (HerInvention b a)))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (RelatedTo d a))))))
(check-sat)
(get-model)