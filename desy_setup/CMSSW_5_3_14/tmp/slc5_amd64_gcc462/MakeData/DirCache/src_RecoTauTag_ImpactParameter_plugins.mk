ifeq ($(strip $(RecoTauTagReco3ProngTauPlugins)),)
RecoTauTagReco3ProngTauPlugins_files := $(patsubst src/RecoTauTag/ImpactParameter/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/ImpactParameter/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/ImpactParameter/plugins/$(file). Please fix src/RecoTauTag/ImpactParameter/plugins/BuildFile.))))
RecoTauTagReco3ProngTauPlugins := self/src/RecoTauTag/ImpactParameter/plugins
RecoTauTagReco3ProngTauPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/ImpactParameter/plugins/BuildFile
RecoTauTagReco3ProngTauPlugins_LOC_USE := self TrackingTools/Records FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/BTauReco DataFormats/VertexReco rootrflx DataFormats/Math boost root RecoBTag/BTagTools TrackingTools/TransientTrack RecoTauTag/ImpactParameter RecoTauTag/RecoTau DataFormats/TauReco CommonTools/Utils RecoVertex/KinematicFit RecoVertex/KinematicFitPrimitives DataFormats/BeamSpot DataFormats/MuonReco DataFormats/TrackReco DataFormats/GsfTrackReco
RecoTauTagReco3ProngTauPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagReco3ProngTauPlugins,RecoTauTagReco3ProngTauPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagReco3ProngTauPlugins_PACKAGE := self/src/RecoTauTag/ImpactParameter/plugins
ALL_PRODS += RecoTauTagReco3ProngTauPlugins
RecoTauTagReco3ProngTauPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagReco3ProngTauPlugins,src/RecoTauTag/ImpactParameter/plugins,src_RecoTauTag_ImpactParameter_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoTauTagReco3ProngTauPlugins,src/RecoTauTag/ImpactParameter/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_ImpactParameter_plugins
src_RecoTauTag_ImpactParameter_plugins_parent := RecoTauTag/ImpactParameter
src_RecoTauTag_ImpactParameter_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_ImpactParameter_plugins,src/RecoTauTag/ImpactParameter/plugins,PLUGINS))
