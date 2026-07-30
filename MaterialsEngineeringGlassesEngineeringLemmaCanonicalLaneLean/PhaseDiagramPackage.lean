import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : ℝ × ℝ
  compositionRange : ℝ × ℝ
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  leverRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (Ev : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro Ev.phaseBoundariesClosed
    (And.intro Ev.gibbsFreeEnergyClosed Ev.leverRuleClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
