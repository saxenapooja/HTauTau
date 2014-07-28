ifeq ($(strip $(MyRootMaker/MyRootMaker)),)
ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_src
src_MyRootMaker_MyRootMaker_src_parent := MyRootMaker/MyRootMaker
src_MyRootMaker_MyRootMaker_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_src,src/MyRootMaker/MyRootMaker/src,LIBRARY))
MyRootMakerMyRootMaker := self/MyRootMaker/MyRootMaker
MyRootMaker/MyRootMaker := MyRootMakerMyRootMaker
MyRootMakerMyRootMaker_files := $(patsubst src/MyRootMaker/MyRootMaker/src/%,%,$(wildcard $(foreach dir,src/MyRootMaker/MyRootMaker/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MyRootMakerMyRootMaker_BuildFile    := $(WORKINGDIR)/cache/bf/src/MyRootMaker/MyRootMaker/BuildFile
MyRootMakerMyRootMaker_LOC_USE := self DataFormats/Common DataFormats/JetReco DataFormats/Math DataFormats/MuonReco DataFormats/Luminosity DataFormats/PatCandidates DataFormats/L1GlobalTrigger FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/MessageService FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/IsolationUtils PhysicsTools/Utilities PhysicsTools/JetMCUtils CommonTools/UtilAlgos JetMETCorrections/Objects HLTrigger/HLTcore MagneticField/Engine TrackingTools/MaterialEffects TrackingTools/GeomPropagators RecoEgamma/EgammaTools Geometry/CaloGeometry RecoVertex/KalmanVertexFit RecoVertex/VertexPrimitives AnalysisDataFormats/TauAnalysis Muon/MuonAnalysisTools EGamma/EGammaAnalysisTools RecoBTag/BTagTools RecoVertex/KinematicFitPrimitives clhep RecoVertex/AdaptiveVertexFit root
MyRootMakerMyRootMaker_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MyRootMakerMyRootMaker,MyRootMakerMyRootMaker,$(SCRAMSTORENAME_LIB)))
MyRootMakerMyRootMaker_PACKAGE := self/src/MyRootMaker/MyRootMaker/src
ALL_PRODS += MyRootMakerMyRootMaker
MyRootMakerMyRootMaker_INIT_FUNC        += $$(eval $$(call Library,MyRootMakerMyRootMaker,src/MyRootMaker/MyRootMaker/src,src_MyRootMaker_MyRootMaker_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
