import EconometricsDeepCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure AdmissibleClass where
  object : EconometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse