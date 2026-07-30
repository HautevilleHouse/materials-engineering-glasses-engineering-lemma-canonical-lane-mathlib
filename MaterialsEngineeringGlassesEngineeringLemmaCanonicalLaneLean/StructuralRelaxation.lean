import MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Structural Relaxation Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure StructuralRelaxationPackage (A : AdmissibleClass) where
  relaxationTime : Prop
  fragilityIndex : Prop
  stretchedExponent : Prop
  viscosityTemperatureRelation : Prop

structure StructuralRelaxationEvidence {A : AdmissibleClass} (S : StructuralRelaxationPackage A) where
  relaxationTimeClosed : S.relaxationTime
  fragilityIndexClosed : S.fragilityIndex
  stretchedExponentClosed : S.stretchedExponent
  viscosityTemperatureRelationClosed : S.viscosityTemperatureRelation

def StructuralRelaxationClosed {A : AdmissibleClass} (S : StructuralRelaxationPackage A) : Prop :=
  S.relaxationTime ∧ S.fragilityIndex ∧ S.stretchedExponent ∧ S.viscosityTemperatureRelation

theorem structural_relaxation_closed_from_evidence
    {A : AdmissibleClass} (S : StructuralRelaxationPackage A) (E : StructuralRelaxationEvidence S) :
    StructuralRelaxationClosed S := by
  exact And.intro E.relaxationTimeClosed
    (And.intro E.fragilityIndexClosed
      (And.intro E.stretchedExponentClosed E.viscosityTemperatureRelationClosed))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse