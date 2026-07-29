import canonicalLaneMathlib.AdmissibleClass
import GraphicsVisualizationCanonicalLaneLean.PixelPipeline
import GraphicsVisualizationCanonicalLaneLean.RayTracingCore
import GraphicsVisualizationCanonicalLaneLean.GPUComputeShader
import GraphicsVisualizationCanonicalLaneLean.ImageSpaceFiltering
import GraphicsVisualizationCanonicalLaneLean.SceneGraphTraversal

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

def GraphicsPipelineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem graphics_pipeline_endgame (A : AdmissibleClass) :
    GraphicsPipelineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse