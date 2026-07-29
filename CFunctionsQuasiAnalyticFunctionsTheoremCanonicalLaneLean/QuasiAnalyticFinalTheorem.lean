import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean.QuasiAnalyticGateLemmas

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

def ConstrainedQuasiAnalyticClosure (A : QuasiAnalyticClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : QuasiAnalyticClass) : Prop :=
  ConstrainedQuasiAnalyticClosure A

theorem constrained_quasi_analytic_endgame (A : QuasiAnalyticClass) :
    ConstrainedQuasiAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : QuasiAnalyticClass) :
    NativeClosureTheorem A := by
  exact constrained_quasi_analytic_endgame A

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse