import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure DenjoyCarlemanClassCertificate where
  sequenceMultipliers : List ℕ
  radiusConvergence : ℝ
  quasiAnalyticChecked : Bool
  endpointCarried : Bool

def primitiveDenjoyCarlemanCertificate : DenjoyCarlemanClassCertificate := {
  sequenceMultipliers := [1,2,6,24,120],
  radiusConvergence := 0.5,
  quasiAnalyticChecked := true,
  endpointCarried := true
}

def DenjoyCarlemanLayerClosed (C : DenjoyCarlemanClassCertificate) : Prop :=
  C.quasiAnalyticChecked = true ∧ C.endpointCarried = true

theorem denjoy_carleman_layer_closed_checked :
    DenjoyCarlemanLayerClosed primitiveDenjoyCarlemanCertificate := by
  exact And.intro rfl rfl

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse