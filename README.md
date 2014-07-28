For Higgs to TauTau CP study

* has the desy setup for the CP properties studies of Higgs following Stefan Berge Papers.
* Find the MyRootMaker for /nfs/dust/cms/user/pooja/scratch/h2tautau/CMSSW___*/src/MyRootMaker/MyRootMaker/ as seperate package as 'MyRootMaker'. Should be integrated in place.
* Recipee to switch to CMSSW_5_3_14 (in NAF)

Steps followed are:

a.) make CMSSW_5_2_14/src and copy the code from old release
   also delete the RecoTauTag module

b.) make /temporay/CMSSW_5_3_14/src and get the new tauID using
         git cms-merge-topic -u cms-tau-pog:CMSSW_5_3_X_tauID2014

c.) copy the following module from '/temporary/CMSSW_5_3_14/src' to 'CMSSW_5_2_14/src':
        - RecoTauTag
        - DataFormats/TauReco
        - DataFormats/Common
        - DataFormats/PatCandidates
        - CommonTools
        - RecoParticleFlow
        - replaced PFCandidatesRefVector with PFCandidatePtr in
                a.) TauAnalysis/CandidateTools/*/NSVfitSingleParticleTrackExtractor.*
                b.) RootMaker.cc

d.) get 'PhysicsTools' from
        git cms-addpkg PhysicsTools/PatUtils
        git cms-addpkg PhysicsTools/PatAlgos
        git cms-addpkg PhysicsTools/IsolationAlgos

e.) you might get error of missing
        'metsig::SigInputObj::SigInputObj'
    the Fix is to modify the
        PhysicsTools/PatAlgos/plugins/PATMHTProducer.h and
    switch the path from
        //#include "RecoMET/METAlgorithms/interface/SigInputObj.h"                                                                                      
          #include "DataFormats/METReco/interface/SigInputObj.h"
    also add <DataFormats/METReco> in PhysicsTools/PatAlgos/plugins/BuildXML

f.) complie and should work

- moved the setup of CMSSW_5_3_14 to github
