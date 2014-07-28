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
