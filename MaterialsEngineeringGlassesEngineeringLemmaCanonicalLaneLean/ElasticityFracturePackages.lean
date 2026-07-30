import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ElasticModuliPackage where
  youngModulus : Float
  shearModulus : Float
  bulkModulus : Float
  poissonRatio : Float
  isotropicLinearlyElastic : Prop
  moduliTemperatureDependence : Prop

structure FractureToughnessPackage where
  criticalStressIntensity : Float
  fractureSurfaceEnergy : Float
  subcriticalCrackGrowth : Prop
  stressCorrosionCracking : Prop
  flawDistribution : Prop

structure MechanicalPropertiesPackage where
  elasticity : ElasticModuliPackage
  fracture : FractureToughnessPackage
  hardness : Float
  brittlenessIndex : Float
  indentationSizeEffect : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  isotropicLinearlyElasticClosed : M.elasticity.isotropicLinearlyElastic
  criticalStressIntensityClosed : M.fracture.criticalStressIntensity > 0.0
  hardnessClosed : M.hardness > 0.0

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.elasticity.isotropicLinearlyElastic ∧ M.fracture.criticalStressIntensity > 0.0 ∧ M.hardness > 0.0

theorem mechanical_properties_closed_from_evidence (M : MechanicalPropertiesPackage) (E : MechanicalPropertiesEvidence M) : MechanicalPropertiesClosed M := by
  exact And.intro E.isotropicLinearlyElasticClosed (And.intro E.criticalStressIntensityClosed E.hardnessClosed)

end HautevilleHouse.MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse