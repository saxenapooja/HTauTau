ifeq ($(strip $(DataFormats/METReco)),)
ALL_COMMONRULES += src_DataFormats_METReco_src
src_DataFormats_METReco_src_parent := DataFormats/METReco
src_DataFormats_METReco_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_METReco_src,src/DataFormats/METReco/src,LIBRARY))
DataFormatsMETReco := self/DataFormats/METReco
DataFormats/METReco := DataFormatsMETReco
DataFormatsMETReco_files := $(patsubst src/DataFormats/METReco/src/%,%,$(wildcard $(foreach dir,src/DataFormats/METReco/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsMETReco_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/METReco/BuildFile
DataFormatsMETReco_LOC_USE := self DataFormats/Common DataFormats/RecoCandidate FWCore/Utilities boost root rootrflx
DataFormatsMETReco_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsMETRecoCapabilities,DataFormatsMETReco,$(SCRAMSTORENAME_LIB)))
DataFormatsMETReco_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsMETReco,0,src/DataFormats/METReco/src/classes.h,src/DataFormats/METReco/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsMETReco_EX_LIB   := DataFormatsMETReco
DataFormatsMETReco_EX_USE   := $(foreach d,$(DataFormatsMETReco_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsMETReco_PACKAGE := self/src/DataFormats/METReco/src
ALL_PRODS += DataFormatsMETReco
DataFormatsMETReco_INIT_FUNC        += $$(eval $$(call Library,DataFormatsMETReco,src/DataFormats/METReco/src,src_DataFormats_METReco_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
