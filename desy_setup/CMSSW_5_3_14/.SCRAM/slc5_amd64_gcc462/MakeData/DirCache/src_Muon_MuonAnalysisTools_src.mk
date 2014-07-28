ifeq ($(strip $(Muon/MuonAnalysisTools)),)
ALL_COMMONRULES += src_Muon_MuonAnalysisTools_src
src_Muon_MuonAnalysisTools_src_parent := Muon/MuonAnalysisTools
src_Muon_MuonAnalysisTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_Muon_MuonAnalysisTools_src,src/Muon/MuonAnalysisTools/src,LIBRARY))
MuonMuonAnalysisTools := self/Muon/MuonAnalysisTools
Muon/MuonAnalysisTools := MuonMuonAnalysisTools
MuonMuonAnalysisTools_files := $(patsubst src/Muon/MuonAnalysisTools/src/%,%,$(wildcard $(foreach dir,src/Muon/MuonAnalysisTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MuonMuonAnalysisTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/Muon/MuonAnalysisTools/BuildFile
MuonMuonAnalysisTools_LOC_USE := self CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/UtilAlgos RecoEcal/EgammaCoreTools TrackingTools/IPTools RecoEgamma/EgammaTools clhep root roottmva
MuonMuonAnalysisTools_EX_LIB   := MuonMuonAnalysisTools
MuonMuonAnalysisTools_EX_USE   := $(foreach d,$(MuonMuonAnalysisTools_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
MuonMuonAnalysisTools_PACKAGE := self/src/Muon/MuonAnalysisTools/src
ALL_PRODS += MuonMuonAnalysisTools
MuonMuonAnalysisTools_INIT_FUNC        += $$(eval $$(call Library,MuonMuonAnalysisTools,src/Muon/MuonAnalysisTools/src,src_Muon_MuonAnalysisTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
