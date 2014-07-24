#ifndef AnalysisDataFormats_TauAnalysis_NSVfitEventHypothesisBase_h
#define AnalysisDataFormats_TauAnalysis_NSVfitEventHypothesisBase_h

#include "DataFormats/CLHEP/interface/AlgebraicObjects.h"
#include "DataFormats/Common/interface/OwnVector.h"
#include "DataFormats/Candidate/interface/Candidate.h" 

#include "AnalysisDataFormats/TauAnalysis/interface/NSVfitResonanceHypothesisBase.h"

#include <TH1.h>

#include <string>

class NSVfitEventHypothesisBase
{
 public:

  NSVfitEventHypothesisBase() {}
  NSVfitEventHypothesisBase(const edm::Ptr<reco::Candidate>& met) 
    : met_(met)
  {}
  NSVfitEventHypothesisBase(const NSVfitEventHypothesisBase&);
  virtual ~NSVfitEventHypothesisBase() {}

  virtual NSVfitEventHypothesisBase* clone() const { return new NSVfitEventHypothesisBase(*this); }

  virtual NSVfitEventHypothesisBase& operator=(const NSVfitEventHypothesisBase&);

  const std::string& name() const { return name_; }
  int barcode() const { return barcode_; }

  /// mean and median reconstructed mass,
  /// -1 sigma and +1 sigma limits on reconstructed mass
  double mass() const { return mass_; }
  double massErrUp() const { return massErrUp_; }
  double massErrDown() const { return massErrDown_; }

  bool isValidSolution() const { return isValidSolution_; }

  /// pointer to MET object from which this hypothesis was made
  virtual const edm::Ptr<reco::Candidate>& met() const { return met_; }

  /// access to position of primary event vertex (tau lepton production vertex);
  /// refitted by NSVfit algorithm after excluding from fit tracks associated to tau lepton decay products
  ///
  /// NB: error on position returned by eventVertexErrSVrefitted method not 100% correct,
  ///     as uncertainty on "correction" to primary event vertex position
  ///     determined by NSVfit algorithm is not taken into account
  ///
  bool eventVertexIsValid() const { return eventVertexIsValid_; }
  const AlgebraicVector3& reconstructedEventVertexPos() const { return eventVertexPos_; }
  AlgebraicVector3 eventVertexPos() const { return (eventVertexPos_ + eventVertexShift_); }
  const AlgebraicSymMatrix33& eventVertexCov() const { return eventVertexCov_; }

  const AlgebraicVector3& eventVertexShift() const { return eventVertexShift_; }

  /// fit hypotheses of lepton-pair resonances
  size_t numResonances() const { return resonances_.size(); }
  NSVfitResonanceHypothesisBase* resonance(size_t idx) { return &resonances_[idx]; }
  const NSVfitResonanceHypothesisBase* resonance(size_t idx) const { return &resonances_[idx]; }
  const NSVfitResonanceHypothesisBase* resonance(const std::string& name) const
  {
    const NSVfitResonanceHypothesisBase* retVal = 0;
    for ( edm::OwnVector<NSVfitResonanceHypothesisBase>::const_iterator resonance = resonances_.begin();
	  resonance != resonances_.end(); ++resonance ) {
      if ( resonance->name() == name ) retVal = &(*resonance);
    }
    return retVal;
  }

  double nll() const { return nll_; }

  virtual void print(std::ostream& stream) const 
  {
    stream << "<NSVfitEventHypothesisBase::print>:" << std::endl;
    stream << " name = " << name_ << std::endl;
    stream << " barcode = " << barcode_ << std::endl;
    stream << " met(id:key) = " << met_.id() << ":" << met_.key() << std::endl;
    for ( edm::OwnVector<NSVfitResonanceHypothesisBase>::const_iterator resonance = resonances_.begin();
          resonance != resonances_.end(); ++resonance ) {
      resonance->print(stream);
    }    
    stream << " -log(prob) = " << nll_ << std::endl;
  }

  friend class NSVfitEventBuilderBase;
  friend class NSVfitAlgorithmBase;
  friend class NSVfitAlgorithmByLikelihoodMaximization;
  friend class NSVfitAlgorithmByIntegration2;

 protected:

  /// "human-readable" label for print-out
  std::string name_;

  /// unique identifier to associate hypothesis to likelihood function
  int barcode_;

  /// -log(prob)
  double nll_;

  /// pointer to MET object from which this hypothesis was made
  edm::Ptr<reco::Candidate> met_;

  /// position of primary event vertex (tau lepton production vertex);
  /// refitted by SVfit algorithm after excluding from fit tracks associated to tau lepton decay products
  AlgebraicVector3 eventVertexPos_;
  AlgebraicSymMatrix33 eventVertexCov_;
  AlgebraicVector3 eventVertexShift_;
  bool eventVertexIsValid_;

  /// fit hypotheses for daughter particles
  edm::OwnVector<NSVfitResonanceHypothesisBase> resonances_;

  /// "best fit" reconstructed mass,
  /// -1 sigma and +1 sigma limits on reconstructed mass
  double mass_;
  double massErrUp_;
  double massErrDown_;

  /// flag indicating that computed mass hypotheses are physically "valid" solutions
  bool isValidSolution_;
};

// CV: implementation of operator< needed to store NSVfitEventHypothesisBase objects in edm::OwnVector
bool operator<(const NSVfitEventHypothesisBase&, const NSVfitEventHypothesisBase&);

#endif


