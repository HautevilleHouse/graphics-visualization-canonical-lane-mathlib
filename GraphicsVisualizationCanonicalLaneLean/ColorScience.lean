import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure ColorScience where
  colorMatchingFunctions : Prop
  spectralPowerDistribution : Prop
  colorSpaceConversion : Prop
  gammaCorrection : Prop

def ColorScienceClosed (C : ColorScience) : Prop :=
  C.colorMatchingFunctions ∧ C.spectralPowerDistribution ∧ C.colorSpaceConversion ∧ C.gammaCorrection

structure ColorScienceEvidence (C : ColorScience) where
  colorMatchingFunctionsClosed : C.colorMatchingFunctions
  spectralPowerDistributionClosed : C.spectralPowerDistribution
  colorSpaceConversionClosed : C.colorSpaceConversion
  gammaCorrectionClosed : C.gammaCorrection

theorem color_science_closed_from_evidence (C : ColorScience) (E : ColorScienceEvidence C) :
    ColorScienceClosed C := by
  exact And.intro E.colorMatchingFunctionsClosed
    (And.intro E.spectralPowerDistributionClosed
      (And.intro E.colorSpaceConversionClosed E.gammaCorrectionClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse
