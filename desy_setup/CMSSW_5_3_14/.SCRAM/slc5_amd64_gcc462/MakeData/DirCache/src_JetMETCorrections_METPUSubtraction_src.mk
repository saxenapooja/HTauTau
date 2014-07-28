ifeq ($(strip $(JetMETCorrections/METPUSubtraction)),)
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_src
src_JetMETCorrections_METPUSubtraction_src_parent := JetMETCorrections/METPUSubtraction
src_JetMETCorrections_METPUSubtraction_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_src,src/JetMETCorrections/METPUSubtraction/src,LIBRARY))
JetMETCorrectionsMETPUSubtraction := self/JetMETCorrections/METPUSubtraction
JetMETCorrections/METPUSubtraction := JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_files := $(patsubst src/JetMETCorrections/METPUSubtraction/src/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/METPUSubtraction/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
JetMETCorrectionsMETPUSubtraction_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/METPUSubtraction/BuildFile
JetMETCorrectionsMETPUSubtraction_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco RecoMET/METAlgorithms RecoJets/JetProducers JetMETCorrections/Algorithms root
JetMETCorrectionsMETPUSubtraction_EX_LIB   := JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_EX_USE   := $(foreach d,$(JetMETCorrectionsMETPUSubtraction_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsMETPUSubtraction_PACKAGE := self/src/JetMETCorrections/METPUSubtraction/src
ALL_PRODS += JetMETCorrectionsMETPUSubtraction
JetMETCorrectionsMETPUSubtraction_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/src,src_JetMETCorrections_METPUSubtraction_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
