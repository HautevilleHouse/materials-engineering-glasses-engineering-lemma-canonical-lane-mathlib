import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type
  basisVectors : Type
  symmetryGroup : Type
  bravaisClassification : Prop
  diffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisClassificationClosed : C.bravaisClassification
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisClassification ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (Ev : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro Ev.bravaisClassificationClosed Ev.diffractionPatternClosed

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
