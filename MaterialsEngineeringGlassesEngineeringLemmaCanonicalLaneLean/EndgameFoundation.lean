import MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.PhaseDiagram

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure GlassesEngineeringFoundation {A : AdmissibleClass} (S : StructuralRelaxationPackage A)
    (E : ElasticPropertiesPackage S) (F : FractureToughnessPackage E) (P : PhaseDiagramPackage F) where
  relaxation : StructuralRelaxationClosed S
  elastic : ElasticPropertiesClosed E
  fracture : FractureToughnessClosed F
  phase : PhaseDiagramClosed P

def GlassesEngineeringFoundationClosed {A : AdmissibleClass} {S : StructuralRelaxationPackage A}
    {E : ElasticPropertiesPackage S} {F : FractureToughnessPackage E} {P : PhaseDiagramPackage F}
    (G : GlassesEngineeringFoundation A S E F P) : Prop :=
  G.relaxation ∧ G.elastic ∧ G.fracture ∧ G.phase

theorem glasses_engineering_foundation_closed
    {A : AdmissibleClass} {S : StructuralRelaxationPackage A} {E : ElasticPropertiesPackage S}
    {F : FractureToughnessPackage E} {P : PhaseDiagramPackage F}
    (G : GlassesEngineeringFoundation A S E F P) : GlassesEngineeringFoundationClosed G := by
  exact And.intro G.relaxation (And.intro G.elastic (And.intro G.fracture G.phase))

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse