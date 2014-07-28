ifeq ($(strip $(DataFormats/StdDictionaries)),)
ALL_COMMONRULES += src_DataFormats_StdDictionaries_src
src_DataFormats_StdDictionaries_src_parent := DataFormats/StdDictionaries
src_DataFormats_StdDictionaries_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DataFormats_StdDictionaries_src,src/DataFormats/StdDictionaries/src,LIBRARY))
DataFormatsStdDictionaries := self/DataFormats/StdDictionaries
DataFormats/StdDictionaries := DataFormatsStdDictionaries
DataFormatsStdDictionaries_files := $(patsubst src/DataFormats/StdDictionaries/src/%,%,$(wildcard $(foreach dir,src/DataFormats/StdDictionaries/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DataFormatsStdDictionaries_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/StdDictionaries/BuildFile
DataFormatsStdDictionaries_LOC_USE := self rootrflx
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DataFormatsStdDictionariesCapabilities,DataFormatsStdDictionaries,$(SCRAMSTORENAME_LIB)))
DataFormatsStdDictionaries_PRE_INIT_FUNC += $$(eval $$(call LCGDict,DataFormatsStdDictionaries,0,src/DataFormats/StdDictionaries/src/classes.h,src/DataFormats/StdDictionaries/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
DataFormatsStdDictionaries_EX_LIB   := DataFormatsStdDictionaries
DataFormatsStdDictionaries_EX_USE   := $(foreach d,$(DataFormatsStdDictionaries_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DataFormatsStdDictionaries_PACKAGE := self/src/DataFormats/StdDictionaries/src
ALL_PRODS += DataFormatsStdDictionaries
DataFormatsStdDictionaries_INIT_FUNC        += $$(eval $$(call Library,DataFormatsStdDictionaries,src/DataFormats/StdDictionaries/src,src_DataFormats_StdDictionaries_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
