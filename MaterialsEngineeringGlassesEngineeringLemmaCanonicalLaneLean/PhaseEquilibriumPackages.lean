import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure BinaryPhaseDiagram where
  componentA : Type u
  componentB : Type v
  liquidusLine : Type w
  solidusLine : Type x
  eutecticPoint : Prop
  compoundFormation : Prop

structure TernaryPhaseDiagram where
  componentA : Type u
  componentB : Type v
  componentC : Type w
  liquidusSurface : Prop
  eutecticTrough : Prop
  ternaryEutectic : Prop
  compoundField : Prop

structure PhaseEquilibriumPackage where
  binaryDiagrams : List BinaryPhaseDiagram
  ternaryDiagram : TernaryPhaseDiagram
  glassTransitionComposition : Float
  thermodynamicMixingModel : Prop
  excessFreeEnergyExpression : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  eutecticPointClosed : ∀ d ∈ P.binaryDiagrams, d.eutecticPoint
  liquidusSurfaceClosed : P.ternaryDiagram.liquidusSurface
  glassTransitionCompositionClosed : P.glassTransitionComposition > 0.0

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  (∀ d ∈ P.binaryDiagrams, d.eutecticPoint) ∧ P.ternaryDiagram.liquidusSurface ∧ P.glassTransitionComposition > 0.0

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage) (E : PhaseEquilibriumEvidence P) : PhaseEquilibriumClosed P := by
  exact And.intro E.eutecticPointClosed (And.intro E.liquidusSurfaceClosed E.glassTransitionCompositionClosed)

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse