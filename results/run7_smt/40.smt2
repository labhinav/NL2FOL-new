(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsHadBadLuck (BoundSet BoundSet) Bool)
(declare-fun IsForgotToKnockOnWood (BoundSet) Bool)
(declare-fun IsHadBadDay (BoundSet) Bool)
(declare-fun IsWalkedUnderLadder (BoundSet) Bool)
(declare-fun IsOpenUmbrella (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsSpillingSalt (BoundSet) Bool)
(declare-fun IsLuckyDice (BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (exists ((a BoundSet)) (IsHadBadLuck a b))) (and (forall ((d BoundSet)) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsForgotToKnockOnWood d) (IsHadBadLuck e f))))) (forall ((g BoundSet)) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsHadBadDay g) (IsHadBadLuck h i))))))) (and (exists ((c BoundSet)) (( (and (IsWalkedUnderLadder c) (IsOpenUmbrella c)))) (and (and (IsSpillingSalt c) (IsForgotToKnockOnWood c)) (or (IsHadBadDay c) (IsLuckyDice c)))))))
(check-sat)
(get-model)