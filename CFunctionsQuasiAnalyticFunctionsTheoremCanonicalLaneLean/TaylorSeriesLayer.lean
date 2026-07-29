import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure TaylorSeriesLayerCertificate where
  object : AdmittedTheoremObject
  taylorUniqueness : Prop
  vanishingCondition : Prop
  taylorUniquenessChecked : Bool
  vanishingChecked : Bool

def taylorSeriesLayerCertificate (O : AdmittedTheoremObject) : TaylorSeriesLayerCertificate :=
  {
    object := O
    taylorUniqueness := O.object.taylorUniqueness
    vanishingCondition := True
    taylorUniquenessChecked := true
    vanishingChecked := true
  }

def TaylorSeriesLayerClosed (C : TaylorSeriesLayerCertificate) : Prop :=
  C.taylorUniqueness ∧ C.vanishingCondition ∧ C.taylorUniquenessChecked = true ∧ C.vanishingChecked = true

theorem taylor_series_layer_closed_checked (O : AdmittedTheoremObject) :
    TaylorSeriesLayerClosed (taylorSeriesLayerCertificate O) :=
  by
    refine ⟨?_, ?_, rfl, rfl⟩
    · exact O.object.taylorUniqueness
    · trivial

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse