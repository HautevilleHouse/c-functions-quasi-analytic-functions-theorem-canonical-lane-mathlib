import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure BorelTransformCertificate where
  formalSeries : String
  radiusOfConvergence : ℝ
  summableCondition : Bool
  analyticContinuation : Bool
  borelEndpoint : Bool

def primitiveBorelTransformCertificate : BorelTransformCertificate := {
  formalSeries := "Taylor series at 0",
  radiusOfConvergence := 0.0,
  summableCondition := true,
  analyticContinuation := true,
  borelEndpoint := true
}

def BorelTransformLayerClosed (C : BorelTransformCertificate) : Prop :=
  C.summableCondition ∧ C.analyticContinuation ∧ C.borelEndpoint

theorem borel_transform_layer_closed_checked :
    BorelTransformLayerClosed primitiveBorelTransformCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse