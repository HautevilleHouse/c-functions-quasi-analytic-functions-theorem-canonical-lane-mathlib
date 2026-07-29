import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure QuasiAnalyticClass where
  sequence : ℕ → ℝ≥0
  endpointCondition : Prop
  remainderCondition : Prop
  gateWitness : endpointCondition ∨ remainderCondition

def admittedClosure (A : QuasiAnalyticClass) : Prop :=
  NativeBridgeClosed A.sequence ∧ (A.endpointCondition ∨ A.remainderCondition)

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse