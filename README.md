For Higgs to TauTau CP study

* has the desy setup for the CP properties studies of Higgs following Stefan Berge Papers.
* Find the MyRootMaker for /nfs/dust/cms/user/pooja/scratch/h2tautau/CMSSW___*/src/MyRootMaker/MyRootMaker/ as seperate package as 'MyRootMaker'. Should be integrated in place.
* Recipee to switch to CMSSW_5_3_14 (in NAF)
    Breif guidelines:
        1) setup new CMSSW area in release 5_3_14
        2) check out the new tau Id into the src area
                https://twiki.cern.ch/twiki/bin/view/CMSPublic/SWGuidePFTauID#53X_recommendation_for_Run_I_ana
        3) make a temporaty directory and copy all the code from old CMSSW release
	4) copy the src/ content in the temporaty directory
	5) move the temporaty content to /src area with everything before being deleted 
	6) should compile well

   Detailed guidelines (or steps followed):
	a.) Basic settings
	   module use -a /afs/desy.de/group/cms/modulefiles/
	   module load cmssw
	   cmsrel CMSSW_5_3_14

	b.) setting up code
	   cd CMSSW_5_3_14/src
	   cmsenv
	   git cms-merge-topic -u cms-tau-pog:CMSSW_5_3_X_tauID2014
	   INFO::if everything goes OK,you should see something
	       $ l
total 168
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:00 TauAnalysis
drwxr-xr-x  4 pooja af-cms 8192 Jul 27 11:01 Alignment
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 CommonTools
drwxr-xr-x  5 pooja af-cms 8192 Jul 27 11:01 Configuration
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 DQM
drwxr-xr-x  4 pooja af-cms 8192 Jul 27 11:01 DQMServices
drwxr-xr-x  6 pooja af-cms 8192 Jul 27 11:01 DataFormats
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 ElectroWeakAnalysis
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 FWCore
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 HLTrigger
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 HLTriggerOffline
drwxr-xr-x  4 pooja af-cms 8192 Jul 27 11:01 JetMETCorrections
drwxr-xr-x  5 pooja af-cms 8192 Jul 27 11:01 PhysicsTools
drwxr-xr-x  4 pooja af-cms 8192 Jul 27 11:01 RecoJets
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 RecoParticleFlow
drwxr-xr-x  6 pooja af-cms 8192 Jul 27 11:01 RecoTauTag
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 SimDataFormats
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 SimG4Core
drwxr-xr-x  3 pooja af-cms 8192 Jul 27 11:01 SimGeneral
drwxr-xr-x  7 pooja af-cms 8192 Jul 27 11:01 Validation
drwxr-xr-x 12 pooja af-cms 8192 Jul 27 11:02 GeneratorInterface
            
	   mkdir newDirectory
	   cd newDirectory
	   cp -r ../../CMSSW_old/src/* .
	   cp -r ../* .
           cd ../
           mv newDirectory ../
	   rm -rf *
           mv ../newDirectory/* .
           rm -rf ../newDirectory
           sb -j20
