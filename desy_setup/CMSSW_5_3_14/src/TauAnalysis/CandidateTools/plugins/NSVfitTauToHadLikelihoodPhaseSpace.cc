#include "TauAnalysis/CandidateTools/plugins/NSVfitTauToHadLikelihoodPhaseSpace.h"

#include "TauAnalysis/CandidateTools/interface/NSVfitAlgorithmBase.h"
#include "TauAnalysis/CandidateTools/interface/svFitAuxFunctions.h"

#include "AnalysisDataFormats/TauAnalysis/interface/NSVfitTauToHadHypothesis.h"

#include <TMath.h>

using namespace SVfit_namespace;

NSVfitTauToHadLikelihoodPhaseSpace::NSVfitTauToHadLikelihoodPhaseSpace(const edm::ParameterSet& cfg)
  : NSVfitSingleParticleLikelihood(cfg)
{
  applySinThetaFactor_ = cfg.exists("applySinThetaFactor") ?
    cfg.getParameter<bool>("applySinThetaFactor") : false;
}

NSVfitTauToHadLikelihoodPhaseSpace::~NSVfitTauToHadLikelihoodPhaseSpace()
{
// nothing to be done yet...
}

void NSVfitTauToHadLikelihoodPhaseSpace::beginJob(NSVfitAlgorithmBase* algorithm)
{
  algorithm->requestFitParameter(prodParticleLabel_, nSVfit_namespace::kTau_visEnFracX, pluginName_);
  algorithm->requestFitParameter(prodParticleLabel_, nSVfit_namespace::kTau_phi_lab,    pluginName_);
}

double NSVfitTauToHadLikelihoodPhaseSpace::operator()(const NSVfitSingleParticleHypothesis* hypothesis, int polSign) const
{
//--- compute negative log-likelihood for tau lepton decay "leg"
//    to be compatible with three-body decay,
//    assuming constant matrix element,
//    so that energy and angular distribution of decay products is solely determined by phase-space
//
//    NOTE: the parametrization of the three-body decay phase-space is taken from the PDG:
//          K. Nakamura et al. (Particle Data Group), J. Phys. G 37, 075021 (2010);
//          formula 38.20a
//
  const NSVfitTauToHadHypothesis* hypothesis_T = dynamic_cast<const NSVfitTauToHadHypothesis*>(hypothesis);
  assert(hypothesis_T != 0);
  
  double decayAngle = hypothesis_T->gjAngle();  
  //if ( this->verbosity_ ) std::cout << " decayAngle = " << decayAngle << std::endl;  
  double visEnFracX = hypothesis_T->visEnFracX();
  double visMass = hypothesis_T->p4vis_rf().mass();
  if ( visMass < chargedPionMass ) visMass = chargedPionMass;
  if ( visMass > tauLeptonMass   ) visMass = tauLeptonMass;
  double visMass2 = square(visMass);
  double Pvis_rf = hypothesis_T->p4vis_rf().P();
#ifdef SVFIT_DEBUG     
  if ( this->verbosity_ ) {
    std::cout << "<NSVfitTauToHadLikelihoodPhaseSpace::operator()>:" << std::endl;
    std::cout << " decayAngle = " << decayAngle << std::endl;
    std::cout << " visEnFracX = " << visEnFracX << std::endl;
    std::cout << " visMass = " << visMass << std::endl;
  }
#endif
  // CV: normalize likelihood function such that 
  //               1
  //       integral  prob dX = 1.
  //               0
  double prob = tauLeptonMass/(2.*Pvis_rf);
  if ( visEnFracX < (visMass2/tauLeptonMass2) ) {
    double visEnFracX_limit = visMass2/tauLeptonMass2;
    prob /= (1. + 1.e+6*square(visEnFracX - visEnFracX_limit));
  } else if ( visEnFracX > 1. ) {
    double visEnFracX_limit = 1.;
    prob /= (1. + 1.e+6*square(visEnFracX - visEnFracX_limit));
  }
  if ( applySinThetaFactor_ ) prob *= (0.5*TMath::Sin(decayAngle));
  
  if ( applyVisPtCutCorrection_ ) {
    double probCorr = 1.;
    const double epsilon_regularization = 1.e-1;
    if ( hypothesis_T->p4_fitted().pt() > visPtCutThreshold_ ) {     
      double xCut = visPtCutThreshold_/hypothesis_T->p4_fitted().pt();      
      probCorr = 1./((1. - xCut) + epsilon_regularization);
    }
    //if ( this->verbosity_ ) std::cout << "probCorr (had) = " << probCorr << std::endl;
    prob *= probCorr;
  }
#ifdef SVFIT_DEBUG       
  if ( this->verbosity_ ) std::cout << "--> prob = " << prob << std::endl;
#endif
  return prob;
}

#include "FWCore/Framework/interface/MakerMacros.h"

DEFINE_EDM_PLUGIN(NSVfitSingleParticleLikelihoodPluginFactory, NSVfitTauToHadLikelihoodPhaseSpace, "NSVfitTauToHadLikelihoodPhaseSpace");
