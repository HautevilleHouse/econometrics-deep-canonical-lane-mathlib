import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

structure EconometricSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconometricAdmittedObject where
  space : EconometricSpace
  equilibriumConstraints : Prop
  empiricalValidity : Prop
  modelIdentification : Prop
  conclusion : modelIdentification

structure EconometricEndgameState where
  object : EconometricAdmittedObject

def EconometricWitnessClosed (O : EconometricAdmittedObject) : Prop :=
  O.modelIdentification

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse