#ifndef TauAnalysis_CandidateTools_NSVfitResonanceBuilder_h
#define TauAnalysis_CandidateTools_NSVfitResonanceBuilder_h

/** \class NSVfitResonanceBuilder
 *
 * Auxiliary class for building NSVfitResonanceHypothesis objects;
 * used by NSVfit algorithm
 *
 * \author Christian Veelken, UC Davis
 *
 * \version $Revision: 1.2 $
 *
 * $Id: NSVfitResonanceBuilder.h,v 1.2 2012/03/14 16:34:43 veelken Exp $
 *
 */

#include "FWCore/ParameterSet/interface/ParameterSet.h"

#include "TauAnalysis/CandidateTools/interface/NSVfitResonanceBuilderBase.h"

#include "AnalysisDataFormats/TauAnalysis/interface/NSVfitResonanceHypothesis.h"

class NSVfitResonanceBuilder : public NSVfitResonanceBuilderBase
{
 public:
  NSVfitResonanceBuilder(const edm::ParameterSet&); 
  ~NSVfitResonanceBuilder() {}

  virtual NSVfitResonanceHypothesis* build(const inputParticleMap&) const;

 private:
  /// different possible polarization states of each tau lepton pair 
  std::vector<int> polHandedness_;
  unsigned numPolStates_;
};

#endif


