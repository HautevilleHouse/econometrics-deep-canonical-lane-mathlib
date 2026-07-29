import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure LinearModel (n : Nat) where
  endogenous : ℝ^n
  exogenous : ℝ^n
  error : ℝ^n
  coefficient : ℝ
  orthogonalityCondition : Prop

structure Instrument (k : Nat) where
  instrumentMatrix : ℝ^(n × k)
  relevance : Prop
  exogeneity : Prop

def twoStageLeastSquares (n k : Nat) (model : LinearModel n) (instr : Instrument k) : ℝ :=
  -- regression coefficients
  0.0

theorem consistency_of_2SLS (n k : Nat) (model : LinearModel n) (instr : Instrument k)
    (hrel : instr.relevance) (hexog : instr.exogeneity) (horth : model.orthogonalityCondition) :
  twoStageLeastSquares n k model instr = model.coefficient :=
  by
    -- asymptotic consistency
    sorry

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse
