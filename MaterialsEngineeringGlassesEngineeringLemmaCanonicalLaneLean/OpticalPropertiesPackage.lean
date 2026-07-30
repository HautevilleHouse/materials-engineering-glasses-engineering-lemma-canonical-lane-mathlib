import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

structure OpticalPropertiesPackage where
  refractiveIndex : Type u
  absorptionCoefficient : Type v
  transmittance : Prop
  bandGap : Prop
  dispersion : Prop

structure OpticalPropertiesEvidence (O : OpticalPropertiesPackage) where
  transmittanceClosed : O.transmittance
  bandGapClosed : O.bandGap
  dispersionClosed : O.dispersion

def OpticalPropertiesClosed (O : OpticalPropertiesPackage) : Prop :=
  O.transmittance ∧ O.bandGap ∧ O.dispersion

theorem optical_properties_closed_from_evidence (O : OpticalPropertiesPackage)
    (E : OpticalPropertiesEvidence O) : OpticalPropertiesClosed O := by
  exact And.intro E.transmittanceClosed
    (And.intro E.bandGapClosed E.dispersionClosed)

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse