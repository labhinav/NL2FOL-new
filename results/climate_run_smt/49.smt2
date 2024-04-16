(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWithinLawsOfChemistryAndPhysics (BoundSet) Bool)
(declare-fun IsRequired (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (IsWithinLawsOfChemistryAndPhysics b)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsRequired a) (IsWithinLawsOfChemistryAndPhysics b)))))))
(check-sat)
(get-model)