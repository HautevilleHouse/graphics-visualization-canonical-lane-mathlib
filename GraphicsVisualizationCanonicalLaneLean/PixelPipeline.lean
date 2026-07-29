import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure PixelPipelinePackage where
  fragmentShader : Type u
  vertexShader : Type v
  rasterization : Prop
  depthTesting : Prop
  blending : Prop

structure PixelPipelineEvidence (P : PixelPipelinePackage) where
  rasterizationClosed : P.rasterization
  depthTestingClosed : P.depthTesting
  blendingClosed : P.blending

def PixelPipelineClosed (P : PixelPipelinePackage) : Prop :=
  P.rasterization ∧ P.depthTesting ∧ P.blending

theorem pixel_pipeline_closed_from_evidence (P : PixelPipelinePackage)
    (E : PixelPipelineEvidence P) : PixelPipelineClosed P := by
  exact And.intro E.rasterizationClosed (And.intro E.depthTestingClosed E.blendingClosed)

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse