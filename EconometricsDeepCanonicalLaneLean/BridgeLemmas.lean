import EconometricsDeepCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconometricsDeepCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconometricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconometricsDeepCanonicalLaneLean
end HautevilleHouse