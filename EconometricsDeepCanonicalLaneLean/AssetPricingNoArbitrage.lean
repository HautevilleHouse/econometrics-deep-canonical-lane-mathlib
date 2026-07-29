import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure AssetPricingModel where
  stateSpace : Type u
  assetPayoffs : stateSpace → ℝ
  price : ℝ
  stochasticDiscountFactor : stateSpace → ℝ
  noArbitrageCondition : (∀ ω, stochasticDiscountFactor ω > 0) ∧ (price = ∑' ω, stochasticDiscountFactor ω * assetPayoffs ω)
  riskNeutralMeasure : Prop

structure AssetPricingEvidence (A : AssetPricingModel) where
  noArbitrageConditionClosed : (∀ ω, A.stochasticDiscountFactor ω > 0) ∧ (A.price = ∑' ω, A.stochasticDiscountFactor ω * A.assetPayoffs ω)
  riskNeutralMeasureClosed : A.riskNeutralMeasure

def AssetPricingClosed (A : AssetPricingModel) : Prop :=
  (∀ ω, A.stochasticDiscountFactor ω > 0) ∧ (A.price = ∑' ω, A.stochasticDiscountFactor ω * A.assetPayoffs ω) ∧
  A.riskNeutralMeasure

theorem asset_pricing_closed_from_evidence (A : AssetPricingModel) (Ev : AssetPricingEvidence A) : AssetPricingClosed A := by
  rcases Ev.noArbitrageConditionClosed with ⟨hpos, hprice⟩
  exact And.intro hpos (And.intro hprice Ev.riskNeutralMeasureClosed)

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse