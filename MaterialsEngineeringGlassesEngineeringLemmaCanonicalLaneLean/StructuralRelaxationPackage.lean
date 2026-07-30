import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure StructuralRelaxationPackage where
  relaxationTime : Type u
  fictiveTemperature : Type v
  enthalpyRelaxation : Prop
  volumeRelaxation : Prop
  viscosityModel : Prop

structure StructuralRelaxationEvidence (S : StructuralRelaxationPackage) where
  enthalpyRelaxationClosed : S.enthalpyRelaxation
  volumeRelaxationClosed : S.volumeRelaxation
  viscosityModelClosed : S.viscosityModel

def StructuralRelaxationClosed (S : StructuralRelaxationPackage) : Prop :=
  S.enthalpyRelaxation ∧ S.volumeRelaxation ∧ S.viscosityModel

theorem structural_relaxation_closed_from_evidence (S : StructuralRelaxationPackage)
    (E : StructuralRelaxationEvidence S) : StructuralRelaxationClosed S := by
  exact And.intro E.enthalpyRelaxationClosed
    (And.intro E.volumeRelaxationClosed E.viscosityModelClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse