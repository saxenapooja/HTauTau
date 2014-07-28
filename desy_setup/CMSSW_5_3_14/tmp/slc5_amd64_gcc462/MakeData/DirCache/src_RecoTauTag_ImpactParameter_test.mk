ifeq ($(strip $(TauImpactParameterTest)),)
TauImpactParameterTest_files := $(patsubst src/RecoTauTag/ImpactParameter/test/%,%,$(foreach file,TauImpactParameterTest.cc,$(eval xfile:=$(wildcard src/RecoTauTag/ImpactParameter/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/ImpactParameter/test/$(file). Please fix src/RecoTauTag/ImpactParameter/test/BuildFile.))))
TauImpactParameterTest := self/src/RecoTauTag/ImpactParameter/test
TauImpactParameterTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/ImpactParameter/test/BuildFile
TauImpactParameterTest_LOC_USE := self clhep rootgraphics FWCore/PluginManager FWCore/Utilities FWCore/Framework FWCore/ParameterSet DataFormats/Math DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco
TauImpactParameterTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TauImpactParameterTest,TauImpactParameterTest,$(SCRAMSTORENAME_LIB)))
TauImpactParameterTest_PACKAGE := self/src/RecoTauTag/ImpactParameter/test
ALL_PRODS += TauImpactParameterTest
TauImpactParameterTest_INIT_FUNC        += $$(eval $$(call Library,TauImpactParameterTest,src/RecoTauTag/ImpactParameter/test,src_RecoTauTag_ImpactParameter_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TauImpactParameterTest,src/RecoTauTag/ImpactParameter/test))
endif
ALL_COMMONRULES += src_RecoTauTag_ImpactParameter_test
src_RecoTauTag_ImpactParameter_test_parent := RecoTauTag/ImpactParameter
src_RecoTauTag_ImpactParameter_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_ImpactParameter_test,src/RecoTauTag/ImpactParameter/test,TEST))
