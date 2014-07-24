ifeq ($(strip $(PhysicsTools/PatUtils)),)
ALL_COMMONRULES += src_PhysicsTools_PatUtils_src
src_PhysicsTools_PatUtils_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_src,src/PhysicsTools/PatUtils/src,LIBRARY))
PhysicsToolsPatUtils := self/PhysicsTools/PatUtils
PhysicsTools/PatUtils := PhysicsToolsPatUtils
PhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/src/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PhysicsToolsPatUtils_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/BuildFile
PhysicsToolsPatUtils_LOC_USE   := self TrackingTools/Records CommonTools/Utils DataFormats/Math DataFormats/Candidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/MuonReco DataFormats/GsfTrackReco DataFormats/VertexReco TrackingTools/TransientTrack Utilities/General root
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtilsCapabilities,PhysicsToolsPatUtils,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_PRE_INIT_FUNC += $$(eval $$(call LCGDict,PhysicsToolsPatUtils,0,classes,$(LOCALTOP)/src/PhysicsTools/PatUtils/src/classes.h,$(LOCALTOP)/src/PhysicsTools/PatUtils/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
PhysicsToolsPatUtils_EX_LIB   := PhysicsToolsPatUtils
PhysicsToolsPatUtils_EX_USE   := $(foreach d,$(PhysicsToolsPatUtils_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatUtils_PACKAGE := self/src/PhysicsTools/PatUtils/src
ALL_PRODS += PhysicsToolsPatUtils
PhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils,src/PhysicsTools/PatUtils/src,src_PhysicsTools_PatUtils_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatUtils_files_exts),$(PhysicsToolsPatUtils_files_exts),$(SRC_FILES_SUFFIXES))))
endif
