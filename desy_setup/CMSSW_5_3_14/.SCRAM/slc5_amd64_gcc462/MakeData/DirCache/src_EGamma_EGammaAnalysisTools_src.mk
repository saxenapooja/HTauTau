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
