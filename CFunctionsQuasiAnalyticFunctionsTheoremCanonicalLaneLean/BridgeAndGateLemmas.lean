import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked ∧ A.object.operatorModelChecked ∧ A.object.spectralPersistenceBridgeChecked ∧ A.object.sourceBoundaryLedgerChecked ∧ A.object.classicalRemainderCarried

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked, A.object.theoremObjectChecked, A.object.operatorModelWitness, A.object.spectralPersistenceBridgeWitness, A.object.sourceBoundaryLedgerWitness, A.object.classicalRemainderCarried⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse