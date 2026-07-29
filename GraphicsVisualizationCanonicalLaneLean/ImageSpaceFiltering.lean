import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure ImageSpaceFilteringPackage where
  convolutionKernel : Type u
  gaussianBlur : Prop
  bilateralFilter : Prop
  edgeDetection : Prop

structure ImageSpaceFilteringEvidence (I : ImageSpaceFilteringPackage) where
  gaussianBlurClosed : I.gaussianBlur
  bilateralFilterClosed : I.bilateralFilter
  edgeDetectionClosed : I.edgeDetection

def ImageSpaceFilteringClosed (I : ImageSpaceFilteringPackage) : Prop :=
  I.gaussianBlur ∧ I.bilateralFilter ∧ I.edgeDetection

theorem image_space_filtering_closed_from_evidence (I : ImageSpaceFilteringPackage)
    (E : ImageSpaceFilteringEvidence I) : ImageSpaceFilteringClosed I := by
  exact And.intro E.gaussianBlurClosed (And.intro E.bilateralFilterClosed E.edgeDetectionClosed)

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse