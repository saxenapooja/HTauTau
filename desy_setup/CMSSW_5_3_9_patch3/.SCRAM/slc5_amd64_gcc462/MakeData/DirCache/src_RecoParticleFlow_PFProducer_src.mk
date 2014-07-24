ifeq ($(strip $(RecoParticleFlow/PFProducer)),)
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_src
src_RecoParticleFlow_PFProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_src,src/RecoParticleFlow/PFProducer/src,LIBRARY))
RecoParticleFlowPFProducer := self/RecoParticleFlow/PFProducer
RecoParticleFlow/PFProducer := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_files := $(patsubst src/RecoParticleFlow/PFProducer/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowPFProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/BuildFile
RecoParticleFlowPFProducer_LOC_USE   := self CondFormats/DataRecord CondFormats/EgammaObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco DataFormats/Provenance DataFormats/TrackReco DataFormats/VertexReco DataFormats/MuonReco DataFormats/EcalDetId RecoParticleFlow/PFClusterTools RecoEcal/EgammaCoreTools boost clhep rootmath roottmva
RecoParticleFlowPFProducer_EX_LIB   := RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_EX_USE   := $(foreach d,$(RecoParticleFlowPFProducer_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFProducer_PACKAGE := self/src/RecoParticleFlow/PFProducer/src
ALL_PRODS += RecoParticleFlowPFProducer
RecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/src,src_RecoParticleFlow_PFProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFProducer_files_exts),$(RecoParticleFlowPFProducer_files_exts),$(SRC_FILES_SUFFIXES))))
endif
