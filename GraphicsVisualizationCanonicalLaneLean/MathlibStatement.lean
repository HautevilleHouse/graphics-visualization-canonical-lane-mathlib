import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsVisualizationCanonicalLaneLean.MathlibAdmittedObjects

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

default mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "graphics-visualization-canonical-lane",
  theoremObject := "Graphics Visualization",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse