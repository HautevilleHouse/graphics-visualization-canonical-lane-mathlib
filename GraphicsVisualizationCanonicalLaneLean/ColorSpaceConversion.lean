import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure ColorSpaceConversion where
  sourceColorSpace : Type
  targetColorSpace : Type
  transformationMatrix : Type
  gammaCorrection : Type
  transformationMatrixCorrect : Prop
  gammaCorrectionApplied : Prop
  sourceColorSpaceValid : Prop
  targetColorSpaceValid : Prop

structure ColorSpaceConversionEvidence (C : ColorSpaceConversion) where
  transformationMatrixCorrectClosed : C.transformationMatrixCorrect
  gammaCorrectionAppliedClosed : C.gammaCorrectionApplied
  sourceColorSpaceValidClosed : C.sourceColorSpaceValid
  targetColorSpaceValidClosed : C.targetColorSpaceValid

def ColorSpaceConversionClosed (C : ColorSpaceConversion) : Prop :=
  C.transformationMatrixCorrect ∧ C.gammaCorrectionApplied ∧ 
  C.sourceColorSpaceValid ∧ C.targetColorSpaceValid

theorem color_space_conversion_closed_from_evidence (C : ColorSpaceConversion) 
    (E : ColorSpaceConversionEvidence C) : ColorSpaceConversionClosed C := by
  exact And.intro E.transformationMatrixCorrectClosed
    (And.intro E.gammaCorrectionAppliedClosed
      (And.intro E.sourceColorSpaceValidClosed E.targetColorSpaceValidClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse