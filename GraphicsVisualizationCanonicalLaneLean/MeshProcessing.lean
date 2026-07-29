import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure MeshProcessing where
  vertexBuffer : Type
  indexBuffer : Type
  meshTopology : Type
  vertexTransform : Type
  vertexBufferValid : Prop
  indexBufferValid : Prop
  meshTopologyConsistent : Prop
  vertexTransformAccurate : Prop

structure MeshProcessingEvidence (M : MeshProcessing) where
  vertexBufferValidClosed : M.vertexBufferValid
  indexBufferValidClosed : M.indexBufferValid
  meshTopologyConsistentClosed : M.meshTopologyConsistent
  vertexTransformAccurateClosed : M.vertexTransformAccurate

def MeshProcessingClosed (M : MeshProcessing) : Prop :=
  M.vertexBufferValid ∧ M.indexBufferValid ∧ 
  M.meshTopologyConsistent ∧ M.vertexTransformAccurate

theorem mesh_processing_closed_from_evidence (M : MeshProcessing) 
    (E : MeshProcessingEvidence M) : MeshProcessingClosed M := by
  exact And.intro E.vertexBufferValidClosed
    (And.intro E.indexBufferValidClosed
      (And.intro E.meshTopologyConsistentClosed E.vertexTransformAccurateClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse