import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure MechanicalPropertiesPackage where
  elasticModulus : Type u
  hardness : Type v
  fractureToughness : Prop
  strength : Prop
  brittlenessIndex : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  fractureToughnessClosed : M.fractureToughness
  strengthClosed : M.strength
  brittlenessIndexClosed : M.brittlenessIndex

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.fractureToughness ∧ M.strength ∧ M.brittlenessIndex

theorem mechanical_properties_closed_from_evidence (M : MechanicalPropertiesPackage)
    (E : MechanicalPropertiesEvidence M) : MechanicalPropertiesClosed M := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.strengthClosed E.brittlenessIndexClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse