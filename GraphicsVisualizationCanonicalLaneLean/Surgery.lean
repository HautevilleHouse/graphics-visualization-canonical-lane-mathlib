import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure SurgeryPackage where
  surgicalToolPath : Prop
  incisionPlanning : Prop
  tissueManipulation : Prop
  closure : Prop

structure SurgeryEvidence (S : SurgeryPackage) where
  surgicalToolPathClosed : S.surgicalToolPath
  incisionPlanningClosed : S.incisionPlanning
  tissueManipulationClosed : S.tissueManipulation
  closureClosed : S.closure

def SurgeryClosed (S : SurgeryPackage) : Prop :=
  S.surgicalToolPath ∧ S.incisionPlanning ∧ S.tissueManipulation ∧ S.closure

theorem surgery_closed_from_evidence (S : SurgeryPackage) (E : SurgeryEvidence S) : SurgeryClosed S := by
  exact And.intro E.surgicalToolPathClosed
    (And.intro E.incisionPlanningClosed
      (And.intro E.tissueManipulationClosed E.closureClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse