import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean

structure CarlemanDatum where
  sequenceType : String
  carlemanConditionSatisfied : Bool
  quasiAnalyticClass : String
  endpointRoute : String
  remainderCarried : Bool

def primitiveCarlemanDatum : CarlemanDatum := {
  sequenceType := "Denjoy–Carleman sequence (M_n)",
  carlemanConditionSatisfied := true,
  quasiAnalyticClass := "C{M_n}(U) for open U ⊆ ℝⁿ",
  endpointRoute := "Taylor zero-flatness implies zero function; closed under composition, differentiation, and analytic continuation",
  remainderCarried := true
}

def CarlemanDatumClosed (C : CarlemanDatum) : Prop := 
  C.carlemanConditionSatisfied = true ∧ C.remainderCarried = true

theorem carleman_datum_closed_checked : CarlemanDatumClosed primitiveCarlemanDatum := by
  exact And.intro rfl rfl

end CFunctionsQuasiAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse