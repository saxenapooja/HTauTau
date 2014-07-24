ifeq ($(strip $(EGammaEGammaAnalysisToolsPlugins)),)
EGammaEGammaAnalysisToolsPlugins_files := $(patsubst src/EGamma/EGammaAnalysisTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/plugins/$(file). Please fix src/EGamma/EGammaAnalysisTools/plugins/BuildFile.))))
EGammaEGammaAnalysisToolsPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(EGammaEGammaAnalysisToolsPlugins_files))))
EGammaEGammaAnalysisToolsPlugins := self/src/EGamma/EGammaAnalysisTools/plugins
EGammaEGammaAnalysisToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/plugins/BuildFile
EGammaEGammaAnalysisToolsPlugins_LOC_USE   := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/EgammaCandidates CommonTools/Utils HLTrigger/HLTcore EGamma/EGammaAnalysisTools
EGammaEGammaAnalysisToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EGammaEGammaAnalysisToolsPlugins,EGammaEGammaAnalysisToolsPlugins,$(SCRAMSTORENAME_LIB)))
EGammaEGammaAnalysisToolsPlugins_PACKAGE := self/src/EGamma/EGammaAnalysisTools/plugins
ALL_PRODS += EGammaEGammaAnalysisToolsPlugins
EGammaEGammaAnalysisToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins,src_EGamma_EGammaAnalysisTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EGammaEGammaAnalysisToolsPlugins_files_exts),$(EGammaEGammaAnalysisToolsPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_plugins
src_EGamma_EGammaAnalysisTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_plugins,src/EGamma/EGammaAnalysisTools/plugins,PLUGINS))
