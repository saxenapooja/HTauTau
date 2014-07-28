ifeq ($(strip $(CondFormats/EgammaObjects)),)
ALL_COMMONRULES += src_CondFormats_EgammaObjects_src
src_CondFormats_EgammaObjects_src_parent := CondFormats/EgammaObjects
src_CondFormats_EgammaObjects_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_CondFormats_EgammaObjects_src,src/CondFormats/EgammaObjects/src,LIBRARY))
CondFormatsEgammaObjects := self/CondFormats/EgammaObjects
CondFormats/EgammaObjects := CondFormatsEgammaObjects
CondFormatsEgammaObjects_files := $(patsubst src/CondFormats/EgammaObjects/src/%,%,$(wildcard $(foreach dir,src/CondFormats/EgammaObjects/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
CondFormatsEgammaObjects_BuildFile    := $(WORKINGDIR)/cache/bf/src/CondFormats/EgammaObjects/BuildFile
CondFormatsEgammaObjects_LOC_USE := self FWCore/Utilities CondFormats/Common CondFormats/PhysicsToolsObjects rootrflx
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,CondFormatsEgammaObjectsCapabilities,CondFormatsEgammaObjects,$(SCRAMSTORENAME_LIB)))
CondFormatsEgammaObjects_PRE_INIT_FUNC += $$(eval $$(call LCGDict,CondFormatsEgammaObjects,0,src/CondFormats/EgammaObjects/src/classes.h,src/CondFormats/EgammaObjects/src/classes_def.xml,$(SCRAMSTORENAME_LIB), --fail_on_warnings,Capabilities))
CondFormatsEgammaObjects_EX_LIB   := CondFormatsEgammaObjects
CondFormatsEgammaObjects_EX_USE   := $(foreach d,$(CondFormatsEgammaObjects_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CondFormatsEgammaObjects_PACKAGE := self/src/CondFormats/EgammaObjects/src
ALL_PRODS += CondFormatsEgammaObjects
CondFormatsEgammaObjects_INIT_FUNC        += $$(eval $$(call Library,CondFormatsEgammaObjects,src/CondFormats/EgammaObjects/src,src_CondFormats_EgammaObjects_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
