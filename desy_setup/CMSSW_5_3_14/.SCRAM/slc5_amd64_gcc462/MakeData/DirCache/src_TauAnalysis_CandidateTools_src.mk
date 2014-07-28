ifeq ($(strip $(TauAnalysis/CandidateTools)),)
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_src
src_TauAnalysis_CandidateTools_src_parent := TauAnalysis/CandidateTools
src_TauAnalysis_CandidateTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_src,src/TauAnalysis/CandidateTools/src,LIBRARY))
TauAnalysisCandidateTools := self/TauAnalysis/CandidateTools
TauAnalysis/CandidateTools := TauAnalysisCandidateTools
TauAnalysisCandidateTools_files := $(patsubst src/TauAnalysis/CandidateTools/src/%,%,$(wildcard $(foreach dir,src/TauAnalysis/CandidateTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
TauAnalysisCandidateTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/BuildFile
TauAnalysisCandidateTools_LOC_USE := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/BeamSpot DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TrackReco DataFormats/VertexReco AnalysisDataFormats/TauAnalysis JetMETCorrections/METPUSubtraction PhysicsTools/JetMCUtils RecoMET/METAlgorithms RecoVertex/VertexPrimitives RecoVertex/AdaptiveVertexFit RecoVertex/KalmanVertexFit TrackingTools/TransientTrack TrackingTools/Records TrackingTools/TrajectoryState root rootcintex roofit rootminuit rootminuit2 roottmva classlib
TauAnalysisCandidateTools_PRE_INIT_FUNC += $$(eval $$(call RootDict,TauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/src, TauAnalysisCandidateToolsLinkDef.h))
TauAnalysisCandidateTools_EX_LIB   := TauAnalysisCandidateTools
TauAnalysisCandidateTools_EX_USE   := $(foreach d,$(TauAnalysisCandidateTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
TauAnalysisCandidateTools_PACKAGE := self/src/TauAnalysis/CandidateTools/src
ALL_PRODS += TauAnalysisCandidateTools
TauAnalysisCandidateTools_INIT_FUNC        += $$(eval $$(call Library,TauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/src,src_TauAnalysis_CandidateTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
