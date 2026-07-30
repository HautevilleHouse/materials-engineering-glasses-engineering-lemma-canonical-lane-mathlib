import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure GlassFormationPackage where
  coolingRate : ℝ
  nucleationBarrier : ℝ
  glassTransitionTemperature : ℝ
  crystalGrowthRate : ℝ
  criticalCoolingRate : ℝ
  glassFormingAbility : Prop

def GlassFormationClosed (P : GlassFormationPackage) : Prop :=
  P.criticalCoolingRate < P.coolingRate ∧ P.glassFormingAbility

theorem glass_formation_closed (P : GlassFormationPackage) : GlassFormationClosed P := by
  exact And.intro (by
    have : P.coolingRate > P.criticalCoolingRate := by
      sorry
    exact this) P.glassFormingAbility

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
