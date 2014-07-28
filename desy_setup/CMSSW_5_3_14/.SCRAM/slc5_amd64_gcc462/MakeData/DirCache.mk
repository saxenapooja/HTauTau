ifeq ($(strip $(AnalysisDataFormats/TauAnalysis)),)
ALL_COMMONRULES += src_AnalysisDataFormats_TauAnalysis_src
src_AnalysisDataFormats_TauAnalysis_src_parent := AnalysisDataFormats/TauAnalysis
src_AnalysisDataFormats_TauAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisDataFormats_TauAnalysis_src,src/AnalysisDataFormats/TauAnalysis/src,LIBRARY))
AnalysisDataFormatsTauAnalysis := self/AnalysisDataFormats/TauAnalysis
AnalysisDataFormats/TauAnalysis := AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_files := $(patsubst src/AnalysisDataFormats/TauAnalysis/src/%,%,$(wildcard $(foreach dir,src/AnalysisDataFormats/TauAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisDataFormatsTauAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisDataFormats/TauAnalysis/BuildFile
AnalysisDataFormatsTauAnalysis_LOC_USE := self DataFormats/Candidate DataFormats/StdDictionaries DataFormats/Common DataFormats/JetReco DataFormats/METReco DataFormats/TauReco DataFormats/VertexReco DataFormats/PatCandidates FWCore/MessageLogger rootrflx
AnalysisDataFormatsTauAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisDataFormatsTauAnalysisCapabilities,AnalysisDataFormatsTauAnalysis,$(SCRAMSTORENAME_LIB)))
AnalysisDataFormatsTauAnalysis_PRE_INIT_FUNC += $$(eval $$(call LCGDict,AnalysisDataFormatsTauAnalysis,0,src/AnalysisDataFormats/TauAnalysis/src/classes.h,src/AnalysisDataFormats/TauAnalysis/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
AnalysisDataFormatsTauAnalysis_EX_LIB   := AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_EX_USE   := $(foreach d,$(AnalysisDataFormatsTauAnalysis_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTauAnalysis_PACKAGE := self/src/AnalysisDataFormats/TauAnalysis/src
ALL_PRODS += AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_INIT_FUNC        += $$(eval $$(call Library,AnalysisDataFormatsTauAnalysis,src/AnalysisDataFormats/TauAnalysis/src,src_AnalysisDataFormats_TauAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/Common)),)
ALL_COMMONRULES += src_DataFormats_Common_src
src_DataFormats_Common_src_parent := DataFormats/Common
src_DataFormats_Common_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_Common_src,src/DataFormats/Common/src,LIBRARY))
DataFormatsCommon := self/DataFormats/Common
DataFormats/Common := DataFormatsCommon
DataFormatsCommon_files := $(patsubst src/DataFormats/Common/src/%,%,$(wildcard $(foreach dir,src/DataFormats/Common/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsCommon_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/BuildFile
DataFormatsCommon_LOC_USE := self DataFormats/Provenance FWCore/MessageLogger FWCore/Utilities DataFormats/StdDictionaries boost rootrflx
DataFormatsCommon_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsCommonCapabilities,DataFormatsCommon,$(SCRAMSTORENAME_LIB)))
DataFormatsCommon_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsCommon,0,src/DataFormats/Common/src/classes.h,src/DataFormats/Common/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsCommon_EX_LIB   := DataFormatsCommon
DataFormatsCommon_EX_USE   := $(foreach d,$(DataFormatsCommon_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCommon_PACKAGE := self/src/DataFormats/Common/src
ALL_PRODS += DataFormatsCommon
DataFormatsCommon_INIT_FUNC        += $$(eval $$(call Library,DataFormatsCommon,src/DataFormats/Common/src,src_DataFormats_Common_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(CondFormats/EgammaObjects)),)
ALL_COMMONRULES += src_CondFormats_EgammaObjects_src
src_CondFormats_EgammaObjects_src_parent := CondFormats/EgammaObjects
src_CondFormats_EgammaObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondFormats_EgammaObjects_src,src/CondFormats/EgammaObjects/src,LIBRARY))
CondFormatsEgammaObjects := self/CondFormats/EgammaObjects
CondFormats/EgammaObjects := CondFormatsEgammaObjects
CondFormatsEgammaObjects_files := $(patsubst src/CondFormats/EgammaObjects/src/%,%,$(wildcard $(foreach dir,src/CondFormats/EgammaObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondFormatsEgammaObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/EgammaObjects/BuildFile
CondFormatsEgammaObjects_LOC_USE := self FWCore/Utilities CondFormats/Common CondFormats/PhysicsToolsObjects rootrflx
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondFormatsEgammaObjectsCapabilities,CondFormatsEgammaObjects,$(SCRAMSTORENAME_LIB)))
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CondFormatsEgammaObjects,0,src/CondFormats/EgammaObjects/src/classes.h,src/CondFormats/EgammaObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
CondFormatsEgammaObjects_EX_LIB   := CondFormatsEgammaObjects
CondFormatsEgammaObjects_EX_USE   := $(foreach d,$(CondFormatsEgammaObjects_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEgammaObjects_PACKAGE := self/src/CondFormats/EgammaObjects/src
ALL_PRODS += CondFormatsEgammaObjects
CondFormatsEgammaObjects_INIT_FUNC        += $$(eval $$(call Library,CondFormatsEgammaObjects,src/CondFormats/EgammaObjects/src,src_CondFormats_EgammaObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/JetReco)),)
ALL_COMMONRULES += src_DataFormats_JetReco_src
src_DataFormats_JetReco_src_parent := DataFormats/JetReco
src_DataFormats_JetReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_JetReco_src,src/DataFormats/JetReco/src,LIBRARY))
DataFormatsJetReco := self/DataFormats/JetReco
DataFormats/JetReco := DataFormatsJetReco
DataFormatsJetReco_files := $(patsubst src/DataFormats/JetReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/JetReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsJetReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/JetReco/BuildFile
DataFormatsJetReco_LOC_USE := self DataFormats/CaloTowers DataFormats/ParticleFlowCandidate DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/ParticleFlowReco DataFormats/TrackReco FWCore/Utilities rootrflx
DataFormatsJetReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsJetRecoCapabilities,DataFormatsJetReco,$(SCRAMSTORENAME_LIB)))
DataFormatsJetReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsJetReco,0,src/DataFormats/JetReco/src/classes.h,src/DataFormats/JetReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsJetReco_EX_LIB   := DataFormatsJetReco
DataFormatsJetReco_EX_USE   := $(foreach d,$(DataFormatsJetReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsJetReco_PACKAGE := self/src/DataFormats/JetReco/src
ALL_PRODS += DataFormatsJetReco
DataFormatsJetReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsJetReco,src/DataFormats/JetReco/src,src_DataFormats_JetReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/METReco)),)
ALL_COMMONRULES += src_DataFormats_METReco_src
src_DataFormats_METReco_src_parent := DataFormats/METReco
src_DataFormats_METReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_METReco_src,src/DataFormats/METReco/src,LIBRARY))
DataFormatsMETReco := self/DataFormats/METReco
DataFormats/METReco := DataFormatsMETReco
DataFormatsMETReco_files := $(patsubst src/DataFormats/METReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/METReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsMETReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/METReco/BuildFile
DataFormatsMETReco_LOC_USE := self DataFormats/Common DataFormats/RecoCandidate FWCore/Utilities boost root rootrflx
DataFormatsMETReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsMETRecoCapabilities,DataFormatsMETReco,$(SCRAMSTORENAME_LIB)))
DataFormatsMETReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsMETReco,0,src/DataFormats/METReco/src/classes.h,src/DataFormats/METReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsMETReco_EX_LIB   := DataFormatsMETReco
DataFormatsMETReco_EX_USE   := $(foreach d,$(DataFormatsMETReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMETReco_PACKAGE := self/src/DataFormats/METReco/src
ALL_PRODS += DataFormatsMETReco
DataFormatsMETReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsMETReco,src/DataFormats/METReco/src,src_DataFormats_METReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/PatCandidates)),)
ALL_COMMONRULES += src_DataFormats_PatCandidates_src
src_DataFormats_PatCandidates_src_parent := DataFormats/PatCandidates
src_DataFormats_PatCandidates_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_src,src/DataFormats/PatCandidates/src,LIBRARY))
DataFormatsPatCandidates := self/DataFormats/PatCandidates
DataFormats/PatCandidates := DataFormatsPatCandidates
DataFormatsPatCandidates_files := $(patsubst src/DataFormats/PatCandidates/src/%,%,$(wildcard $(foreach dir,src/DataFormats/PatCandidates/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsPatCandidates_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/BuildFile
DataFormatsPatCandidates_LOC_USE := self FWCore/Utilities DataFormats/Common DataFormats/StdDictionaries DataFormats/Candidate DataFormats/MuonReco DataFormats/TauReco DataFormats/JetReco DataFormats/METReco DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/TrackReco DataFormats/HepMCCandidate DataFormats/BTauReco CondFormats/L1TObjects DataFormats/L1Trigger DataFormats/HLTReco boost rootrflx
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsPatCandidatesCapabilities,DataFormatsPatCandidates,$(SCRAMSTORENAME_LIB)))
DataFormatsPatCandidates_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsPatCandidates,0,src/DataFormats/PatCandidates/src/classes.h,src/DataFormats/PatCandidates/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsPatCandidates_EX_LIB   := DataFormatsPatCandidates
DataFormatsPatCandidates_EX_USE   := $(foreach d,$(DataFormatsPatCandidates_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsPatCandidates_PACKAGE := self/src/DataFormats/PatCandidates/src
ALL_PRODS += DataFormatsPatCandidates
DataFormatsPatCandidates_INIT_FUNC        += $$(eval $$(call Library,DataFormatsPatCandidates,src/DataFormats/PatCandidates/src,src_DataFormats_PatCandidates_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/StdDictionaries)),)
ALL_COMMONRULES += src_DataFormats_StdDictionaries_src
src_DataFormats_StdDictionaries_src_parent := DataFormats/StdDictionaries
src_DataFormats_StdDictionaries_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_StdDictionaries_src,src/DataFormats/StdDictionaries/src,LIBRARY))
DataFormatsStdDictionaries := self/DataFormats/StdDictionaries
DataFormats/StdDictionaries := DataFormatsStdDictionaries
DataFormatsStdDictionaries_files := $(patsubst src/DataFormats/StdDictionaries/src/%,%,$(wildcard $(foreach dir,src/DataFormats/StdDictionaries/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsStdDictionaries_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/StdDictionaries/BuildFile
DataFormatsStdDictionaries_LOC_USE := self rootrflx
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsStdDictionariesCapabilities,DataFormatsStdDictionaries,$(SCRAMSTORENAME_LIB)))
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsStdDictionaries,0,src/DataFormats/StdDictionaries/src/classes.h,src/DataFormats/StdDictionaries/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsStdDictionaries_EX_LIB   := DataFormatsStdDictionaries
DataFormatsStdDictionaries_EX_USE   := $(foreach d,$(DataFormatsStdDictionaries_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsStdDictionaries_PACKAGE := self/src/DataFormats/StdDictionaries/src
ALL_PRODS += DataFormatsStdDictionaries
DataFormatsStdDictionaries_INIT_FUNC        += $$(eval $$(call Library,DataFormatsStdDictionaries,src/DataFormats/StdDictionaries/src,src_DataFormats_StdDictionaries_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(DataFormats/TauReco)),)
ALL_COMMONRULES += src_DataFormats_TauReco_src
src_DataFormats_TauReco_src_parent := DataFormats/TauReco
src_DataFormats_TauReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_TauReco_src,src/DataFormats/TauReco/src,LIBRARY))
DataFormatsTauReco := self/DataFormats/TauReco
DataFormats/TauReco := DataFormatsTauReco
DataFormatsTauReco_files := $(patsubst src/DataFormats/TauReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/TauReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsTauReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/TauReco/BuildFile
DataFormatsTauReco_LOC_USE := self DataFormats/Common DataFormats/RecoCandidate DataFormats/Candidate DataFormats/Math DataFormats/TrackReco DataFormats/JetReco DataFormats/ParticleFlowCandidate RecoVertex/VertexTools rootrflx rootcore
DataFormatsTauReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsTauRecoCapabilities,DataFormatsTauReco,$(SCRAMSTORENAME_LIB)))
DataFormatsTauReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsTauReco,0,src/DataFormats/TauReco/src/classes.h,src/DataFormats/TauReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsTauReco_EX_LIB   := DataFormatsTauReco
DataFormatsTauReco_EX_USE   := $(foreach d,$(DataFormatsTauReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsTauReco_PACKAGE := self/src/DataFormats/TauReco/src
ALL_PRODS += DataFormatsTauReco
DataFormatsTauReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsTauReco,src/DataFormats/TauReco/src,src_DataFormats_TauReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(EGamma/EGammaAnalysisTools)),)
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_src
src_EGamma_EGammaAnalysisTools_src_parent := EGamma/EGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_src,src/EGamma/EGammaAnalysisTools/src,LIBRARY))
EGammaEGammaAnalysisTools := self/EGamma/EGammaAnalysisTools
EGamma/EGammaAnalysisTools := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_files := $(patsubst src/EGamma/EGammaAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/EGamma/EGammaAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EGammaEGammaAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/BuildFile
EGammaEGammaAnalysisTools_LOC_USE := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
EGammaEGammaAnalysisTools_EX_LIB   := EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_EX_USE   := $(foreach d,$(EGammaEGammaAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EGammaEGammaAnalysisTools_PACKAGE := self/src/EGamma/EGammaAnalysisTools/src
ALL_PRODS += EGammaEGammaAnalysisTools
EGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/src,src_EGamma_EGammaAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(JetMETCorrections/METPUSubtraction)),)
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_src
src_JetMETCorrections_METPUSubtraction_src_parent := JetMETCorrections/METPUSubtraction
src_JetMETCorrections_METPUSubtraction_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_src,src/JetMETCorrections/METPUSubtraction/src,LIBRARY))
JetMETCorrectionsMETPUSubtraction := self/JetMETCorrections/METPUSubtraction
JetMETCorrections/METPUSubtraction := JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_files := $(patsubst src/JetMETCorrections/METPUSubtraction/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/METPUSubtraction/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsMETPUSubtraction_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/METPUSubtraction/BuildFile
JetMETCorrectionsMETPUSubtraction_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco RecoMET/METAlgorithms RecoJets/JetProducers JetMETCorrections/Algorithms root
JetMETCorrectionsMETPUSubtraction_EX_LIB   := JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_EX_USE   := $(foreach d,$(JetMETCorrectionsMETPUSubtraction_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsMETPUSubtraction_PACKAGE := self/src/JetMETCorrections/METPUSubtraction/src
ALL_PRODS += JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/src,src_JetMETCorrections_METPUSubtraction_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(Muon/MuonAnalysisTools)),)
ALL_COMMONRULES += src_Muon_MuonAnalysisTools_src
src_Muon_MuonAnalysisTools_src_parent := Muon/MuonAnalysisTools
src_Muon_MuonAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Muon_MuonAnalysisTools_src,src/Muon/MuonAnalysisTools/src,LIBRARY))
MuonMuonAnalysisTools := self/Muon/MuonAnalysisTools
Muon/MuonAnalysisTools := MuonMuonAnalysisTools
MuonMuonAnalysisTools_files := $(patsubst src/Muon/MuonAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/Muon/MuonAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MuonMuonAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/Muon/MuonAnalysisTools/BuildFile
MuonMuonAnalysisTools_LOC_USE := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
MuonMuonAnalysisTools_EX_LIB   := MuonMuonAnalysisTools
MuonMuonAnalysisTools_EX_USE   := $(foreach d,$(MuonMuonAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MuonMuonAnalysisTools_PACKAGE := self/src/Muon/MuonAnalysisTools/src
ALL_PRODS += MuonMuonAnalysisTools
MuonMuonAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,MuonMuonAnalysisTools,src/Muon/MuonAnalysisTools/src,src_Muon_MuonAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
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
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_src
src_PhysicsTools_PatAlgos_src_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_src,src/PhysicsTools/PatAlgos/src,LIBRARY))
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/BuildFile
PhysicsToolsPatAlgos_LOC_USE := self DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos clhep
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_EX_USE   := $(foreach d,$(PhysicsToolsPatAlgos_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/src
ALL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/src,src_PhysicsTools_PatAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE := self TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtilsCapabilities,PhysicsToolsPatUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,0,src/PhysicsTools/PatUtils/src/classes.h,src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(foreach d,$(PhysicsToolsPatUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoJets/JetProducers)),)
ALL_COMMONRULES += src_RecoJets_JetProducers_src
src_RecoJets_JetProducers_src_parent := RecoJets/JetProducers
src_RecoJets_JetProducers_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_src,src/RecoJets/JetProducers/src,LIBRARY))
RecoJetsJetProducers := self/RecoJets/JetProducers
RecoJets/JetProducers := RecoJetsJetProducers
RecoJetsJetProducers_files := $(patsubst src/RecoJets/JetProducers/src/%,%,$(wildcard $(foreach dir,src/RecoJets/JetProducers/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoJetsJetProducers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/BuildFile
RecoJetsJetProducers_LOC_USE := self boost FWCore/Framework DataFormats/JetReco Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit SimDataFormats/CaloHit RecoJets/JetAlgorithms DataFormats/CastorReco fastjet roottmva
RecoJetsJetProducers_EX_LIB   := RecoJetsJetProducers
RecoJetsJetProducers_EX_USE   := $(foreach d,$(RecoJetsJetProducers_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoJetsJetProducers_PACKAGE := self/src/RecoJets/JetProducers/src
ALL_PRODS += RecoJetsJetProducers
RecoJetsJetProducers_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetProducers,src/RecoJets/JetProducers/src,src_RecoJets_JetProducers_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoMET/METAlgorithms)),)
ALL_COMMONRULES += src_RecoMET_METAlgorithms_src
src_RecoMET_METAlgorithms_src_parent := RecoMET/METAlgorithms
src_RecoMET_METAlgorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMET_METAlgorithms_src,src/RecoMET/METAlgorithms/src,LIBRARY))
RecoMETMETAlgorithms := self/RecoMET/METAlgorithms
RecoMET/METAlgorithms := RecoMETMETAlgorithms
RecoMETMETAlgorithms_files := $(patsubst src/RecoMET/METAlgorithms/src/%,%,$(wildcard $(foreach dir,src/RecoMET/METAlgorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMETMETAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METAlgorithms/BuildFile
RecoMETMETAlgorithms_LOC_USE := self DataFormats/METReco DataFormats/CaloTowers DataFormats/Common DataFormats/CSCRecHit DataFormats/Math FWCore/ParameterSet rootphysics MagneticField/Records MagneticField/Engine TrackingTools/GeomPropagators TrackingTools/TrackAssociator Geometry/CaloTopology Geometry/CSCGeometry RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/ParticleFlowCandidate DataFormats/L1GlobalMuonTrigger DataFormats/MuonReco DataFormats/ParticleFlowReco DataFormats/VertexReco CondFormats/JetMETObjects RecoMuon/TrackingTools RecoParticleFlow/PFClusterTools
RecoMETMETAlgorithms_EX_LIB   := RecoMETMETAlgorithms
RecoMETMETAlgorithms_EX_USE   := $(foreach d,$(RecoMETMETAlgorithms_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMETMETAlgorithms_PACKAGE := self/src/RecoMET/METAlgorithms/src
ALL_PRODS += RecoMETMETAlgorithms
RecoMETMETAlgorithms_INIT_FUNC        += $$(eval $$(call Library,RecoMETMETAlgorithms,src/RecoMET/METAlgorithms/src,src_RecoMET_METAlgorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoTauTag/ImpactParameter)),)
ALL_COMMONRULES += src_RecoTauTag_ImpactParameter_src
src_RecoTauTag_ImpactParameter_src_parent := RecoTauTag/ImpactParameter
src_RecoTauTag_ImpactParameter_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTauTag_ImpactParameter_src,src/RecoTauTag/ImpactParameter/src,LIBRARY))
RecoTauTagImpactParameter := self/RecoTauTag/ImpactParameter
RecoTauTag/ImpactParameter := RecoTauTagImpactParameter
RecoTauTagImpactParameter_files := $(patsubst src/RecoTauTag/ImpactParameter/src/%,%,$(wildcard $(foreach dir,src/RecoTauTag/ImpactParameter/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTauTagImpactParameter_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/ImpactParameter/BuildFile
RecoTauTagImpactParameter_LOC_USE := self TrackingTools/Records FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/BTauReco DataFormats/VertexReco rootrflx DataFormats/Math boost root RecoBTag/BTagTools TrackingTools/TransientTrack rootcore rootminuit2
RecoTauTagImpactParameter_EX_LIB   := RecoTauTagImpactParameter
RecoTauTagImpactParameter_EX_USE   := $(foreach d,$(RecoTauTagImpactParameter_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagImpactParameter_PACKAGE := self/src/RecoTauTag/ImpactParameter/src
ALL_PRODS += RecoTauTagImpactParameter
RecoTauTagImpactParameter_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagImpactParameter,src/RecoTauTag/ImpactParameter/src,src_RecoTauTag_ImpactParameter_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoTauTag/RecoTau)),)
ALL_COMMONRULES += src_RecoTauTag_RecoTau_src
src_RecoTauTag_RecoTau_src_parent := RecoTauTag/RecoTau
src_RecoTauTag_RecoTau_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_src,src/RecoTauTag/RecoTau/src,LIBRARY))
RecoTauTagRecoTau := self/RecoTauTag/RecoTau
RecoTauTag/RecoTau := RecoTauTagRecoTau
RecoTauTagRecoTau_files := $(patsubst src/RecoTauTag/RecoTau/src/%,%,$(wildcard $(foreach dir,src/RecoTauTag/RecoTau/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTauTagRecoTau_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/BuildFile
RecoTauTagRecoTau_LOC_USE := self MagneticField/Engine MagneticField/Records DataFormats/Math DataFormats/TauReco DataFormats/VertexReco DataFormats/ParticleFlowCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records Geometry/CommonDetUnit TrackingTools/TransientTrack TrackingTools/IPTools RecoTauTag/TauTagTools RecoVertex/KalmanVertexFit RecoVertex/AdaptiveVertexFit RecoParticleFlow/PFClusterTools TrackingTools/TrackAssociator PhysicsTools/JetMCUtils CommonTools/Utils roottmva
RecoTauTagRecoTau_EX_LIB   := RecoTauTagRecoTau
RecoTauTagRecoTau_EX_USE   := $(foreach d,$(RecoTauTagRecoTau_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagRecoTau_PACKAGE := self/src/RecoTauTag/RecoTau/src
ALL_PRODS += RecoTauTagRecoTau
RecoTauTagRecoTau_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagRecoTau,src/RecoTauTag/RecoTau/src,src_RecoTauTag_RecoTau_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoTauTag/TauTagTools)),)
ALL_COMMONRULES += src_RecoTauTag_TauTagTools_src
src_RecoTauTag_TauTagTools_src_parent := RecoTauTag/TauTagTools
src_RecoTauTag_TauTagTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoTauTag_TauTagTools_src,src/RecoTauTag/TauTagTools/src,LIBRARY))
RecoTauTagTauTagTools := self/RecoTauTag/TauTagTools
RecoTauTag/TauTagTools := RecoTauTagTauTagTools
RecoTauTagTauTagTools_files := $(patsubst src/RecoTauTag/TauTagTools/src/%,%,$(wildcard $(foreach dir,src/RecoTauTag/TauTagTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoTauTagTauTagTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/TauTagTools/BuildFile
RecoTauTagTauTagTools_LOC_USE := self DataFormats/Math DataFormats/TauReco DataFormats/Candidate FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager PhysicsTools/IsolationUtils PhysicsTools/MVAComputer TrackingTools/GeomPropagators TrackingTools/TransientTrack RecoVertex/VertexPrimitives DataFormats/HepMCCandidate root
RecoTauTagTauTagTools_EX_LIB   := RecoTauTagTauTagTools
RecoTauTagTauTagTools_EX_USE   := $(foreach d,$(RecoTauTagTauTagTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoTauTagTauTagTools_PACKAGE := self/src/RecoTauTag/TauTagTools/src
ALL_PRODS += RecoTauTagTauTagTools
RecoTauTagTauTagTools_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagTauTagTools,src/RecoTauTag/TauTagTools/src,src_RecoTauTag_TauTagTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(TauAnalysis/CandidateTools)),)
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_src
src_TauAnalysis_CandidateTools_src_parent := TauAnalysis/CandidateTools
src_TauAnalysis_CandidateTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_src,src/TauAnalysis/CandidateTools/src,LIBRARY))
TauAnalysisCandidateTools := self/TauAnalysis/CandidateTools
TauAnalysis/CandidateTools := TauAnalysisCandidateTools
TauAnalysisCandidateTools_files := $(patsubst src/TauAnalysis/CandidateTools/src/%,%,$(wildcard $(foreach dir,src/TauAnalysis/CandidateTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TauAnalysisCandidateTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/BuildFile
TauAnalysisCandidateTools_LOC_USE := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/BeamSpot DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/VertexReco AnalysisDataFormats/TauAnalysis JetMETCorrections/METPUSubtraction PhysicsTools/JetMCUtils RecoMET/METAlgorithms RecoVertex/VertexPrimitives RecoVertex/AdaptiveVertexFit RecoVertex/KalmanVertexFit TrackingTools/TransientTrack TrackingTools/Records TrackingTools/TrajectoryState root rootcintex roofit rootminuit rootminuit2 roottmva classlib
TauAnalysisCandidateTools_PRE_INIT_FUNC += $$(eval $$(call RootDict,TauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/src, TauAnalysisCandidateToolsLinkDef.h))
TauAnalysisCandidateTools_EX_LIB   := TauAnalysisCandidateTools
TauAnalysisCandidateTools_EX_USE   := $(foreach d,$(TauAnalysisCandidateTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TauAnalysisCandidateTools_PACKAGE := self/src/TauAnalysis/CandidateTools/src
ALL_PRODS += TauAnalysisCandidateTools
TauAnalysisCandidateTools_INIT_FUNC        += $$(eval $$(call Library,TauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/src,src_TauAnalysis_CandidateTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(RecoParticleFlow/Benchmark)),)
ALL_COMMONRULES += src_RecoParticleFlow_Benchmark_src
src_RecoParticleFlow_Benchmark_src_parent := RecoParticleFlow/Benchmark
src_RecoParticleFlow_Benchmark_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_Benchmark_src,src/RecoParticleFlow/Benchmark/src,LIBRARY))
RecoParticleFlowBenchmark := self/RecoParticleFlow/Benchmark
RecoParticleFlow/Benchmark := RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_files := $(patsubst src/RecoParticleFlow/Benchmark/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/Benchmark/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowBenchmark_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/Benchmark/BuildFile
RecoParticleFlowBenchmark_LOC_USE := self DQMServices/Core DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/TauReco DataFormats/Math FWCore/Utilities SimDataFormats/GeneratorProducts
RecoParticleFlowBenchmark_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowBenchmarkCapabilities,RecoParticleFlowBenchmark,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowBenchmark_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoParticleFlowBenchmark,0,src/RecoParticleFlow/Benchmark/src/classes.h,src/RecoParticleFlow/Benchmark/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
RecoParticleFlowBenchmark_EX_LIB   := RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_EX_USE   := $(foreach d,$(RecoParticleFlowBenchmark_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowBenchmark_PACKAGE := self/src/RecoParticleFlow/Benchmark/src
ALL_PRODS += RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowBenchmark,src/RecoParticleFlow/Benchmark/src,src_RecoParticleFlow_Benchmark_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
