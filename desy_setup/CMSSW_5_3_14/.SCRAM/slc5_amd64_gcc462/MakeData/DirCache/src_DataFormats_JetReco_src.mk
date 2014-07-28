ifeq ($(strip $(DataFormats/JetReco)),)
ALL_COMMONRULES += src_DataFormats_JetReco_src
src_DataFormats_JetReco_src_parent := DataFormats/JetReco
src_DataFormats_JetReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_JetReco_src,src/DataFormats/JetReco/src,LIBRARY))
DataFormatsJetReco := self/DataFormats/JetReco
DataFormats/JetReco := DataFormatsJetReco
DataFormatsJetReco_files := $(patsubst src/DataFormats/JetReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/JetReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsJetReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/JetReco/BuildFile
DataFormatsJetReco_LOC_USE := self DataFormats/CaloTowers DataFormats/ParticleFlowCandidate DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/ParticleFlowReco DataFormats/TrackReco FWCore/Utilities rootrflx
DataFormatsJetReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsJetRecoCapabilities,DataFormatsJetReco,$(SCRAMSTORENAME_LIB)))
DataFormatsJetReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsJetReco,0,src/DataFormats/JetReco/src/classes.h,src/DataFormats/JetReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsJetReco_EX_LIB   := DataFormatsJetReco
DataFormatsJetReco_EX_USE   := $(foreach d,$(DataFormatsJetReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsJetReco_PACKAGE := self/src/DataFormats/JetReco/src
ALL_PRODS += DataFormatsJetReco
DataFormatsJetReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsJetReco,src/DataFormats/JetReco/src,src_DataFormats_JetReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
