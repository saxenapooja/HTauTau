ifeq ($(strip $(DataFormats/Common)),)
ALL_COMMONRULES += src_DataFormats_Common_src
src_DataFormats_Common_src_parent := DataFormats/Common
src_DataFormats_Common_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_Common_src,src/DataFormats/Common/src,LIBRARY))
DataFormatsCommon := self/DataFormats/Common
DataFormats/Common := DataFormatsCommon
DataFormatsCommon_files := $(patsubst src/DataFormats/Common/src/%,%,$(wildcard $(foreach dir,src/DataFormats/Common/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsCommon_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/BuildFile
DataFormatsCommon_LOC_USE := self DataFormats/Provenance FWCore/MessageLogger FWCore/Utilities DataFormats/StdDictionaries boost rootrflx
DataFormatsCommon_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsCommonCapabilities,DataFormatsCommon,$(SCRAMSTORENAME_LIB)))
DataFormatsCommon_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsCommon,0,src/DataFormats/Common/src/classes.h,src/DataFormats/Common/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsCommon_EX_LIB   := DataFormatsCommon
DataFormatsCommon_EX_USE   := $(foreach d,$(DataFormatsCommon_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsCommon_PACKAGE := self/src/DataFormats/Common/src
ALL_PRODS += DataFormatsCommon
DataFormatsCommon_INIT_FUNC        += $$(eval $$(call Library,DataFormatsCommon,src/DataFormats/Common/src,src_DataFormats_Common_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
