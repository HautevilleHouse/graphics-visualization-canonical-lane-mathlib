import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsVisualizationCanonicalLaneLean.MathlibAdmittedObjects
import HautevilleHouse.GraphicsVisualizationCanonicalLaneLean.RenderingPipeline
import HautevilleHouse.GraphicsVisualizationCanonicalLaneLean.ColorSpaceProcessing

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsVisualizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedGraphicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graphics_endgame (A : AdmissibleClass) :
    ConstrainedGraphicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse