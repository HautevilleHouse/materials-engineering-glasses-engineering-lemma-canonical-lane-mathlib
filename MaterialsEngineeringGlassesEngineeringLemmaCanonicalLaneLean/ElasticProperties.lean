import MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.StructuralRelaxation

/-!
# Elastic Properties Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ElasticPropertiesPackage {A : AdmissibleClass} (S : StructuralRelaxationPackage A) where
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop

structure ElasticPropertiesEvidence {A : AdmissibleClass} {S : StructuralRelaxationPackage A} (E : ElasticPropertiesPackage S) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus

def ElasticPropertiesClosed {A : AdmissibleClass} {S : StructuralRelaxationPackage A} (E : ElasticPropertiesPackage S) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.shearModulus ∧ E.bulkModulus

theorem elastic_properties_closed_from_evidence
    {A : AdmissibleClass} {S : StructuralRelaxationPackage A} (E : ElasticPropertiesPackage S)
    (Ev : ElasticPropertiesEvidence E) : ElasticPropertiesClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.shearModulusClosed Ev.bulkModulusClosed))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse