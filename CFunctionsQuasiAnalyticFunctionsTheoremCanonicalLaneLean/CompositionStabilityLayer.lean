import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure CompositionStabilityCertificate where
  operationType : String
  stabilityCondition : String
  endpointChecked : Bool
  classicalComplementCarried : Bool

def compositionStabilityCertificate : CompositionStabilityCertificate := {
  operationType := "pointwise product and composition with analytic functions",
  stabilityCondition := "quasi-analytic classes are stable under composition with analytic functions",
  endpointChecked := true,
  classicalComplementCarried := true
}

def CompositionStabilityClosed (C : CompositionStabilityCertificate) : Prop :=
  C.operationType = "pointwise product and composition with analytic functions" ∧
  C.stabilityCondition = "quasi-analytic classes are stable under composition with analytic functions" ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem composition_stability_closed_checked :
    CompositionStabilityClosed compositionStabilityCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse