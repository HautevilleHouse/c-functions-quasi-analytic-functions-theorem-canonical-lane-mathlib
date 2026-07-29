import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean.QuasiAnalyticBridgeLemmas

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

def gateClosed (A : QuasiAnalyticClass) : Prop :=
  A.endpointCondition ∨ A.remainderCondition

theorem gate_from_admissible_class (A : QuasiAnalyticClass) :
    gateClosed A := by
  exact A.gateWitness

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse