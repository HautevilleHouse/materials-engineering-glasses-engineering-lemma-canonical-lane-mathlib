import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure GlassFormationPackage where
  composition : Type u
  coolingRate : Type v
  criticalCoolingRate : Prop
  glassTransitionTemperature : Prop
  formationThermodynamics : Prop
  formationKinetics : Prop

structure GlassFormationEvidence (G : GlassFormationPackage) where
  criticalCoolingRateClosed : G.criticalCoolingRate
  glassTransitionTemperatureClosed : G.glassTransitionTemperature
  formationThermodynamicsClosed : G.formationThermodynamics
  formationKineticsClosed : G.formationKinetics

def GlassFormationClosed (G : GlassFormationPackage) : Prop :=
  G.criticalCoolingRate ∧ G.glassTransitionTemperature ∧
  G.formationThermodynamics ∧ G.formationKinetics

theorem glass_formation_closed_from_evidence (G : GlassFormationPackage)
    (E : GlassFormationEvidence G) : GlassFormationClosed G := by
  exact And.intro E.criticalCoolingRateClosed
    (And.intro E.glassTransitionTemperatureClosed
      (And.intro E.formationThermodynamicsClosed E.formationKineticsClosed))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse