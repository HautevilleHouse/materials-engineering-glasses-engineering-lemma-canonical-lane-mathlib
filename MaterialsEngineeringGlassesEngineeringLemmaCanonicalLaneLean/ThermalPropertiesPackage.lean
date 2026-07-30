import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ThermalPropertiesPackage where
  thermalConductivity : Type u
  thermalExpansion : Type v
  specificHeat : Prop
  thermalStability : Prop
  glassTransitionTemperature : Prop

structure ThermalPropertiesEvidence (T : ThermalPropertiesPackage) where
  specificHeatClosed : T.specificHeat
  thermalStabilityClosed : T.thermalStability
  glassTransitionTemperatureClosed : T.glassTransitionTemperature

def ThermalPropertiesClosed (T : ThermalPropertiesPackage) : Prop :=
  T.specificHeat ∧ T.thermalStability ∧ T.glassTransitionTemperature

theorem thermal_properties_closed_from_evidence (T : ThermalPropertiesPackage)
    (E : ThermalPropertiesEvidence T) : ThermalPropertiesClosed T := by
  exact And.intro E.specificHeatClosed
    (And.intro E.thermalStabilityClosed E.glassTransitionTemperatureClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse