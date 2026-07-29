import EconometricsDeepCanonicalLaneLean.MathlibObjects

/-!
# Utility Theory Package
-/

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure PreferenceRelation (A : Type) where
  relation : A → A → Prop
  complete : ∀ x y, relation x y ∨ relation y x
  transitive : ∀ x y z, relation x y → relation y z → relation x z

structure UtilityFunction (A : Type) where
  utility : A → ℝ
  represents : PreferenceRelation A → Prop

structure UtilityTheoryPackage (A : Type) where
  preference : PreferenceRelation A
  utiltiy : UtilityFunction A
  representationClosed : utiltiy.represents preference

def UtilityTheoryClosed {A : Type} (p : UtilityTheoryPackage A) : Prop :=
  p.representationClosed

theorem utility_theory_closed {A : Type} (p : UtilityTheoryPackage A) : UtilityTheoryClosed p := by
  exact p.representationClosed

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse