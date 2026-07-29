import EconometricsDeepCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def econometricProjection : Projection EconometricEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem econometric_projection_idempotent (x : EconometricEndgameState) :
    econometricProjection.toFun (econometricProjection.toFun x) = econometricProjection.toFun x := by
  exact econometricProjection.idempotent x

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse