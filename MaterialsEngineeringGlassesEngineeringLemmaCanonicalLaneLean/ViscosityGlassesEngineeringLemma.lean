import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure ViscosityPackage where
  temperature : ℝ
  viscosity : ℝ
  fragilityIndex : ℝ
  arrheniusActivationEnergy : ℝ
  viscosityModelValid : Prop

def ViscosityClosed (P : ViscosityPackage) : Prop :=
  P.viscosity > 0 ∧ P.fragilityIndex > 0 ∧ P.viscosityModelValid

theorem viscosity_closed (P : ViscosityPackage) : ViscosityClosed P := by
  exact And.intro (by positivity) (And.intro (by positivity) P.viscosityModelValid)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
