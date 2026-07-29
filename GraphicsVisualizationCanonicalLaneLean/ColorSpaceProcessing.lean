import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsVisualizationCanonicalLaneLean.MathlibAdmittedObjects

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure ColorSpacePackage where
  linearRGB : Prop
  gammaCorrection : Prop
  chromaticAdaptation : Prop
  colorGamutMapping : Prop

structure ColorSpaceEvidence (C : ColorSpacePackage) where
  linearRGBClosed : C.linearRGB
  gammaCorrectionClosed : C.gammaCorrection
  chromaticAdaptationClosed : C.chromaticAdaptation
  colorGamutMappingClosed : C.colorGamutMapping

def ColorSpaceClosed (C : ColorSpacePackage) : Prop :=
  C.linearRGB ∧ C.gammaCorrection ∧ C.chromaticAdaptation ∧ C.colorGamutMapping

theorem color_space_closed_from_evidence (C : ColorSpacePackage)
    (E : ColorSpaceEvidence C) : ColorSpaceClosed C := by
  exact And.intro E.linearRGBClosed
    (And.intro E.gammaCorrectionClosed
      (And.intro E.chromaticAdaptationClosed E.colorGamutMappingClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse