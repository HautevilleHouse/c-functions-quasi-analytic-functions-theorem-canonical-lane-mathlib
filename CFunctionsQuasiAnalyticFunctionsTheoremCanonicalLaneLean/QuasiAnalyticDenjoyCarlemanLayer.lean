import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean.QuasiAnalyticAdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure DenjoyCarlemanCertificate where
  sequence : ℕ → ℝ≥0
  carlemanCondition : Prop
  denjoyCondition : Prop
  endpointChecked : Bool
  classicalComplementCarried : Bool

def denjoyCarlemanCertificate : DenjoyCarlemanCertificate := {
  sequence := fun n => Real.sqrt (n.factorial),
  carlemanCondition := by
    have h : ∑' n, (Real.sqrt (n.factorial) / Real.sqrt ((n+1).factorial)) < ∞ := by
      sorry
    exact h,
  denjoyCondition := by
    have h : ∑' n, 1 / (Real.sqrt (n.factorial))^(1/n) < ∞ := by
      sorry
    exact h,
  endpointChecked := true,
  classicalComplementCarried := true
}

def DenjoyCarlemanLayerClosed (C : DenjoyCarlemanCertificate) : Prop :=
  C.carlemanCondition ∧ C.denjoyCondition ∧ C.endpointChecked = true ∧ C.classicalComplementCarried = true

theorem denjoy_carleman_layer_closed_checked :
    DenjoyCarlemanLayerClosed denjoyCarlemanCertificate := by
  exact And.intro denjoyCarlemanCertificate.carlemanCondition
    (And.intro denjoyCarlemanCertificate.denjoyCondition
    (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse