import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : ℝ
  crackGrowthCriterion : Prop
  fractureToughness : ℝ
  parisLaw : Prop
  criticalStress : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  parisLawClosed : F.parisLaw
  criticalStressClosed : F.criticalStress

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackGrowthCriterion ∧ F.parisLaw ∧ F.criticalStress

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (Ev : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro Ev.crackGrowthCriterionClosed
    (And.intro Ev.parisLawClosed Ev.criticalStressClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
