import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure CausalModel where
  treatmentVariable : Type u
  outcomeVariable : Type v
  confounders : Type w
  averageTreatmentEffect : ℝ
  identificationAssumptions : Prop
  iva : (treatmentVariable → outcomeVariable) → Prop

structure CausalEvidence (C : CausalModel) where
  identificationAssumptionsClosed : C.identificationAssumptions
  ivaClosed : (∀ f : C.treatmentVariable → C.outcomeVariable, C.iva f)

def CausalIdentificationClosed (C : CausalModel) : Prop :=
  C.identificationAssumptions ∧ (∀ f : C.treatmentVariable → C.outcomeVariable, C.iva f)

theorem causal_identification_closed_from_evidence (C : CausalModel) (Ev : CausalEvidence C) : CausalIdentificationClosed C := by
  exact And.intro Ev.identificationAssumptionsClosed Ev.ivaClosed

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse