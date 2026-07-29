import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure UtilityRepresentationStructure where
  preferenceRelation : (ℕ → ℝ) → (ℕ → ℝ) → Prop
  utilityFunction : (ℕ → ℝ) → ℝ
  representation : ∀ x y, preferenceRelation x y ↔ utilityFunction x ≥ utilityFunction y
  continuity : Prop
  monotonicity : Prop

structure UtilityRepresentationEvidence (U : UtilityRepresentationStructure) where
  representationClosed : ∀ x y, U.preferenceRelation x y ↔ U.utilityFunction x ≥ U.utilityFunction y
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity

def UtilityRepresentationClosed (U : UtilityRepresentationStructure) : Prop :=
  (∀ x y, U.preferenceRelation x y ↔ U.utilityFunction x ≥ U.utilityFunction y) ∧
  U.continuity ∧ U.monotonicity

theorem utility_representation_closed_from_evidence (U : UtilityRepresentationStructure) (Ev : UtilityRepresentationEvidence U) :
    UtilityRepresentationClosed U := by
  exact And.intro Ev.representationClosed (And.intro Ev.continuityClosed Ev.monotonicityClosed)

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse