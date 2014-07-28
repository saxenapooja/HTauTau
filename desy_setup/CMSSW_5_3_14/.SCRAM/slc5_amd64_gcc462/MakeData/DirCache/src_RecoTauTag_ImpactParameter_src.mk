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
