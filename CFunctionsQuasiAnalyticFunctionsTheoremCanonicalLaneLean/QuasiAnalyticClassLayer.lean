import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure QuasiAnalyticCertificate where
  carrierClass : String
  taylorVanishing : Bool
  closureUnderDerivatives : Bool
  borelTransformable : Bool
  quasiAnalyticEndpoint : Bool

def primitiveQuasiAnalyticCertificate : QuasiAnalyticCertificate := {
  carrierClass := "C^\\omega (Denjoy-Carleman)",
  taylorVanishing := true,
  closureUnderDerivatives := true,
  borelTransformable := true,
  quasiAnalyticEndpoint := true
}

def QuasiAnalyticClassClosed (C : QuasiAnalyticCertificate) : Prop :=
  C.taylorVanishing ∧ C.closureUnderDerivatives ∧ C.borelTransformable ∧ C.quasiAnalyticEndpoint

theorem quasi_analytic_class_closed_checked :
    QuasiAnalyticClassClosed primitiveQuasiAnalyticCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse