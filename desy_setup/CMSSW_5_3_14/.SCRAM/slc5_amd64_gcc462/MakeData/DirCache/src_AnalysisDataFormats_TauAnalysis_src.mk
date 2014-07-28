ifeq ($(strip $(AnalysisDataFormats/TauAnalysis)),)
ALL_COMMONRULES += src_AnalysisDataFormats_TauAnalysis_src
src_AnalysisDataFormats_TauAnalysis_src_parent := AnalysisDataFormats/TauAnalysis
src_AnalysisDataFormats_TauAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_AnalysisDataFormats_TauAnalysis_src,src/AnalysisDataFormats/TauAnalysis/src,LIBRARY))
AnalysisDataFormatsTauAnalysis := self/AnalysisDataFormats/TauAnalysis
AnalysisDataFormats/TauAnalysis := AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_files := $(patsubst src/AnalysisDataFormats/TauAnalysis/src/%,%,$(wildcard $(foreach dir,src/AnalysisDataFormats/TauAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalysisDataFormatsTauAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/AnalysisDataFormats/TauAnalysis/BuildFile
AnalysisDataFormatsTauAnalysis_LOC_USE := self DataFormats/Candidate DataFormats/StdDictionaries DataFormats/Common DataFormats/JetReco DataFormats/METReco DataFormats/TauReco DataFormats/VertexReco DataFormats/PatCandidates FWCore/MessageLogger rootrflx
AnalysisDataFormatsTauAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalysisDataFormatsTauAnalysisCapabilities,AnalysisDataFormatsTauAnalysis,$(SCRAMSTORENAME_LIB)))
AnalysisDataFormatsTauAnalysis_PRE_INIT_FUNC += $$(eval $$(call LCGDict,AnalysisDataFormatsTauAnalysis,0,src/AnalysisDataFormats/TauAnalysis/src/classes.h,src/AnalysisDataFormats/TauAnalysis/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
AnalysisDataFormatsTauAnalysis_EX_LIB   := AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_EX_USE   := $(foreach d,$(AnalysisDataFormatsTauAnalysis_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
AnalysisDataFormatsTauAnalysis_PACKAGE := self/src/AnalysisDataFormats/TauAnalysis/src
ALL_PRODS += AnalysisDataFormatsTauAnalysis
AnalysisDataFormatsTauAnalysis_INIT_FUNC        += $$(eval $$(call Library,AnalysisDataFormatsTauAnalysis,src/AnalysisDataFormats/TauAnalysis/src,src_AnalysisDataFormats_TauAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
