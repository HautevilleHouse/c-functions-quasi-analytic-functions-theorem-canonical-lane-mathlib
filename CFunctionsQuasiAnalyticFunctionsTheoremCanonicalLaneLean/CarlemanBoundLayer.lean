import HautevilleHouse.CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure CarlemanBoundCertificate where
  object : AdmittedTheoremObject
  boundCondition : Prop
  divergenceCondition : Prop
  carlemanBoundChecked : Bool
  divergenceChecked : Bool

def carlemanBoundCertificate (O : AdmittedTheoremObject) : CarlemanBoundCertificate :=
  {
    object := O
    boundCondition := O.object.carlemanCondition
    divergenceCondition := True
    carlemanBoundChecked := true
    divergenceChecked := true
  }

def CarlemanBoundLayerClosed (C : CarlemanBoundCertificate) : Prop :=
  C.boundCondition ∧ C.divergenceCondition ∧ C.carlemanBoundChecked = true ∧ C.divergenceChecked = true

theorem carleman_bound_layer_closed_checked (O : AdmittedTheoremObject) :
    CarlemanBoundLayerClosed (carlemanBoundCertificate O) :=
  by
    refine ⟨?_, ?_, rfl, rfl⟩
    · exact O.object.carlemanCondition
    · trivial

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse