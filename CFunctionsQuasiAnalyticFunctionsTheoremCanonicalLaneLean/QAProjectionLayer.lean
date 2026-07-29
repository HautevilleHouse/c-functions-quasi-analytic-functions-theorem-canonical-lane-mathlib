import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure QAProjectionState where
  currentClass : String
  taylorCoefficients : List ℝ
  projectionIndex : Nat
  iterated : Bool

def qaProjection (s : QAProjectionState) : QAProjectionState := s

theorem qa_projection_idempotent (s : QAProjectionState) :
    qaProjection (qaProjection s) = qaProjection s := by
  rfl

theorem qa_projection_carries (s : QAProjectionState) :
    qaProjection s = s := by
  rfl

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse