ifeq ($(strip $(RecoMET/METAlgorithms)),)
ALL_COMMONRULES += src_RecoMET_METAlgorithms_src
src_RecoMET_METAlgorithms_src_parent := RecoMET/METAlgorithms
src_RecoMET_METAlgorithms_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoMET_METAlgorithms_src,src/RecoMET/METAlgorithms/src,LIBRARY))
RecoMETMETAlgorithms := self/RecoMET/METAlgorithms
RecoMET/METAlgorithms := RecoMETMETAlgorithms
RecoMETMETAlgorithms_files := $(patsubst src/RecoMET/METAlgorithms/src/%,%,$(wildcard $(foreach dir,src/RecoMET/METAlgorithms/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoMETMETAlgorithms_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoMET/METAlgorithms/BuildFile
RecoMETMETAlgorithms_LOC_USE := self DataFormats/METReco DataFormats/CaloTowers DataFormats/Common DataFormats/CSCRecHit DataFormats/Math FWCore/ParameterSet rootphysics MagneticField/Records MagneticField/Engine TrackingTools/GeomPropagators TrackingTools/TrackAssociator Geometry/CaloTopology Geometry/CSCGeometry RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/ParticleFlowCandidate DataFormats/L1GlobalMuonTrigger DataFormats/MuonReco DataFormats/ParticleFlowReco DataFormats/VertexReco CondFormats/JetMETObjects RecoMuon/TrackingTools RecoParticleFlow/PFClusterTools
RecoMETMETAlgorithms_EX_LIB   := RecoMETMETAlgorithms
RecoMETMETAlgorithms_EX_USE   := $(foreach d,$(RecoMETMETAlgorithms_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoMETMETAlgorithms_PACKAGE := self/src/RecoMET/METAlgorithms/src
ALL_PRODS += RecoMETMETAlgorithms
RecoMETMETAlgorithms_INIT_FUNC        += $$(eval $$(call Library,RecoMETMETAlgorithms,src/RecoMET/METAlgorithms/src,src_RecoMET_METAlgorithms_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
