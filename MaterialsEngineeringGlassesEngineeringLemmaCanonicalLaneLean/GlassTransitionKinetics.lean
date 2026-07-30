import materialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.FractureMechanicsCriterion

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure GlassTransitionPackage where
  glassTransitionTemperature : Prop
  fragilityIndex : Prop
  coolingRateDependence : Prop
  structuralRelaxationTime : Prop
  adamGibbsVogelEquation : Prop

structure GlassTransitionEvidence (G : GlassTransitionPackage) where
  glassTransitionTemperatureClosed : G.glassTransitionTemperature
  fragilityIndexClosed : G.fragilityIndex
  coolingRateDependenceClosed : G.coolingRateDependence
  structuralRelaxationTimeClosed : G.structuralRelaxationTime
  adamGibbsVogelEquationClosed : G.adamGibbsVogelEquation

def GlassTransitionClosed (G : GlassTransitionPackage) : Prop :=
  G.glassTransitionTemperature ∧ G.fragilityIndex ∧ G.coolingRateDependence ∧ G.structuralRelaxationTime ∧ G.adamGibbsVogelEquation

theorem glass_transition_closed_from_evidence (G : GlassTransitionPackage) (E : GlassTransitionEvidence G) :
    GlassTransitionClosed G := by
  exact And.intro E.glassTransitionTemperatureClosed (And.intro E.fragilityIndexClosed (And.intro E.coolingRateDependenceClosed (And.intro E.structuralRelaxationTimeClosed E.adamGibbsVogelEquationClosed)))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
