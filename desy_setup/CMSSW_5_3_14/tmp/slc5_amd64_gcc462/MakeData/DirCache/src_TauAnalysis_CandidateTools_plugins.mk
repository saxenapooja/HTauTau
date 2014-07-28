ifeq ($(strip $(TauAnalysisCandidateTools_plugins)),)
TauAnalysisCandidateTools_plugins_files := $(patsubst src/TauAnalysis/CandidateTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/plugins/$(file). Please fix src/TauAnalysis/CandidateTools/plugins/BuildFile.))))
TauAnalysisCandidateTools_plugins := self/src/TauAnalysis/CandidateTools/plugins
TauAnalysisCandidateTools_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/plugins/BuildFile
TauAnalysisCandidateTools_plugins_LOC_USE := self CommonTools/UtilAlgos CommonTools/Utils DataFormats/Candidate DataFormats/CLHEP DataFormats/JetReco DataFormats/Math DataFormats/ParticleFlowCandidate DataFormats/TauReco DQMServices/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities JetMETCorrections/METPUSubtraction TrackingTools/TrajectoryState TrackingTools/TransientTrack TrackingTools/Records AnalysisDataFormats/TauAnalysis TauAnalysis/CandidateTools roofit root lhapdf
TauAnalysisCandidateTools_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TauAnalysisCandidateTools_plugins,TauAnalysisCandidateTools_plugins,$(SCRAMSTORENAME_LIB)))
TauAnalysisCandidateTools_plugins_PACKAGE := self/src/TauAnalysis/CandidateTools/plugins
ALL_PRODS += TauAnalysisCandidateTools_plugins
TauAnalysisCandidateTools_plugins_INIT_FUNC        += $$(eval $$(call Library,TauAnalysisCandidateTools_plugins,src/TauAnalysis/CandidateTools/plugins,src_TauAnalysis_CandidateTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TauAnalysisCandidateTools_plugins,src/TauAnalysis/CandidateTools/plugins))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_plugins
src_TauAnalysis_CandidateTools_plugins_parent := TauAnalysis/CandidateTools
src_TauAnalysis_CandidateTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_plugins,src/TauAnalysis/CandidateTools/plugins,PLUGINS))
