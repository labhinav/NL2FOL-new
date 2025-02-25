(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsEasternVendor (BoundSet) Bool)
(declare-fun SitsByStall (BoundSet) Bool)
(declare-fun HasRoosterNearby (BoundSet) Bool)
(declare-fun IsNearVendor (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsEasternVendor a) (and (SitsByStall a) (HasRoosterNearby a)))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsNearVendor f) (IsEasternVendor g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsNearVendor h) (SitsByStall i)))) (and (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (HasRoosterNearby j) (IsNearVendor k)))) (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (IsNearVendor l) (HasRoosterNearby m)))))))) (exists ((d BoundSet)) (IsNearVendor d)))))
(check-sat)
(get-model)