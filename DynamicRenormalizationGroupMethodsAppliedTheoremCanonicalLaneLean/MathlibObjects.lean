import DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicRenormalizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicRenormalizationAdmittedObject where
  space : DynamicRenormalizationSpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure DynamicRenormalizationEndgameState where
  object : DynamicRenormalizationAdmittedObject

def DynamicRenormalizationWitnessClosed (O : DynamicRenormalizationAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
