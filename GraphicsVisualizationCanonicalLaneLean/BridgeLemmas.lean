import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse