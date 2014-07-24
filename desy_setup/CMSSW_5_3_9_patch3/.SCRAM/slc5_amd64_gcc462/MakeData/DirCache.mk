ifeq ($(strip $(AnalysisDataFormats/TauAnalysis)),)
ALL_COMMONRULES += src_AnalysisDataFormats_TauAnalysis_src
src_AnalysisDataFormats_TauAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisDataFormats_TauAnalysis_src,src/AnalysisDataFormats/TauAnalysis/src,LIBRARY))
AnalysisDataFormatsTauAnalysis := self/AnalysisDataFormats/TauAnalysis
AnalysisDataFormats/TauAnalysis := AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_files := $(patsubst src/AnalysisDataFormats/TauAnalysis/src/%,%,$(wildcard $(foreach dir,src/AnalysisDataFormats/TauAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisDataFormatsTauAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisDataFormats/TauAnalysis/BuildFile
AnalysisDataFormatsTauAnalysis_LOC_USE   := self DataFormats/Candidate DataFormats/StdDictionaries DataFormats/Common DataFormats/JetReco DataFormats/METReco DataFormats/TauReco DataFormats/VertexReco DataFormats/PatCandidates FWCore/MessageLogger rootrflx
AnalysisDataFormatsTauAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisDataFormatsTauAnalysisCapabilities,AnalysisDataFormatsTauAnalysis,$(SCRAMSTORENAME_LIB)))
AnalysisDataFormatsTauAnalysis_PRE_INIT_FUNC += $$(eval $$(call LCGDict,AnalysisDataFormatsTauAnalysis,0,classes,$(LOCALTOP)/src/AnalysisDataFormats/TauAnalysis/src/classes.h,$(LOCALTOP)/src/AnalysisDataFormats/TauAnalysis/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
AnalysisDataFormatsTauAnalysis_EX_LIB   := AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_EX_USE   := $(foreach d,$(AnalysisDataFormatsTauAnalysis_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTauAnalysis_PACKAGE := self/src/AnalysisDataFormats/TauAnalysis/src
ALL_PRODS += AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_INIT_FUNC        += $$(eval $$(call Library,AnalysisDataFormatsTauAnalysis,src/AnalysisDataFormats/TauAnalysis/src,src_AnalysisDataFormats_TauAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(AnalysisDataFormatsTauAnalysis_files_exts),$(AnalysisDataFormatsTauAnalysis_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(CondFormats/EgammaObjects)),)
ALL_COMMONRULES += src_CondFormats_EgammaObjects_src
src_CondFormats_EgammaObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondFormats_EgammaObjects_src,src/CondFormats/EgammaObjects/src,LIBRARY))
CondFormatsEgammaObjects := self/CondFormats/EgammaObjects
CondFormats/EgammaObjects := CondFormatsEgammaObjects
CondFormatsEgammaObjects_files := $(patsubst src/CondFormats/EgammaObjects/src/%,%,$(wildcard $(foreach dir,src/CondFormats/EgammaObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondFormatsEgammaObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/EgammaObjects/BuildFile
CondFormatsEgammaObjects_LOC_USE   := self FWCore/Utilities CondFormats/Common CondFormats/PhysicsToolsObjects rootrflx
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondFormatsEgammaObjectsCapabilities,CondFormatsEgammaObjects,$(SCRAMSTORENAME_LIB)))
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CondFormatsEgammaObjects,0,classes,$(LOCALTOP)/src/CondFormats/EgammaObjects/src/classes.h,$(LOCALTOP)/src/CondFormats/EgammaObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
CondFormatsEgammaObjects_EX_LIB   := CondFormatsEgammaObjects
CondFormatsEgammaObjects_EX_USE   := $(foreach d,$(CondFormatsEgammaObjects_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEgammaObjects_PACKAGE := self/src/CondFormats/EgammaObjects/src
ALL_PRODS += CondFormatsEgammaObjects
CondFormatsEgammaObjects_INIT_FUNC        += $$(eval $$(call Library,CondFormatsEgammaObjects,src/CondFormats/EgammaObjects/src,src_CondFormats_EgammaObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(CondFormatsEgammaObjects_files_exts),$(CondFormatsEgammaObjects_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(DataFormats/JetReco)),)
ALL_COMMONRULES += src_DataFormats_JetReco_src
src_DataFormats_JetReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_JetReco_src,src/DataFormats/JetReco/src,LIBRARY))
DataFormatsJetReco := self/DataFormats/JetReco
DataFormats/JetReco := DataFormatsJetReco
DataFormatsJetReco_files := $(patsubst src/DataFormats/JetReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/JetReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsJetReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/JetReco/BuildFile
DataFormatsJetReco_LOC_USE   := self DataFormats/CaloTowers DataFormats/ParticleFlowCandidate DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/ParticleFlowReco DataFormats/TrackReco FWCore/Utilities rootrflx
DataFormatsJetReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsJetRecoCapabilities,DataFormatsJetReco,$(SCRAMSTORENAME_LIB)))
DataFormatsJetReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsJetReco,0,classes,$(LOCALTOP)/src/DataFormats/JetReco/src/classes.h,$(LOCALTOP)/src/DataFormats/JetReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsJetReco_EX_LIB   := DataFormatsJetReco
DataFormatsJetReco_EX_USE   := $(foreach d,$(DataFormatsJetReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsJetReco_PACKAGE := self/src/DataFormats/JetReco/src
ALL_PRODS += DataFormatsJetReco
DataFormatsJetReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsJetReco,src/DataFormats/JetReco/src,src_DataFormats_JetReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DataFormatsJetReco_files_exts),$(DataFormatsJetReco_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(DataFormats/METReco)),)
ALL_COMMONRULES += src_DataFormats_METReco_src
src_DataFormats_METReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_METReco_src,src/DataFormats/METReco/src,LIBRARY))
DataFormatsMETReco := self/DataFormats/METReco
DataFormats/METReco := DataFormatsMETReco
DataFormatsMETReco_files := $(patsubst src/DataFormats/METReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/METReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsMETReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/METReco/BuildFile
DataFormatsMETReco_LOC_USE   := self DataFormats/Common DataFormats/RecoCandidate FWCore/Utilities boost root rootrflx
DataFormatsMETReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsMETRecoCapabilities,DataFormatsMETReco,$(SCRAMSTORENAME_LIB)))
DataFormatsMETReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsMETReco,0,classes,$(LOCALTOP)/src/DataFormats/METReco/src/classes.h,$(LOCALTOP)/src/DataFormats/METReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsMETReco_EX_LIB   := DataFormatsMETReco
DataFormatsMETReco_EX_USE   := $(foreach d,$(DataFormatsMETReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMETReco_PACKAGE := self/src/DataFormats/METReco/src
ALL_PRODS += DataFormatsMETReco
DataFormatsMETReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsMETReco,src/DataFormats/METReco/src,src_DataFormats_METReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DataFormatsMETReco_files_exts),$(DataFormatsMETReco_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(DataFormats/PatCandidates)),)
ALL_COMMONRULES += src_DataFormats_PatCandidates_src
src_DataFormats_PatCandidates_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_src,src/DataFormats/PatCandidates/src,LIBRARY))
DataFormatsPatCandidates := self/DataFormats/PatCandidates
DataFormats/PatCandidates := DataFormatsPatCandidates
DataFormatsPatCandidates_files := $(patsubst src/DataFormats/PatCandidates/src/%,%,$(wildcard $(foreach dir,src/DataFormats/PatCandidates/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsPatCandidates_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/BuildFile
DataFormatsPatCandidates_LOC_USE   := self FWCore/Utilities DataFormats/Common DataFormats/StdDictionaries DataFormats/Candidate DataFormats/MuonReco DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/HepMCCandidate DataFormats/BTauReco CondFormats/L1TObjects DataFormats/L1Trigger DataFormats/HLTReco boost rootrflx
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsPatCandidatesCapabilities,DataFormatsPatCandidates,$(SCRAMSTORENAME_LIB)))
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsPatCandidates,0,classes,$(LOCALTOP)/src/DataFormats/PatCandidates/src/classes.h,$(LOCALTOP)/src/DataFormats/PatCandidates/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsPatCandidates_EX_LIB   := DataFormatsPatCandidates
DataFormatsPatCandidates_EX_USE   := $(foreach d,$(DataFormatsPatCandidates_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsPatCandidates_PACKAGE := self/src/DataFormats/PatCandidates/src
ALL_PRODS += DataFormatsPatCandidates
DataFormatsPatCandidates_INIT_FUNC        += $$(eval $$(call Library,DataFormatsPatCandidates,src/DataFormats/PatCandidates/src,src_DataFormats_PatCandidates_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DataFormatsPatCandidates_files_exts),$(DataFormatsPatCandidates_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(DataFormats/StdDictionaries)),)
ALL_COMMONRULES += src_DataFormats_StdDictionaries_src
src_DataFormats_StdDictionaries_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_StdDictionaries_src,src/DataFormats/StdDictionaries/src,LIBRARY))
DataFormatsStdDictionaries := self/DataFormats/StdDictionaries
DataFormats/StdDictionaries := DataFormatsStdDictionaries
DataFormatsStdDictionaries_files := $(patsubst src/DataFormats/StdDictionaries/src/%,%,$(wildcard $(foreach dir,src/DataFormats/StdDictionaries/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsStdDictionaries_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/StdDictionaries/BuildFile
DataFormatsStdDictionaries_LOC_USE   := self rootrflx
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsStdDictionariesCapabilities,DataFormatsStdDictionaries,$(SCRAMSTORENAME_LIB)))
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsStdDictionaries,0,classes,$(LOCALTOP)/src/DataFormats/StdDictionaries/src/classes.h,$(LOCALTOP)/src/DataFormats/StdDictionaries/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsStdDictionaries_EX_LIB   := DataFormatsStdDictionaries
DataFormatsStdDictionaries_EX_USE   := $(foreach d,$(DataFormatsStdDictionaries_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsStdDictionaries_PACKAGE := self/src/DataFormats/StdDictionaries/src
ALL_PRODS += DataFormatsStdDictionaries
DataFormatsStdDictionaries_INIT_FUNC        += $$(eval $$(call Library,DataFormatsStdDictionaries,src/DataFormats/StdDictionaries/src,src_DataFormats_StdDictionaries_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(DataFormatsStdDictionaries_files_exts),$(DataFormatsStdDictionaries_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(EGamma/EGammaAnalysisTools)),)
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_src
src_EGamma_EGammaAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_src,src/EGamma/EGammaAnalysisTools/src,LIBRARY))
EGammaEGammaAnalysisTools := self/EGamma/EGammaAnalysisTools
EGamma/EGammaAnalysisTools := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_files := $(patsubst src/EGamma/EGammaAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/EGamma/EGammaAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EGammaEGammaAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/BuildFile
EGammaEGammaAnalysisTools_LOC_USE   := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
EGammaEGammaAnalysisTools_EX_LIB   := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_EX_USE   := $(foreach d,$(EGammaEGammaAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EGammaEGammaAnalysisTools_PACKAGE := self/src/EGamma/EGammaAnalysisTools/src
ALL_PRODS += EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/src,src_EGamma_EGammaAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EGammaEGammaAnalysisTools_files_exts),$(EGammaEGammaAnalysisTools_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(JetMETCorrections/METPUSubtraction)),)
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_src
src_JetMETCorrections_METPUSubtraction_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_src,src/JetMETCorrections/METPUSubtraction/src,LIBRARY))
JetMETCorrectionsMETPUSubtraction := self/JetMETCorrections/METPUSubtraction
JetMETCorrections/METPUSubtraction := JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_files := $(patsubst src/JetMETCorrections/METPUSubtraction/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/METPUSubtraction/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsMETPUSubtraction_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/METPUSubtraction/BuildFile
JetMETCorrectionsMETPUSubtraction_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco RecoMET/METAlgorithms RecoJets/JetProducers JetMETCorrections/Algorithms root
JetMETCorrectionsMETPUSubtraction_EX_LIB   := JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_EX_USE   := $(foreach d,$(JetMETCorrectionsMETPUSubtraction_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsMETPUSubtraction_PACKAGE := self/src/JetMETCorrections/METPUSubtraction/src
ALL_PRODS += JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/src,src_JetMETCorrections_METPUSubtraction_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(JetMETCorrectionsMETPUSubtraction_files_exts),$(JetMETCorrectionsMETPUSubtraction_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(Muon/MuonAnalysisTools)),)
ALL_COMMONRULES += src_Muon_MuonAnalysisTools_src
src_Muon_MuonAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Muon_MuonAnalysisTools_src,src/Muon/MuonAnalysisTools/src,LIBRARY))
MuonMuonAnalysisTools := self/Muon/MuonAnalysisTools
Muon/MuonAnalysisTools := MuonMuonAnalysisTools
MuonMuonAnalysisTools_files := $(patsubst src/Muon/MuonAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/Muon/MuonAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MuonMuonAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/Muon/MuonAnalysisTools/BuildFile
MuonMuonAnalysisTools_LOC_USE   := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
MuonMuonAnalysisTools_EX_LIB   := MuonMuonAnalysisTools
MuonMuonAnalysisTools_EX_USE   := $(foreach d,$(MuonMuonAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MuonMuonAnalysisTools_PACKAGE := self/src/Muon/MuonAnalysisTools/src
ALL_PRODS += MuonMuonAnalysisTools
MuonMuonAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,MuonMuonAnalysisTools,src/Muon/MuonAnalysisTools/src,src_Muon_MuonAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(MuonMuonAnalysisTools_files_exts),$(MuonMuonAnalysisTools_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(MyRootMaker/MyRootMaker)),)
ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_src
src_MyRootMaker_MyRootMaker_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_src,src/MyRootMaker/MyRootMaker/src,LIBRARY))
MyRootMakerMyRootMaker := self/MyRootMaker/MyRootMaker
MyRootMaker/MyRootMaker := MyRootMakerMyRootMaker
MyRootMakerMyRootMaker_files := $(patsubst src/MyRootMaker/MyRootMaker/src/%,%,$(wildcard $(foreach dir,src/MyRootMaker/MyRootMaker/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MyRootMakerMyRootMaker_BuildFile    := $(WORKINGDIR)/cache/bf/src/MyRootMaker/MyRootMaker/BuildFile
MyRootMakerMyRootMaker_LOC_USE   := self DataFormats/Common DataFormats/JetReco DataFormats/Math DataFormats/MuonReco DataFormats/Luminosity DataFormats/PatCandidates DataFormats/L1GlobalTrigger FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/MessageService FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities CommonTools/UtilAlgos JetMETCorrections/Objects HLTrigger/HLTcore MagneticField/Engine TrackingTools/MaterialEffects TrackingTools/GeomPropagators RecoEgamma/EgammaTools Geometry/CaloGeometry RecoVertex/KalmanVertexFit RecoVertex/VertexPrimitives AnalysisDataFormats/TauAnalysis Muon/MuonAnalysisTools EGamma/EGammaAnalysisTools RecoBTag/BTagTools RecoVertex/KinematicFitPrimitives clhep RecoVertex/AdaptiveVertexFit root
MyRootMakerMyRootMaker_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MyRootMakerMyRootMaker,MyRootMakerMyRootMaker,$(SCRAMSTORENAME_LIB)))
MyRootMakerMyRootMaker_PACKAGE := self/src/MyRootMaker/MyRootMaker/src
ALL_PRODS += MyRootMakerMyRootMaker
MyRootMakerMyRootMaker_INIT_FUNC        += $$(eval $$(call Library,MyRootMakerMyRootMaker,src/MyRootMaker/MyRootMaker/src,src_MyRootMaker_MyRootMaker_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(MyRootMakerMyRootMaker_files_exts),$(MyRootMakerMyRootMaker_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE   := self DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatAlgos_files_exts),$(PhysicsToolsPatAlgos_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE   := self TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtilsCapabilities,PhysicsToolsPatUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,0,classes,$(LOCALTOP)/src/PhysicsTools/PatUtils/src/classes.h,$(LOCALTOP)/src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(foreach d,$(PhysicsToolsPatUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatUtils_files_exts),$(PhysicsToolsPatUtils_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoJets/JetProducers)),)
ALL_COMMONRULES += src_RecoJets_JetProducers_src
src_RecoJets_JetProducers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_src,src/RecoJets/JetProducers/src,LIBRARY))
RecoJetsJetProducers := self/RecoJets/JetProducers
RecoJets/JetProducers := RecoJetsJetProducers
RecoJetsJetProducers_files := $(patsubst src/RecoJets/JetProducers/src/%,%,$(wildcard $(foreach dir,src/RecoJets/JetProducers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoJetsJetProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/BuildFile
RecoJetsJetProducers_LOC_USE   := self boost FWCore/Framework DataFormats/JetReco Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit SimDataFormats/CaloHit RecoJets/JetAlgorithms DataFormats/CastorReco fastjet roottmva
RecoJetsJetProducers_EX_LIB   := RecoJetsJetProducers
RecoJetsJetProducers_EX_USE   := $(foreach d,$(RecoJetsJetProducers_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsJetProducers_PACKAGE := self/src/RecoJets/JetProducers/src
ALL_PRODS += RecoJetsJetProducers
RecoJetsJetProducers_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetProducers,src/RecoJets/JetProducers/src,src_RecoJets_JetProducers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoJetsJetProducers_files_exts),$(RecoJetsJetProducers_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoMET/METAlgorithms)),)
ALL_COMMONRULES += src_RecoMET_METAlgorithms_src
src_RecoMET_METAlgorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMET_METAlgorithms_src,src/RecoMET/METAlgorithms/src,LIBRARY))
RecoMETMETAlgorithms := self/RecoMET/METAlgorithms
RecoMET/METAlgorithms := RecoMETMETAlgorithms
RecoMETMETAlgorithms_files := $(patsubst src/RecoMET/METAlgorithms/src/%,%,$(wildcard $(foreach dir,src/RecoMET/METAlgorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMETMETAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METAlgorithms/BuildFile
RecoMETMETAlgorithms_LOC_USE   := self DataFormats/METReco DataFormats/CaloTowers DataFormats/Common DataFormats/CSCRecHit DataFormats/Math FWCore/ParameterSet rootphysics MagneticField/Records MagneticField/Engine TrackingTools/GeomPropagators TrackingTools/TrackAssociator Geometry/CaloTopology Geometry/CSCGeometry RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/ParticleFlowCandidate DataFormats/L1GlobalMuonTrigger DataFormats/MuonReco DataFormats/ParticleFlowReco DataFormats/VertexReco CondFormats/JetMETObjects RecoMuon/TrackingTools RecoParticleFlow/PFClusterTools
RecoMETMETAlgorithms_EX_LIB   := RecoMETMETAlgorithms
RecoMETMETAlgorithms_EX_USE   := $(foreach d,$(RecoMETMETAlgorithms_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMETMETAlgorithms_PACKAGE := self/src/RecoMET/METAlgorithms/src
ALL_PRODS += RecoMETMETAlgorithms
RecoMETMETAlgorithms_INIT_FUNC        += $$(eval $$(call Library,RecoMETMETAlgorithms,src/RecoMET/METAlgorithms/src,src_RecoMET_METAlgorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoMETMETAlgorithms_files_exts),$(RecoMETMETAlgorithms_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoParticleFlow/PFProducer)),)
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_src
src_RecoParticleFlow_PFProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_src,src/RecoParticleFlow/PFProducer/src,LIBRARY))
RecoParticleFlowPFProducer := self/RecoParticleFlow/PFProducer
RecoParticleFlow/PFProducer := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_files := $(patsubst src/RecoParticleFlow/PFProducer/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowPFProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/BuildFile
RecoParticleFlowPFProducer_LOC_USE   := self CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/Provenance DataFormats/TrackReco DataFormats/VertexReco DataFormats/MuonReco DataFormats/EcalDetId RecoParticleFlow/PFClusterTools RecoEcal/EgammaCoreTools boost clhep rootmath roottmva
RecoParticleFlowPFProducer_EX_LIB   := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_EX_USE   := $(foreach d,$(RecoParticleFlowPFProducer_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFProducer_PACKAGE := self/src/RecoParticleFlow/PFProducer/src
ALL_PRODS += RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/src,src_RecoParticleFlow_PFProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFProducer_files_exts),$(RecoParticleFlowPFProducer_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(RecoTauTag/RecoTau)),)
ALL_COMMONRULES += src_RecoTauTag_RecoTau_src
src_RecoTauTag_RecoTau_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_src,src/RecoTauTag/RecoTau/src,LIBRARY))
RecoTauTagRecoTau := self/RecoTauTag/RecoTau
RecoTauTag/RecoTau := RecoTauTagRecoTau
RecoTauTagRecoTau_files := $(patsubst src/RecoTauTag/RecoTau/src/%,%,$(wildcard $(foreach dir,src/RecoTauTag/RecoTau/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTauTagRecoTau_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/BuildFile
RecoTauTagRecoTau_LOC_USE   := self MagneticField/Engine MagneticField/Records DataFormats/Math DataFormats/TauReco DataFormats/VertexReco DataFormats/ParticleFlowCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit TrackingTools/TransientTrack TrackingTools/IPTools RecoTauTag/TauTagTools RecoVertex/KalmanVertexFit RecoParticleFlow/PFClusterTools TrackingTools/TrackAssociator PhysicsTools/JetMCUtils roottmva
RecoTauTagRecoTau_EX_LIB   := RecoTauTagRecoTau
RecoTauTagRecoTau_EX_USE   := $(foreach d,$(RecoTauTagRecoTau_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagRecoTau_PACKAGE := self/src/RecoTauTag/RecoTau/src
ALL_PRODS += RecoTauTagRecoTau
RecoTauTagRecoTau_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagRecoTau,src/RecoTauTag/RecoTau/src,src_RecoTauTag_RecoTau_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoTauTagRecoTau_files_exts),$(RecoTauTagRecoTau_files_exts),$(SRC_FILES_SUFFIXES))))
endif
ifeq ($(strip $(TauAnalysis/CandidateTools)),)
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_src
src_TauAnalysis_CandidateTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_src,src/TauAnalysis/CandidateTools/src,LIBRARY))
TauAnalysisCandidateTools := self/TauAnalysis/CandidateTools
TauAnalysis/CandidateTools := TauAnalysisCandidateTools
TauAnalysisCandidateTools_files := $(patsubst src/TauAnalysis/CandidateTools/src/%,%,$(wildcard $(foreach dir,src/TauAnalysis/CandidateTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TauAnalysisCandidateTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/BuildFile
TauAnalysisCandidateTools_LOC_USE   := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/BeamSpot DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/VertexReco AnalysisDataFormats/TauAnalysis JetMETCorrections/METPUSubtraction PhysicsTools/JetMCUtils RecoMET/METAlgorithms RecoVertex/VertexPrimitives RecoVertex/AdaptiveVertexFit RecoVertex/KalmanVertexFit TrackingTools/TransientTrack TrackingTools/Records TrackingTools/TrajectoryState root rootcintex roofit rootminuit rootminuit2 roottmva classlib
TauAnalysisCandidateTools_PRE_INIT_FUNC += $$(eval $$(call RootDict,TauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/src, TauAnalysisCandidateToolsLinkDef.h))
TauAnalysisCandidateTools_EX_LIB   := TauAnalysisCandidateTools
TauAnalysisCandidateTools_EX_USE   := $(foreach d,$(TauAnalysisCandidateTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TauAnalysisCandidateTools_PACKAGE := self/src/TauAnalysis/CandidateTools/src
ALL_PRODS += TauAnalysisCandidateTools
TauAnalysisCandidateTools_INIT_FUNC        += $$(eval $$(call Library,TauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/src,src_TauAnalysis_CandidateTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(TauAnalysisCandidateTools_files_exts),$(TauAnalysisCandidateTools_files_exts),$(SRC_FILES_SUFFIXES))))
endif
