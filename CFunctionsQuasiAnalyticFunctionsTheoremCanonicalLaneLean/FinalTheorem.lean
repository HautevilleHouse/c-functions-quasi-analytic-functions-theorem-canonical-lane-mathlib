import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

def ConstrainedQuasiAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_quasi_analytic_endgame (A : AdmissibleClass) :
    ConstrainedQuasiAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
