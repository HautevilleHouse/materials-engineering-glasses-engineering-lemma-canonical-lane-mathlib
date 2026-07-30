import MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.ElasticProperties

/-!
# Fracture Toughness Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure FractureToughnessPackage {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} where
  criticalStressIntensity : Prop
  fractureEnergy : Prop
  crackGrowthResistance : Prop

structure FractureToughnessEvidence {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} (F : FractureToughnessPackage E) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  fractureEnergyClosed : F.fractureEnergy
  crackGrowthResistanceClosed : F.crackGrowthResistance

def FractureToughnessClosed {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} (F : FractureToughnessPackage E) : Prop :=
  F.criticalStressIntensity ∧ F.fractureEnergy ∧ F.crackGrowthResistance

theorem fracture_toughness_closed_from_evidence
    {A : AdmissibleClass} {S : StructuralRelaxationPackage A} {E : ElasticPropertiesPackage S}
    (F : FractureToughnessPackage E) (Ev : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro Ev.criticalStressIntensityClosed
    (And.intro Ev.fractureEnergyClosed Ev.crackGrowthResistanceClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse