import MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GlassSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GlassAdmittedObject where
  space : GlassSpace
  amorphousStructure : Prop
  glassTransitionTemperature : Prop
  viscosityModel : Prop
  conclusion : amorphousStructure ∧ glassTransitionTemperature ∧ viscosityModel

structure GlassEndgameState where
  object : GlassAdmittedObject

def GlassWitnessClosed (O : GlassAdmittedObject) : Prop :=
  O.amorphousStructure ∧ O.glassTransitionTemperature ∧ O.viscosityModel

end MaterialsEngineeringGlassesEngineeringLemmaCanonicalLaneLean
end HautevilleHouse