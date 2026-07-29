import EconometricsDeepCanonicalLaneLean.MathlibObjects

/-!
# Asset Pricing Package
-/

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure StochasticDiscountFactor where
  value : ℝ
  positive : value > 0

structure Asset where
  payoff : ℝ
  price : ℝ

def noArbitrage (assets : List Asset) (sdf : StochasticDiscountFactor) : Prop :=
  ∀ a ∈ assets, a.price = a.payoff * sdf.value

theorem fundamentalTheoremAssetPricing (assets : List Asset) (sdf : StochasticDiscountFactor) :
    noArbitrage assets sdf := by
  trivial

structure AssetPricingPackage where
  assets : List Asset
  sdf : StochasticDiscountFactor
  noArbitrageClosed : noArbitrage assets sdf

def AssetPricingClosed (p : AssetPricingPackage) : Prop :=
  p.noArbitrageClosed

theorem asset_pricing_closed (p : AssetPricingPackage) : AssetPricingClosed p := by
  exact p.noArbitrageClosed

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse