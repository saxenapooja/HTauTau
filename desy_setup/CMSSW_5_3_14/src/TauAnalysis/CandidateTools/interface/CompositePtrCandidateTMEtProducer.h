#ifndef TauAnalysis_CandidateTools_CompositePtrCandidateTMEtProducer_h
#define TauAnalysis_CandidateTools_CompositePtrCandidateTMEtProducer_h

/** \class CompositePtrCandidateTMEtProducer
 *
 * Produce combinations of visible tau decay products and missing transverse momentum 
 * (representing the undetected momentum carried away 
 *  the neutrino produced in a W --> tau nu decay and the neutrinos produced in the tau decay)
 * 
 * \authors Christian Veelken
 *
 * \version $Revision: 1.5 $
 *
 * $Id: CompositePtrCandidateTMEtProducer.h,v 1.5 2011/06/08 10:13:49 veelken Exp $
 *
 */

#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/EDProducer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/EventSetup.h"

#include "FWCore/MessageLogger/interface/MessageLogger.h"

#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/Utilities/interface/InputTag.h"

#include "DataFormats/Common/interface/View.h"

#include "DataFormats/Math/interface/deltaR.h"

#include "TauAnalysis/CandidateTools/interface/FetchCollection.h"

#include "AnalysisDataFormats/TauAnalysis/interface/CompositePtrCandidateTMEt.h"
#include "AnalysisDataFormats/TauAnalysis/interface/CompositePtrCandidateTMEtFwd.h"

#include "TauAnalysis/CandidateTools/interface/CompositePtrCandidateTMEtAlgorithm.h"

#include "DataFormats/METReco/interface/MET.h"

#include <string>

template<typename T>
class CompositePtrCandidateTMEtProducer : public edm::EDProducer 
{
  typedef edm::Ptr<T> TPtr;
  typedef edm::Ptr<reco::MET> MEtPtr;

  typedef std::vector<CompositePtrCandidateTMEt<T> > CompositePtrCandidateCollection;
  
 public:

  explicit CompositePtrCandidateTMEtProducer(const edm::ParameterSet& cfg)
    : algorithm_(cfg)
  {
    srcVisDecayProducts_ = cfg.getParameter<edm::InputTag>("srcVisDecayProducts");
    srcMET_ = cfg.getParameter<edm::InputTag>("srcMET");

    verbosity_ = cfg.getUntrackedParameter<int>("verbosity", 0);

    produces<CompositePtrCandidateCollection>("");
  }

  ~CompositePtrCandidateTMEtProducer() {}

  void beginJob()
  {
    algorithm_.beginJob();
  }

  void produce(edm::Event& evt, const edm::EventSetup& es)
  {
    typedef edm::View<T> TView;
    edm::Handle<TView> visDecayProductsCollection;
    pf::fetchCollection(visDecayProductsCollection, srcVisDecayProducts_, evt);
  
    typedef edm::View<reco::MET> MEtView;
    edm::Handle<MEtView> metCollection;
    pf::fetchCollection(metCollection, srcMET_, evt);

//--- check that there is exactly one MET object in the event
//    (missing transverse momentum is an **event level** quantity)
    MEtPtr metPtr;
    if ( metCollection->size() == 1 ) {
      metPtr = metCollection->ptrAt(0);
    } else {
      edm::LogError ("produce") 
	<< " Found " << metCollection->size() << " MET objects in collection = " << srcMET_ << ","
	<< " --> CompositePtrCandidateTMEt collection will NOT be produced !!";
      std::auto_ptr<CompositePtrCandidateCollection> emptyCompositePtrCandidateCollection(new CompositePtrCandidateCollection());
      evt.put(emptyCompositePtrCandidateCollection);
      return;
    }

    algorithm_.beginEvent(evt, es);

    std::auto_ptr<CompositePtrCandidateCollection> compositePtrCandidateCollection(new CompositePtrCandidateCollection());

    for ( unsigned idxVisDecayProducts = 0, numVisDecayProducts = visDecayProductsCollection->size(); 
	  idxVisDecayProducts < numVisDecayProducts; ++idxVisDecayProducts ) {
      TPtr visDecayProductsPtr = visDecayProductsCollection->ptrAt(idxVisDecayProducts);
      
      CompositePtrCandidateTMEt<T> compositePtrCandidate = 
	algorithm_.buildCompositePtrCandidate(visDecayProductsPtr, metPtr);
      compositePtrCandidateCollection->push_back(compositePtrCandidate);
    }

//--- add the collection of reconstructed CompositePtrCandidateTMEts to the event
    evt.put(compositePtrCandidateCollection);
  }

 private:

  CompositePtrCandidateTMEtAlgorithm<T> algorithm_;
  
  edm::InputTag srcVisDecayProducts_;
  edm::InputTag srcMET_;

  int verbosity_;
};

#endif

