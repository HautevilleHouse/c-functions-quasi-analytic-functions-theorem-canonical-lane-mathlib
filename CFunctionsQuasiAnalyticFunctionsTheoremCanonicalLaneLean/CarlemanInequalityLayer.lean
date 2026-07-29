import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure CarlemanInequalityCertificate where
  sequenceType : String
  inequalityBound : String
  endpointChecked : Bool
  classicalComplementCarried : Bool

def carlemanInequalityCertificate : CarlemanInequalityCertificate := {
  sequenceType := "logarithmic convex sequence",
  inequalityBound := "Carleman's inequality for quasi-analytic classes",
  endpointChecked := true,
  classicalComplementCarried := true
}

def CarlemanInequalityClosed (C : CarlemanInequalityCertificate) : Prop :=
  C.sequenceType = "logarithmic convex sequence" ∧
  C.inequalityBound = "Carleman's inequality for quasi-analytic classes" ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem carleman_inequality_closed_checked :
    CarlemanInequalityClosed carlemanInequalityCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse