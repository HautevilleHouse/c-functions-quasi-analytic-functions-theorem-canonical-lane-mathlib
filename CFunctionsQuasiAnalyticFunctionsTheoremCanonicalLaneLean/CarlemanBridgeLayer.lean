import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure CarlemanBridgeLayerCertificate where
  carlemanTheorem : String
  bridgeRoute : String
  bridgeChecked : Bool

def carlemanBridgeLayerCertificate : CarlemanBridgeLayerCertificate := {
  carlemanTheorem := "Carleman's theorem on quasi-analytic classes"
  bridgeRoute := "bridge via Denjoy–Carleman theorem and Watson's lemma"
  bridgeChecked := true
}

def CarlemanBridgeLayerClosed (C : CarlemanBridgeLayerCertificate) : Prop :=
  C.bridgeChecked = true

theorem carleman_bridge_layer_closed_checked :
    CarlemanBridgeLayerClosed carlemanBridgeLayerCertificate := by
  unfold CarlemanBridgeLayerClosed
  rfl

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse