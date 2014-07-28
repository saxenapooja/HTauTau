ifeq ($(strip $(RecoTauTagTauTagToolsPlugins)),)
RecoTauTagTauTagToolsPlugins_files := $(patsubst src/RecoTauTag/TauTagTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/TauTagTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/TauTagTools/plugins/$(file). Please fix src/RecoTauTag/TauTagTools/plugins/BuildFile.))))
RecoTauTagTauTagToolsPlugins := self/src/RecoTauTag/TauTagTools/plugins
RecoTauTagTauTagToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/TauTagTools/plugins/BuildFile
RecoTauTagTauTagToolsPlugins_LOC_USE := self CondFormats/DataRecord CommonTools/Utils CommonTools/UtilAlgos DataFormats/Candidate TrackingTools/TransientTrack RecoVertex/VertexPrimitives PhysicsTools/IsolationUtils PhysicsTools/MVAComputer PhysicsTools/MVATrainer FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/TauReco CommonTools/CandUtils RecoTauTag/TauTagTools RecoTauTag/RecoTau
RecoTauTagTauTagToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagTauTagToolsPlugins,RecoTauTagTauTagToolsPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagTauTagToolsPlugins_PACKAGE := self/src/RecoTauTag/TauTagTools/plugins
ALL_PRODS += RecoTauTagTauTagToolsPlugins
RecoTauTagTauTagToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagTauTagToolsPlugins,src/RecoTauTag/TauTagTools/plugins,src_RecoTauTag_TauTagTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoTauTagTauTagToolsPlugins,src/RecoTauTag/TauTagTools/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_TauTagTools_plugins
src_RecoTauTag_TauTagTools_plugins_parent := RecoTauTag/TauTagTools
src_RecoTauTag_TauTagTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_TauTagTools_plugins,src/RecoTauTag/TauTagTools/plugins,PLUGINS))
