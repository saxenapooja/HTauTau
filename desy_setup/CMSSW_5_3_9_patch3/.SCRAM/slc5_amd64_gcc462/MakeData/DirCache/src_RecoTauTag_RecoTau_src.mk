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
