import MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.FractureToughness

/-!
# Phase Diagram Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure PhaseDiagramPackage {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} {F : FractureToughnessPackage E} where
  glassFormingAbility : Prop
  criticalCoolingRate : Prop
  liquidusTemperature : Prop
  eutecticComposition : Prop

structure PhaseDiagramEvidence {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} {F : FractureToughnessPackage E}
    (P : PhaseDiagramPackage F) where
  glassFormingAbilityClosed : P.glassFormingAbility
  criticalCoolingRateClosed : P.criticalCoolingRate
  liquidusTemperatureClosed : P.liquidusTemperature
  eutecticCompositionClosed : P.eutecticComposition

def PhaseDiagramClosed {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} {F : FractureToughnessPackage E}
    (P : PhaseDiagramPackage F) : Prop :=
  P.glassFormingAbility ∧ P.criticalCoolingRate ∧ P.liquidusTemperature ∧ P.eutecticComposition

theorem phase_diagram_closed_from_evidence
    {A : AdmissibleClass} {S : StructuralRelaxationPackage A} {E : ElasticPropertiesPackage S}
    {F : FractureToughnessPackage E} (P : PhaseDiagramPackage F) (Ev : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro Ev.glassFormingAbilityClosed
    (And.intro Ev.criticalCoolingRateClosed
      (And.intro Ev.liquidusTemperatureClosed Ev.eutecticCompositionClosed))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse