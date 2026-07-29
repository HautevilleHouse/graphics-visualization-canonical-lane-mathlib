import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure RenderingPipelinePackage where
  vertexProcessing : Prop
  rasterization : Prop
  fragmentProcessing : Prop
  frameBufferOutput : Prop
  pipelineComplete : Prop

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  vertexProcessingClosed : R.vertexProcessing
  rasterizationClosed : R.rasterization
  fragmentProcessingClosed : R.fragmentProcessing
  frameBufferOutputClosed : R.frameBufferOutput
  pipelineCompleteClosed : R.pipelineComplete

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.vertexProcessing ∧ R.rasterization ∧ R.fragmentProcessing ∧ R.frameBufferOutput ∧ R.pipelineComplete

theorem rendering_pipeline_closed_from_evidence (R : RenderingPipelinePackage) (E : RenderingPipelineEvidence R) :
    RenderingPipelineClosed R := by
  exact And.intro E.vertexProcessingClosed
    (And.intro E.rasterizationClosed
      (And.intro E.fragmentProcessingClosed
        (And.intro E.frameBufferOutputClosed E.pipelineCompleteClosed)))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse