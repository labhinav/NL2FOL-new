(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun PreysOn (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsSlipperySlope (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (PreysOn a) (PreysOn b)))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (exists ((c BoundSet)) (( (and (PreysOn a) (PreysOn b)))) (IsSlipperySlope c)))))))
(check-sat)
(get-model)