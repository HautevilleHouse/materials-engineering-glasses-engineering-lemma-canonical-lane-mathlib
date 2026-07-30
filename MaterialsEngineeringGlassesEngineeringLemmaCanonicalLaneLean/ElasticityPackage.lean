import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ElasticityPackage where
  youngsModulus : ℝ
  poissonRatio : ℝ
  stressStrainRelation : Prop
  compatibilityEquations : Prop
  boundaryConditions : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  compatibilityEquationsClosed : E.compatibilityEquations
  boundaryConditionsClosed : E.boundaryConditions

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.compatibilityEquations ∧ E.boundaryConditions

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.compatibilityEquationsClosed Ev.boundaryConditionsClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
