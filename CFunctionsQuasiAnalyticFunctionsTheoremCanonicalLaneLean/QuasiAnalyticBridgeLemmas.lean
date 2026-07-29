import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean.QuasiAnalyticAdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

def bridgeClosed (A : QuasiAnalyticClass) : Prop :=
  ScopedClosure A.sequence

theorem bridge_from_admissible_class (A : QuasiAnalyticClass) :
    bridgeClosed A := by
  exact ⟨A.sequence.sourceKeyChecked,
    A.sequence.theoremObjectChecked,
    A.sequence.operatorModelWitness,
    A.sequence.spectralPersistenceBridgeWitness,
    A.sequence.sourceBoundaryLedgerWitness,
    A.sequence.classicalRemainderCarried⟩

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse