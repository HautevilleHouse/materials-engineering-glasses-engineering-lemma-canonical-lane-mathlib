import materialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.CrystallographyFoundation

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage {C : CrystallographyPackage} (P : PhaseDiagramPackage C) where
  temperaturePressureRange : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop
  congruentMelting : Prop
  metastableRegions : Prop

structure PhaseDiagramEvidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : PhaseDiagramEvidence P) where
  temperaturePressureRangeClosed : P.temperaturePressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  congruentMeltingClosed : P.congruentMelting
  metastableRegionsClosed : P.metastableRegions

def PhaseDiagramClosed {C : CrystallographyPackage} {P : PhaseDiagramPackage C} : Prop :=
  P.temperaturePressureRange ∧ P.phaseBoundaries ∧ P.eutecticPoint ∧ P.congruentMelting ∧ P.metastableRegions

theorem phase_diagram_closed_from_evidence {C : CrystallographyPackage} {P : PhaseDiagramPackage C} (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperaturePressureRangeClosed (And.intro E.phaseBoundariesClosed (And.intro E.eutecticPointClosed (And.intro E.congruentMeltingClosed E.metastableRegionsClosed)))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
