ifeq ($(strip $(testMarkovChainIntegration)),)
testMarkovChainIntegration_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,testMarkovChainIntegration.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
testMarkovChainIntegration := self/src/TauAnalysis/CandidateTools/bin
testMarkovChainIntegration_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
testMarkovChainIntegration_LOC_USE := self FWCore/ParameterSet TauAnalysis/CandidateTools root rootmath
testMarkovChainIntegration_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += testMarkovChainIntegration
testMarkovChainIntegration_INIT_FUNC        += $$(eval $$(call Binary,testMarkovChainIntegration,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testMarkovChainIntegration,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(studySVfitVisPtCuts)),)
studySVfitVisPtCuts_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,studySVfitVisPtCuts.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
studySVfitVisPtCuts := self/src/TauAnalysis/CandidateTools/bin
studySVfitVisPtCuts_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
studySVfitVisPtCuts_LOC_USE := self DataFormats/Candidate DataFormats/Common DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite TauAnalysis/CandidateTools root
studySVfitVisPtCuts_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += studySVfitVisPtCuts
studySVfitVisPtCuts_INIT_FUNC        += $$(eval $$(call Binary,studySVfitVisPtCuts,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,studySVfitVisPtCuts,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(computeCalibration)),)
computeCalibration_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,computeCalibration.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
computeCalibration := self/src/TauAnalysis/CandidateTools/bin
computeCalibration_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
computeCalibration_LOC_USE := self DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite TauAnalysis/CandidateTools roofit root rootgraphics
computeCalibration_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += computeCalibration
computeCalibration_INIT_FUNC        += $$(eval $$(call Binary,computeCalibration,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,computeCalibration,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(nsvfitStandalone)),)
nsvfitStandalone_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,nsvfitStandalone.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
nsvfitStandalone := self/src/TauAnalysis/CandidateTools/bin
nsvfitStandalone_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
nsvfitStandalone_LOC_USE := self FWCore/PythonParameterSet FWCore/ParameterSet TauAnalysis/CandidateTools rootcintex root
nsvfitStandalone_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += nsvfitStandalone
nsvfitStandalone_INIT_FUNC        += $$(eval $$(call Binary,nsvfitStandalone,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,nsvfitStandalone,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(testNeuralMtautau)),)
testNeuralMtautau_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,testNeuralMtautau.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
testNeuralMtautau := self/src/TauAnalysis/CandidateTools/bin
testNeuralMtautau_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
testNeuralMtautau_LOC_USE := self DataFormats/Common DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite TauAnalysis/CandidateTools root roottmva
testNeuralMtautau_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += testNeuralMtautau
testNeuralMtautau_INIT_FUNC        += $$(eval $$(call Binary,testNeuralMtautau,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testNeuralMtautau,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(trainNeuralMtautau)),)
trainNeuralMtautau_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,trainNeuralMtautau.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
trainNeuralMtautau := self/src/TauAnalysis/CandidateTools/bin
trainNeuralMtautau_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
trainNeuralMtautau_LOC_USE := self DataFormats/Common DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite root roottmva
trainNeuralMtautau_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += trainNeuralMtautau
trainNeuralMtautau_INIT_FUNC        += $$(eval $$(call Binary,trainNeuralMtautau,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,trainNeuralMtautau,src/TauAnalysis/CandidateTools/bin))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_bin
src_TauAnalysis_CandidateTools_bin_parent := TauAnalysis/CandidateTools
src_TauAnalysis_CandidateTools_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_bin,src/TauAnalysis/CandidateTools/bin,BINARY))
