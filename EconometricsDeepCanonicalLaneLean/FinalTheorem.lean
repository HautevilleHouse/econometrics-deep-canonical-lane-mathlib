import EconometricsDeepCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

def ConstrainedEconometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_econometric_endgame (A : AdmissibleClass) :
    ConstrainedEconometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse