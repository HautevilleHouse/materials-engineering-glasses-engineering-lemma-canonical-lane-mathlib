import materialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.PhaseDiagramEquilibria

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Type u
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop
  anisotropyFactor : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  anisotropyFactorClosed : E.anisotropyFactor

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.shearModulus ∧ E.bulkModulus ∧ E.anisotropyFactor

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.shearModulusClosed (And.intro Ev.bulkModulusClosed Ev.anisotropyFactorClosed)))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
