import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure MarketEquilibrium (S D : Type) where
  supply : S
  demand : D
  price : Type
  quantity : Type
  supplyFunction : supply → price → quantity
  demandFunction : demand → price → quantity
  equilibriumPrice : price
  equilibriumQuantity : quantity
  supplyAtEquilibrium : supplyFunction supply equilibriumPrice = equilibriumQuantity
  demandAtEquilibrium : demandFunction demand equilibriumPrice = equilibriumQuantity

def MarketEquilibriumClosed (M : MarketEquilibrium) : Prop :=
  M.supplyAtEquilibrium ∧ M.demandAtEquilibrium

theorem market_equilibrium_unique (M : MarketEquilibrium) : MarketEquilibriumClosed M :=
  And.intro M.supplyAtEquilibrium M.demandAtEquilibrium

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse
