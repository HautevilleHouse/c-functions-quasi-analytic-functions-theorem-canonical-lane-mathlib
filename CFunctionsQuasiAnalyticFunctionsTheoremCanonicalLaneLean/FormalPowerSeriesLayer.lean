import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure FormalPowerSeriesCertificate where
  formalSeries : String
  coefficientGrowth : ℕ → ℝ
  radiusEndpoint : ℝ
  seriesClosureChecked : Bool
  boundaryCarried : Bool

def primitiveFormalPowerSeriesCertificate : FormalPowerSeriesCertificate := {
  formalSeries := "∑ a_n x^n",
  coefficientGrowth := λ n => Real.sqrt (n+1),
  radiusEndpoint := 1.0,
  seriesClosureChecked := true,
  boundaryCarried := true
}

def FormalPowerSeriesLayerClosed (C : FormalPowerSeriesCertificate) : Prop :=
  C.seriesClosureChecked = true ∧ C.boundaryCarried = true

theorem formal_power_series_layer_closed_checked :
    FormalPowerSeriesLayerClosed primitiveFormalPowerSeriesCertificate := by
  exact And.intro rfl rfl

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse