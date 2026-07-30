import materialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.ElasticityTensorLaws

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure FracturePackage where
  criticalStressIntensity : Prop
  crackGrowthRate : Prop
  fractureToughness : Prop
  fatigueThreshold : Prop
  parisLawExponent : Prop

structure FractureEvidence (F : FracturePackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  crackGrowthRateClosed : F.crackGrowthRate
  fractureToughnessClosed : F.fractureToughness
  fatigueThresholdClosed : F.fatigueThreshold
  parisLawExponentClosed : F.parisLawExponent

def FractureClosed (F : FracturePackage) : Prop :=
  F.criticalStressIntensity ∧ F.crackGrowthRate ∧ F.fractureToughness ∧ F.fatigueThreshold ∧ F.parisLawExponent

theorem fracture_closed_from_evidence (F : FracturePackage) (E : FractureEvidence F) :
    FractureClosed F := by
  exact And.intro E.criticalStressIntensityClosed (And.intro E.crackGrowthRateClosed (And.intro E.fractureToughnessClosed (And.intro E.fatigueThresholdClosed E.parisLawExponentClosed)))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
