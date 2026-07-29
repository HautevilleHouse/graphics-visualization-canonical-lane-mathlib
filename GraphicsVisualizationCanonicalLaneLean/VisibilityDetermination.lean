import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure VisibilityDetermination where
  depthTesting : Prop
  occlusionCulling : Prop
  zBufferAlgorithm : Prop
  painterAlgorithm : Prop

def VisibilityDeterminationClosed (V : VisibilityDetermination) : Prop :=
  V.depthTesting ∧ V.occlusionCulling ∧ V.zBufferAlgorithm ∧ V.painterAlgorithm

structure VisibilityDeterminationEvidence (V : VisibilityDetermination) where
  depthTestingClosed : V.depthTesting
  occlusionCullingClosed : V.occlusionCulling
  zBufferAlgorithmClosed : V.zBufferAlgorithm
  painterAlgorithmClosed : V.painterAlgorithm

theorem visibility_determination_closed_from_evidence (V : VisibilityDetermination) (E : VisibilityDeterminationEvidence V) :
    VisibilityDeterminationClosed V := by
  exact And.intro E.depthTestingClosed
    (And.intro E.occlusionCullingClosed
      (And.intro E.zBufferAlgorithmClosed E.painterAlgorithmClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse
