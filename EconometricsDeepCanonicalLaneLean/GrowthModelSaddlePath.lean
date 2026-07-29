import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure RamseyCassKoopmansGrowthModel where
  capitalStock : ℝ → ℝ
  consumption : ℝ → ℝ
  productionFunction : ℝ → ℝ
  capitalAccumulationEquation : ∀ t, capitalStock (t+1) = productionFunction (capitalStock t) - consumption t + (1 - δ) * capitalStock t
  δ : ℝ
  steadyStateCapital : ℝ
  saddlePathExists : Prop
  saddlePathUnique : Prop

structure GrowthModelEvidence (G : RamseyCassKoopmansGrowthModel) where
  capitalAccumulationEquationClosed : ∀ t, G.capitalStock (t+1) = G.productionFunction (G.capitalStock t) - G.consumption t + (1 - G.δ) * G.capitalStock t
  saddlePathExistsClosed : G.saddlePathExists
  saddlePathUniqueClosed : G.saddlePathUnique

def GrowthModelClosed (G : RamseyCassKoopmansGrowthModel) : Prop :=
  (∀ t, G.capitalStock (t+1) = G.productionFunction (G.capitalStock t) - G.consumption t + (1 - G.δ) * G.capitalStock t) ∧
  G.saddlePathExists ∧ G.saddlePathUnique

theorem growth_model_closed_from_evidence (G : RamseyCassKoopmansGrowthModel) (Ev : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro Ev.capitalAccumulationEquationClosed (And.intro Ev.saddlePathExistsClosed Ev.saddlePathUniqueClosed)

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse