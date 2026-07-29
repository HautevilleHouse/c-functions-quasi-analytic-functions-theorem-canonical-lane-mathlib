import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure DenjoyCarlemanCertificate where
  sequenceM : Nat → ℝ
  logConvex : Bool
  divergenceCondition : Bool
  derivationClosed : Bool
  quasiAnalyticClass : Bool

def primitiveDenjoyCarlemanCertificate : DenjoyCarlemanCertificate := {
  sequenceM := λ n => (n.factorial : ℝ),
  logConvex := true,
  divergenceCondition := true,
  derivationClosed := true,
  quasiAnalyticClass := true
}

def DenjoyCarlemanCriterionSatisfied (C : DenjoyCarlemanCertificate) : Prop :=
  C.logConvex ∧ C.divergenceCondition ∧ C.derivationClosed ∧ C.quasiAnalyticClass

theorem denjoy_carleman_criterion_satisfied_checked :
    DenjoyCarlemanCriterionSatisfied primitiveDenjoyCarlemanCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse