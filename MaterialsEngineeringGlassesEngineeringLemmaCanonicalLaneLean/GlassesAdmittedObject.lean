import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure GlassSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GlassAdmittedObject where
  space : GlassSpace
  brittleFracture : Prop
  glassTransition : Prop
  stressStrainModel : Type
  stressStrainTopology : TopologicalSpace stressStrainModel
  constitutiveLawSatisfied : Prop
  conclusion : constitutiveLawSatisfied

def GlassWitnessClosed (O : GlassAdmittedObject) : Prop :=
  O.constitutiveLawSatisfied

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
