ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EGamma/EGammaAnalysisTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/test/$(file). Please fix src/EGamma/EGammaAnalysisTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest_files_exts := $(sort $(patsubst .%,%,$(suffix $(EgammaEGammaAnalysisToolsTest_files))))
EgammaEGammaAnalysisToolsTest := self/src/EGamma/EGammaAnalysisTools/test
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EGamma/EGammaAnalysisTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB)))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EGamma/EGammaAnalysisTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test,src_EGamma_EGammaAnalysisTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EgammaEGammaAnalysisToolsTest_files_exts),$(EgammaEGammaAnalysisToolsTest_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_test
src_EGamma_EGammaAnalysisTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_test,src/EGamma/EGammaAnalysisTools/test,TEST))
