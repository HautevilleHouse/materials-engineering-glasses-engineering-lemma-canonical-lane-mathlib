import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ElasticPropertiesPackage where
  youngModulus : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ
  poissonRatio : ℝ
  elasticStability : Prop

def ElasticClosed (P : ElasticPropertiesPackage) : Prop :=
  P.youngModulus > 0 ∧ P.shearModulus > 0 ∧ P.bulkModulus > 0 ∧ P.elasticStability

theorem elastic_closed (P : ElasticPropertiesPackage) : ElasticClosed P := by
  exact And.intro (by positivity) (And.intro (by positivity) (And.intro (by positivity) P.elasticStability))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
