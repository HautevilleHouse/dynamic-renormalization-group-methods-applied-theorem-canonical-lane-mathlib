import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure ScaleBootstrapPackage (A : AdmissibleClass) where
  initialUVData : Type u
  flowEquations : Prop
  cutoffFunction : Prop
  recursionRelation : Prop
  fixedPointExistence : Prop
  initialUVDataTerm : initialUVData
  flowEquationsTerm : flowEquations
  cutoffFunctionTerm : cutoffFunction
  recursionRelationTerm : recursionRelation
  fixedPointExistenceTerm : fixedPointExistence

structure ScaleBootstrapEvidence {A : AdmissibleClass} (S : ScaleBootstrapPackage A) where
  initialUVDataClosed : S.initialUVData
  flowEquationsClosed : S.flowEquations
  cutoffFunctionClosed : S.cutoffFunction
  recursionRelationClosed : S.recursionRelation
  fixedPointExistenceClosed : S.fixedPointExistence

def ScaleBootstrapClosed {A : AdmissibleClass} (S : ScaleBootstrapPackage A) : Prop :=
  S.initialUVData ∧ S.flowEquations ∧ S.cutoffFunction ∧ S.recursionRelation ∧ S.fixedPointExistence

theorem scale_bootstrap_closed_from_evidence
    {A : AdmissibleClass} (S : ScaleBootstrapPackage A) (E : ScaleBootstrapEvidence S) :
    ScaleBootstrapClosed S := by
  exact And.intro E.initialUVDataClosed
    (And.intro E.flowEquationsClosed
      (And.intro E.cutoffFunctionClosed
        (And.intro E.recursionRelationClosed E.fixedPointExistenceClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
