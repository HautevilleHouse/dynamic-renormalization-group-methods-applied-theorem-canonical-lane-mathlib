import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure RGSystem (Φ : Type u) where
  field : Type u
  scale : ℕ
  action : field → field
  betaFunction : field → field
  fixedPointCondition : Prop
  scaleInvariant : Prop
  linearization : Type v
  spectralData : Prop

definitionalClosure (R : RGSystem) : Prop :=
  R.fixedPointCondition ∧ R.scaleInvariant ∧ R.spectralData

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse