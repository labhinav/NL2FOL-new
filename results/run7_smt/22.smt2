(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsNeeded (BoundSet) Bool)
(declare-fun IsReachedTheClassroom (BoundSet) Bool)
(declare-fun IsUsedForEducation (BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (not (IsNeeded b))) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsReachedTheClassroom e) (IsNeeded f))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (IsUsedForEducation a) (not (IsReachedTheClassroom d))))))))
(check-sat)
(get-model)