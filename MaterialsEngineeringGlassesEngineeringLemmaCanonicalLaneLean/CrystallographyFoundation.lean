import materialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure CrystallographyPackage where
  unitCellGeometry : Type u
  bravaisLattice : Type v
  atomicPositions : Type w
  spaceGroup : Prop
  latticeParameters : Prop
  symmetryOperations : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  spaceGroupClosed : C.spaceGroup
  latticeParametersClosed : C.latticeParameters
  symmetryOperationsClosed : C.symmetryOperations

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.spaceGroup ∧ C.latticeParameters ∧ C.symmetryOperations

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.spaceGroupClosed (And.intro E.latticeParametersClosed E.symmetryOperationsClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
