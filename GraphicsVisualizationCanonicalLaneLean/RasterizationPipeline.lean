import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure RasterizationPipeline where
  vertexProcessing : Type
  primitiveAssembly : Type
  fragmentProcessing : Type
  depthTesting : Type
  vertexProcessingCompleted : Prop
  primitiveAssemblyCompleted : Prop
  fragmentProcessingCompleted : Prop
  depthTestingCompleted : Prop

structure RasterizationPipelineEvidence (R : RasterizationPipeline) where
  vertexProcessingCompletedClosed : R.vertexProcessingCompleted
  primitiveAssemblyCompletedClosed : R.primitiveAssemblyCompleted
  fragmentProcessingCompletedClosed : R.fragmentProcessingCompleted
  depthTestingCompletedClosed : R.depthTestingCompleted

def RasterizationPipelineClosed (R : RasterizationPipeline) : Prop := 
  R.vertexProcessingCompleted ∧ R.primitiveAssemblyCompleted ∧ 
  R.fragmentProcessingCompleted ∧ R.depthTestingCompleted

theorem rasterization_pipeline_closed_from_evidence (R : RasterizationPipeline) 
    (E : RasterizationPipelineEvidence R) : RasterizationPipelineClosed R := by
  exact And.intro E.vertexProcessingCompletedClosed
    (And.intro E.primitiveAssemblyCompletedClosed
      (And.intro E.fragmentProcessingCompletedClosed E.depthTestingCompletedClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse