import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure GlassTransitionKinetics where
  fictiveTemperature : Float
  coolingRateDependence : Prop
  activationEnergy : Float
  fragilityIndex : Float
  strongFragileClassification : Prop

structure CrystallizationKinetics where
  nucleationRate : Float
  crystalGrowthRate : Float
  timeTemperatureTransformation : Prop
  avramiEquation : Prop
  criticalCoolingRate : Float

structure KineticStabilityPackage where
  glassTransition : GlassTransitionKinetics
  crystallization : CrystallizationKinetics
  structuralRelaxation : Prop
  metastability : Prop
  liquidLiquidPhaseSeparation : Prop

structure KineticStabilityEvidence (K : KineticStabilityPackage) where
  coolingRateDependenceClosed : K.glassTransition.coolingRateDependence
  timeTemperatureTransformationClosed : K.crystallization.timeTemperatureTransformation
  structuralRelaxationClosed : K.structuralRelaxation

def KineticStabilityClosed (K : KineticStabilityPackage) : Prop :=
  K.glassTransition.coolingRateDependence ∧ K.crystallization.timeTemperatureTransformation ∧ K.structuralRelaxation

theorem kinetic_stability_closed_from_evidence (K : KineticStabilityPackage) (E : KineticStabilityEvidence K) : KineticStabilityClosed K := by
  exact And.intro E.coolingRateDependenceClosed (And.intro E.timeTemperatureTransformationClosed E.structuralRelaxationClosed)

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse