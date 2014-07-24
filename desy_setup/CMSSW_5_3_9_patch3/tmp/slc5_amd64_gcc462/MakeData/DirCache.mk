ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/AnalysisDataFormats)
subdirs_src_AnalysisDataFormats = src_AnalysisDataFormats_TauAnalysis
ALL_PACKAGES += $(patsubst src/%,%,src/AnalysisDataFormats/TauAnalysis)
subdirs_src_AnalysisDataFormats_TauAnalysis := src_AnalysisDataFormats_TauAnalysis_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CondFormats)
subdirs_src_CondFormats = src_CondFormats_EgammaObjects
ALL_PACKAGES += $(patsubst src/%,%,src/CondFormats/EgammaObjects)
subdirs_src_CondFormats_EgammaObjects := src_CondFormats_EgammaObjects_src src_CondFormats_EgammaObjects_interface
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/DataFormats)
subdirs_src_DataFormats = src_DataFormats_StdDictionaries src_DataFormats_JetReco src_DataFormats_PatCandidates src_DataFormats_METReco
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/JetReco)
subdirs_src_DataFormats_JetReco := src_DataFormats_JetReco_src src_DataFormats_JetReco_doc src_DataFormats_JetReco_interface
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/METReco)
subdirs_src_DataFormats_METReco := src_DataFormats_METReco_src
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/PatCandidates)
subdirs_src_DataFormats_PatCandidates := src_DataFormats_PatCandidates_src src_DataFormats_PatCandidates_test
ifeq ($(strip $(testKinResolutions)),)
testKinResolutions_files := $(patsubst src/DataFormats/PatCandidates/test/%,%,$(foreach file,testKinParametrizations.cc testKinResolutions.cc testRunner.cpp,$(eval xfile:=$(wildcard src/DataFormats/PatCandidates/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/PatCandidates/test/$(file). Please fix src/DataFormats/PatCandidates/test/BuildFile.))))
testKinResolutions := self/src/DataFormats/PatCandidates/test
testKinResolutions_TEST_RUNNER_CMD := echo
testKinResolutions_NO_TESTRUN := yes
testKinResolutions_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/test/BuildFile
testKinResolutions_LOC_USE   := self boost cppunit DataFormats/PatCandidates
testKinResolutions_PACKAGE := self/src/DataFormats/PatCandidates/test
ALL_PRODS += testKinResolutions
testKinResolutions_INIT_FUNC        += $$(eval $$(call Binary,testKinResolutions,src/DataFormats/PatCandidates/test,src_DataFormats_PatCandidates_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(testKinResolutions_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testKinResolutions,src/DataFormats/PatCandidates/test))
endif
ALL_COMMONRULES += src_DataFormats_PatCandidates_test
src_DataFormats_PatCandidates_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_test,src/DataFormats/PatCandidates/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/StdDictionaries)
subdirs_src_DataFormats_StdDictionaries := src_DataFormats_StdDictionaries_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/EGamma)
subdirs_src_EGamma = src_EGamma_EGammaAnalysisTools
ALL_PACKAGES += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools)
subdirs_src_EGamma_EGammaAnalysisTools := src_EGamma_EGammaAnalysisTools_src src_EGamma_EGammaAnalysisTools_test src_EGamma_EGammaAnalysisTools_plugins src_EGamma_EGammaAnalysisTools_python
ifeq ($(strip $(EGammaEGammaAnalysisToolsPlugins)),)
EGammaEGammaAnalysisToolsPlugins_files := $(patsubst src/EGamma/EGammaAnalysisTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/plugins/$(file). Please fix src/EGamma/EGammaAnalysisTools/plugins/BuildFile.))))
EGammaEGammaAnalysisToolsPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(EGammaEGammaAnalysisToolsPlugins_files))))
EGammaEGammaAnalysisToolsPlugins := self/src/EGamma/EGammaAnalysisTools/plugins
EGammaEGammaAnalysisToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/plugins/BuildFile
EGammaEGammaAnalysisToolsPlugins_LOC_USE   := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/EgammaCandidates CommonTools/Utils HLTrigger/HLTcore EGamma/EGammaAnalysisTools
EGammaEGammaAnalysisToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EGammaEGammaAnalysisToolsPlugins,EGammaEGammaAnalysisToolsPlugins,$(SCRAMSTORENAME_LIB)))
EGammaEGammaAnalysisToolsPlugins_PACKAGE := self/src/EGamma/EGammaAnalysisTools/plugins
ALL_PRODS += EGammaEGammaAnalysisToolsPlugins
EGammaEGammaAnalysisToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins,src_EGamma_EGammaAnalysisTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EGammaEGammaAnalysisToolsPlugins_files_exts),$(EGammaEGammaAnalysisToolsPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_plugins
src_EGamma_EGammaAnalysisTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_plugins,src/EGamma/EGammaAnalysisTools/plugins,PLUGINS))
ifeq ($(strip $(PyEGammaEGammaAnalysisTools)),)
PyEGammaEGammaAnalysisTools := self/src/EGamma/EGammaAnalysisTools/python
PyEGammaEGammaAnalysisTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools/python)
ALL_PRODS += PyEGammaEGammaAnalysisTools
PyEGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python,src_EGamma_EGammaAnalysisTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_python
src_EGamma_EGammaAnalysisTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_python,src/EGamma/EGammaAnalysisTools/python,PYTHON))
ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EGamma/EGammaAnalysisTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/test/$(file). Please fix src/EGamma/EGammaAnalysisTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest_files_exts := $(sort $(patsubst .%,%,$(suffix $(EgammaEGammaAnalysisToolsTest_files))))
EgammaEGammaAnalysisToolsTest := self/src/EGamma/EGammaAnalysisTools/test
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EGamma/EGammaAnalysisTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB)))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EGamma/EGammaAnalysisTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test,src_EGamma_EGammaAnalysisTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(EgammaEGammaAnalysisToolsTest_files_exts),$(EgammaEGammaAnalysisToolsTest_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_test
src_EGamma_EGammaAnalysisTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_test,src/EGamma/EGammaAnalysisTools/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/FWCore)
subdirs_src_FWCore = src_FWCore_GuiBrowsers
ALL_PACKAGES += $(patsubst src/%,%,src/FWCore/GuiBrowsers)
subdirs_src_FWCore_GuiBrowsers := src_FWCore_GuiBrowsers_doc src_FWCore_GuiBrowsers_test src_FWCore_GuiBrowsers_examples src_FWCore_GuiBrowsers_scripts src_FWCore_GuiBrowsers_python
ifeq ($(strip $(PyFWCoreGuiBrowsers)),)
PyFWCoreGuiBrowsers := self/src/FWCore/GuiBrowsers/python
PyFWCoreGuiBrowsers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/FWCore/GuiBrowsers/python)
ALL_PRODS += PyFWCoreGuiBrowsers
PyFWCoreGuiBrowsers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFWCoreGuiBrowsers,src/FWCore/GuiBrowsers/python,src_FWCore_GuiBrowsers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFWCoreGuiBrowsers,src/FWCore/GuiBrowsers/python))
endif
ALL_COMMONRULES += src_FWCore_GuiBrowsers_python
src_FWCore_GuiBrowsers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_GuiBrowsers_python,src/FWCore/GuiBrowsers/python,PYTHON))
src_FWCore_GuiBrowsers_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/FWCore/GuiBrowsers/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_FWCore_GuiBrowsers_scripts,src/FWCore/GuiBrowsers/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_COMMONRULES += src_FWCore_GuiBrowsers_test
src_FWCore_GuiBrowsers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_GuiBrowsers_test,src/FWCore/GuiBrowsers/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/JetMETCorrections)
subdirs_src_JetMETCorrections = src_JetMETCorrections_METPUSubtraction
ALL_PACKAGES += $(patsubst src/%,%,src/JetMETCorrections/METPUSubtraction)
subdirs_src_JetMETCorrections_METPUSubtraction := src_JetMETCorrections_METPUSubtraction_src src_JetMETCorrections_METPUSubtraction_test src_JetMETCorrections_METPUSubtraction_plugins src_JetMETCorrections_METPUSubtraction_python
ifeq ($(strip $(JetMETCorrectionsMETPUSubtraction_plugins)),)
JetMETCorrectionsMETPUSubtraction_plugins_files := $(patsubst src/JetMETCorrections/METPUSubtraction/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/JetMETCorrections/METPUSubtraction/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETCorrections/METPUSubtraction/plugins/$(file). Please fix src/JetMETCorrections/METPUSubtraction/plugins/BuildFile.))))
JetMETCorrectionsMETPUSubtraction_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(JetMETCorrectionsMETPUSubtraction_plugins_files))))
JetMETCorrectionsMETPUSubtraction_plugins := self/src/JetMETCorrections/METPUSubtraction/plugins
JetMETCorrectionsMETPUSubtraction_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/METPUSubtraction/plugins/BuildFile
JetMETCorrectionsMETPUSubtraction_plugins_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects JetMETCorrections/METPUSubtraction RecoJets/JetProducers
JetMETCorrectionsMETPUSubtraction_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETCorrectionsMETPUSubtraction_plugins,JetMETCorrectionsMETPUSubtraction_plugins,$(SCRAMSTORENAME_LIB)))
JetMETCorrectionsMETPUSubtraction_plugins_PACKAGE := self/src/JetMETCorrections/METPUSubtraction/plugins
ALL_PRODS += JetMETCorrectionsMETPUSubtraction_plugins
JetMETCorrectionsMETPUSubtraction_plugins_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsMETPUSubtraction_plugins,src/JetMETCorrections/METPUSubtraction/plugins,src_JetMETCorrections_METPUSubtraction_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(JetMETCorrectionsMETPUSubtraction_plugins_files_exts),$(JetMETCorrectionsMETPUSubtraction_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,JetMETCorrectionsMETPUSubtraction_plugins,src/JetMETCorrections/METPUSubtraction/plugins))
endif
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_plugins
src_JetMETCorrections_METPUSubtraction_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_plugins,src/JetMETCorrections/METPUSubtraction/plugins,PLUGINS))
ifeq ($(strip $(PyJetMETCorrectionsMETPUSubtraction)),)
PyJetMETCorrectionsMETPUSubtraction := self/src/JetMETCorrections/METPUSubtraction/python
PyJetMETCorrectionsMETPUSubtraction_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JetMETCorrections/METPUSubtraction/python)
ALL_PRODS += PyJetMETCorrectionsMETPUSubtraction
PyJetMETCorrectionsMETPUSubtraction_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/python,src_JetMETCorrections_METPUSubtraction_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/python))
endif
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_python
src_JetMETCorrections_METPUSubtraction_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_python,src/JetMETCorrections/METPUSubtraction/python,PYTHON))
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_test
src_JetMETCorrections_METPUSubtraction_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_test,src/JetMETCorrections/METPUSubtraction/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/Muon)
subdirs_src_Muon = src_Muon_MuonAnalysisTools
ALL_PACKAGES += $(patsubst src/%,%,src/Muon/MuonAnalysisTools)
subdirs_src_Muon_MuonAnalysisTools := src_Muon_MuonAnalysisTools_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/MyRootMaker)
subdirs_src_MyRootMaker = src_MyRootMaker_MyRootMaker
ALL_PACKAGES += $(patsubst src/%,%,src/MyRootMaker/MyRootMaker)
subdirs_src_MyRootMaker_MyRootMaker := src_MyRootMaker_MyRootMaker_src src_MyRootMaker_MyRootMaker_test src_MyRootMaker_MyRootMaker_interface src_MyRootMaker_MyRootMaker_plugins
ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_plugins
src_MyRootMaker_MyRootMaker_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_plugins,src/MyRootMaker/MyRootMaker/plugins,PLUGINS))
ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_test
src_MyRootMaker_MyRootMaker_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_test,src/MyRootMaker/MyRootMaker/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/PhysicsTools)
subdirs_src_PhysicsTools = src_PhysicsTools_PatUtils src_PhysicsTools_PatAlgos
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatAlgos)
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_test src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_python
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(PhysicsToolsPatAlgos_plugins_files))))
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE   := self PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects JetMETCorrections/Objects TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatAlgos_plugins_files_exts),$(PhysicsToolsPatAlgos_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
PyPhysicsToolsPatAlgos_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
ALL_PRODS += PyPhysicsToolsPatAlgos
PyPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python,src_PhysicsTools_PatAlgos_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_python
src_PhysicsTools_PatAlgos_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_python,src/PhysicsTools/PatAlgos/python,PYTHON))
src_PhysicsTools_PatAlgos_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/PatAlgos/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_PatAlgos_scripts,src/PhysicsTools/PatAlgos/scripts,$(SCRAMSTORENAME_BIN),*))
ifeq ($(strip $(runtestPhysicsToolsPatAlgos)),)
runtestPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,runtestPhysicsToolsPatAlgos.cpp,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
runtestPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/test
runtestPhysicsToolsPatAlgos_TEST_RUNNER_CMD :=  runtestPhysicsToolsPatAlgos  /bin/bash PhysicsTools/PatAlgos/test runtests.sh
runtestPhysicsToolsPatAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
runtestPhysicsToolsPatAlgos_LOC_USE   := self FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(runtestPhysicsToolsPatAlgos_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers_files_exts := $(sort $(patsubst .%,%,$(suffix $(PhysicsToolsPatAlgos_testAnalyzers_files))))
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE   := self FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates PhysicsTools/UtilAlgos root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatAlgos_testAnalyzers_files_exts),$(PhysicsToolsPatAlgos_testAnalyzers_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatUtils)
subdirs_src_PhysicsTools_PatUtils := src_PhysicsTools_PatUtils_src src_PhysicsTools_PatUtils_data src_PhysicsTools_PatUtils_plugins src_PhysicsTools_PatUtils_python
ifeq ($(strip $(PhysicsToolsPatUtils_plugins)),)
PhysicsToolsPatUtils_plugins_files := $(patsubst src/PhysicsTools/PatUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatUtils/plugins/$(file). Please fix src/PhysicsTools/PatUtils/plugins/BuildFile.))))
PhysicsToolsPatUtils_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(PhysicsToolsPatUtils_plugins_files))))
PhysicsToolsPatUtils_plugins := self/src/PhysicsTools/PatUtils/plugins
PhysicsToolsPatUtils_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/plugins/BuildFile
PhysicsToolsPatUtils_plugins_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils CondFormats/JetMETObjects DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates JetMETCorrections/Objects JetMETCorrections/Type1MET RecoMET/METAlgorithms
PhysicsToolsPatUtils_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtils_plugins,PhysicsToolsPatUtils_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_plugins_PACKAGE := self/src/PhysicsTools/PatUtils/plugins
ALL_PRODS += PhysicsToolsPatUtils_plugins
PhysicsToolsPatUtils_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins,src_PhysicsTools_PatUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(PhysicsToolsPatUtils_plugins_files_exts),$(PhysicsToolsPatUtils_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_plugins
src_PhysicsTools_PatUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_plugins,src/PhysicsTools/PatUtils/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatUtils)),)
PyPhysicsToolsPatUtils := self/src/PhysicsTools/PatUtils/python
PyPhysicsToolsPatUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatUtils/python)
ALL_PRODS += PyPhysicsToolsPatUtils
PyPhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python,src_PhysicsTools_PatUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_python
src_PhysicsTools_PatUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_python,src/PhysicsTools/PatUtils/python,PYTHON))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoJets)
subdirs_src_RecoJets = src_RecoJets_JetProducers
ALL_PACKAGES += $(patsubst src/%,%,src/RecoJets/JetProducers)
subdirs_src_RecoJets_JetProducers := src_RecoJets_JetProducers_src src_RecoJets_JetProducers_test src_RecoJets_JetProducers_validation src_RecoJets_JetProducers_data src_RecoJets_JetProducers_plugins src_RecoJets_JetProducers_python src_RecoJets_JetProducers_interface
ifeq ($(strip $(RecoJetsJetProducers_plugins)),)
RecoJetsJetProducers_plugins_files := $(patsubst src/RecoJets/JetProducers/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoJets/JetProducers/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoJets/JetProducers/plugins/$(file). Please fix src/RecoJets/JetProducers/plugins/BuildFile.))))
RecoJetsJetProducers_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoJetsJetProducers_plugins_files))))
RecoJetsJetProducers_plugins := self/src/RecoJets/JetProducers/plugins
RecoJetsJetProducers_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/plugins/BuildFile
RecoJetsJetProducers_plugins_LOC_USE   := self RecoJets/JetProducers RecoJets/JetAlgorithms FWCore/Framework DataFormats/JetReco DataFormats/VertexReco Geometry/CaloGeometry Geometry/Records CommonTools/UtilAlgos CondFormats/JetMETObjects JetMETCorrections/Objects fastjet
RecoJetsJetProducers_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoJetsJetProducers_plugins,RecoJetsJetProducers_plugins,$(SCRAMSTORENAME_LIB)))
RecoJetsJetProducers_plugins_PACKAGE := self/src/RecoJets/JetProducers/plugins
ALL_PRODS += RecoJetsJetProducers_plugins
RecoJetsJetProducers_plugins_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetProducers_plugins,src/RecoJets/JetProducers/plugins,src_RecoJets_JetProducers_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoJetsJetProducers_plugins_files_exts),$(RecoJetsJetProducers_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoJetsJetProducers_plugins,src/RecoJets/JetProducers/plugins))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_plugins
src_RecoJets_JetProducers_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_plugins,src/RecoJets/JetProducers/plugins,PLUGINS))
ifeq ($(strip $(PyRecoJetsJetProducers)),)
PyRecoJetsJetProducers := self/src/RecoJets/JetProducers/python
PyRecoJetsJetProducers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoJets/JetProducers/python)
ALL_PRODS += PyRecoJetsJetProducers
PyRecoJetsJetProducers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoJetsJetProducers,src/RecoJets/JetProducers/python,src_RecoJets_JetProducers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoJetsJetProducers,src/RecoJets/JetProducers/python))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_python
src_RecoJets_JetProducers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_python,src/RecoJets/JetProducers/python,PYTHON))
ifeq ($(strip $(test-large-voronoi-area)),)
test-large-voronoi-area_files := $(patsubst src/RecoJets/JetProducers/test/%,%,$(foreach file,test-large-voronoi-area.cc,$(eval xfile:=$(wildcard src/RecoJets/JetProducers/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoJets/JetProducers/test/$(file). Please fix src/RecoJets/JetProducers/test/BuildFile.))))
test-large-voronoi-area := self/src/RecoJets/JetProducers/test
test-large-voronoi-area_TEST_RUNNER_CMD :=  test-large-voronoi-area 
test-large-voronoi-area_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/test/BuildFile
test-large-voronoi-area_LOC_USE   := self RecoJets/JetProducers RecoJets/JetAlgorithms FWCore/Framework DataFormats/JetReco DataFormats/VertexReco Geometry/CaloGeometry Geometry/Records CommonTools/UtilAlgos fastjet
test-large-voronoi-area_PACKAGE := self/src/RecoJets/JetProducers/test
ALL_PRODS += test-large-voronoi-area
test-large-voronoi-area_INIT_FUNC        += $$(eval $$(call Binary,test-large-voronoi-area,src/RecoJets/JetProducers/test,src_RecoJets_JetProducers_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(test-large-voronoi-area_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,test-large-voronoi-area,src/RecoJets/JetProducers/test))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_test
src_RecoJets_JetProducers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_test,src/RecoJets/JetProducers/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoMET)
subdirs_src_RecoMET = src_RecoMET_METAlgorithms
ALL_PACKAGES += $(patsubst src/%,%,src/RecoMET/METAlgorithms)
subdirs_src_RecoMET_METAlgorithms := src_RecoMET_METAlgorithms_src src_RecoMET_METAlgorithms_interface
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoParticleFlow)
subdirs_src_RecoParticleFlow = src_RecoParticleFlow_PFProducer
ALL_PACKAGES += $(patsubst src/%,%,src/RecoParticleFlow/PFProducer)
subdirs_src_RecoParticleFlow_PFProducer := src_RecoParticleFlow_PFProducer_src src_RecoParticleFlow_PFProducer_test src_RecoParticleFlow_PFProducer_plugins src_RecoParticleFlow_PFProducer_python
ifeq ($(strip $(RecoParticleFlowPFProducerPlugins)),)
RecoParticleFlowPFProducerPlugins_files := $(patsubst src/RecoParticleFlow/PFProducer/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/plugins/$(file). Please fix src/RecoParticleFlow/PFProducer/plugins/BuildFile.))))
RecoParticleFlowPFProducerPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoParticleFlowPFProducerPlugins_files))))
RecoParticleFlowPFProducerPlugins := self/src/RecoParticleFlow/PFProducer/plugins
RecoParticleFlowPFProducerPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/plugins/BuildFile
RecoParticleFlowPFProducerPlugins_LOC_USE   := self CondFormats/DataRecord CondFormats/PhysicsToolsObjects DataFormats/CaloRecHit DataFormats/Common DataFormats/EgammaReco DataFormats/EgammaTrackReco DataFormats/GsfTrackReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities RecoParticleFlow/PFClusterTools RecoParticleFlow/PFProducer RecoEcal/EgammaCoreTools Geometry/CaloTopology RecoEgamma/EgammaIsolationAlgos RecoEgamma/PhotonIdentification
RecoParticleFlowPFProducerPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFProducerPlugins,RecoParticleFlowPFProducerPlugins,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFProducerPlugins_PACKAGE := self/src/RecoParticleFlow/PFProducer/plugins
ALL_PRODS += RecoParticleFlowPFProducerPlugins
RecoParticleFlowPFProducerPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFProducerPlugins,src/RecoParticleFlow/PFProducer/plugins,src_RecoParticleFlow_PFProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFProducerPlugins_files_exts),$(RecoParticleFlowPFProducerPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFProducerPlugins,src/RecoParticleFlow/PFProducer/plugins))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_plugins
src_RecoParticleFlow_PFProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_plugins,src/RecoParticleFlow/PFProducer/plugins,PLUGINS))
ifeq ($(strip $(PyRecoParticleFlowPFProducer)),)
PyRecoParticleFlowPFProducer := self/src/RecoParticleFlow/PFProducer/python
PyRecoParticleFlowPFProducer_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoParticleFlow/PFProducer/python)
ALL_PRODS += PyRecoParticleFlowPFProducer
PyRecoParticleFlowPFProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/python,src_RecoParticleFlow_PFProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoParticleFlowPFProducer,src/RecoParticleFlow/PFProducer/python))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_python
src_RecoParticleFlow_PFProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_python,src/RecoParticleFlow/PFProducer/python,PYTHON))
ifeq ($(strip $(RecoParticleFlowPFSuperClusterReader)),)
RecoParticleFlowPFSuperClusterReader_files := $(patsubst src/RecoParticleFlow/PFProducer/test/%,%,$(foreach file,PFSuperClusterReader.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/test/$(file). Please fix src/RecoParticleFlow/PFProducer/test/BuildFile.))))
RecoParticleFlowPFSuperClusterReader_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoParticleFlowPFSuperClusterReader_files))))
RecoParticleFlowPFSuperClusterReader := self/src/RecoParticleFlow/PFProducer/test
RecoParticleFlowPFSuperClusterReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/test/BuildFile
RecoParticleFlowPFSuperClusterReader_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet
RecoParticleFlowPFSuperClusterReader_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFSuperClusterReader,RecoParticleFlowPFSuperClusterReader,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFSuperClusterReader_PACKAGE := self/src/RecoParticleFlow/PFProducer/test
ALL_PRODS += RecoParticleFlowPFSuperClusterReader
RecoParticleFlowPFSuperClusterReader_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFSuperClusterReader,src/RecoParticleFlow/PFProducer/test,src_RecoParticleFlow_PFProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFSuperClusterReader_files_exts),$(RecoParticleFlowPFSuperClusterReader_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFSuperClusterReader,src/RecoParticleFlow/PFProducer/test))
endif
ifeq ($(strip $(RecoParticleFlowPFIsoReader)),)
RecoParticleFlowPFIsoReader_files := $(patsubst src/RecoParticleFlow/PFProducer/test/%,%,$(foreach file,PFIsoReader.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFProducer/test/$(file). Please fix src/RecoParticleFlow/PFProducer/test/BuildFile.))))
RecoParticleFlowPFIsoReader_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoParticleFlowPFIsoReader_files))))
RecoParticleFlowPFIsoReader := self/src/RecoParticleFlow/PFProducer/test
RecoParticleFlowPFIsoReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFProducer/test/BuildFile
RecoParticleFlowPFIsoReader_LOC_USE   := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet
RecoParticleFlowPFIsoReader_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFIsoReader,RecoParticleFlowPFIsoReader,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowPFIsoReader_PACKAGE := self/src/RecoParticleFlow/PFProducer/test
ALL_PRODS += RecoParticleFlowPFIsoReader
RecoParticleFlowPFIsoReader_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFIsoReader,src/RecoParticleFlow/PFProducer/test,src_RecoParticleFlow_PFProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoParticleFlowPFIsoReader_files_exts),$(RecoParticleFlowPFIsoReader_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFIsoReader,src/RecoParticleFlow/PFProducer/test))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFProducer_test
src_RecoParticleFlow_PFProducer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFProducer_test,src/RecoParticleFlow/PFProducer/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoTauTag)
subdirs_src_RecoTauTag = src_RecoTauTag_Configuration src_RecoTauTag_RecoTau
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/Configuration)
subdirs_src_RecoTauTag_Configuration := src_RecoTauTag_Configuration_python
ifeq ($(strip $(PyRecoTauTagConfiguration)),)
PyRecoTauTagConfiguration := self/src/RecoTauTag/Configuration/python
PyRecoTauTagConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/Configuration/python)
ALL_PRODS += PyRecoTauTagConfiguration
PyRecoTauTagConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagConfiguration,src/RecoTauTag/Configuration/python,src_RecoTauTag_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagConfiguration,src/RecoTauTag/Configuration/python))
endif
ALL_COMMONRULES += src_RecoTauTag_Configuration_python
src_RecoTauTag_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_Configuration_python,src/RecoTauTag/Configuration/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/RecoTau)
subdirs_src_RecoTauTag_RecoTau := src_RecoTauTag_RecoTau_src src_RecoTauTag_RecoTau_test src_RecoTauTag_RecoTau_plugins src_RecoTauTag_RecoTau_python
ifeq ($(strip $(RecoTauTagRecoTauPlugins)),)
RecoTauTagRecoTauPlugins_files := $(patsubst src/RecoTauTag/RecoTau/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/RecoTau/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/RecoTau/plugins/$(file). Please fix src/RecoTauTag/RecoTau/plugins/BuildFile.))))
RecoTauTagRecoTauPlugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(RecoTauTagRecoTauPlugins_files))))
RecoTauTagRecoTauPlugins := self/src/RecoTauTag/RecoTau/plugins
RecoTauTagRecoTauPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/plugins/BuildFile
RecoTauTagRecoTauPlugins_LOC_USE   := self TrackingTools/Records RecoVertex/KalmanVertexFit CommonTools/CandUtils DataFormats/Candidate DataFormats/MuonReco TrackingTools/TransientTrack RecoVertex/VertexPrimitives PhysicsTools/IsolationUtils PhysicsTools/MVAComputer PhysicsTools/MVATrainer FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/TauReco DataFormats/WrappedStdDictionaries CommonTools/UtilAlgos CommonTools/CandAlgos PhysicsTools/HepMCCandAlgos RecoTauTag/TauTagTools RecoTauTag/RecoTau DataFormats/JetReco DataFormats/ParticleFlowReco RecoBTag/SecondaryVertex DataFormats/VertexReco CondFormats/EgammaObjects CondFormats/DataRecord CondFormats/EcalObjects Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records root
RecoTauTagRecoTauPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagRecoTauPlugins,RecoTauTagRecoTauPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagRecoTauPlugins_PACKAGE := self/src/RecoTauTag/RecoTau/plugins
ALL_PRODS += RecoTauTagRecoTauPlugins
RecoTauTagRecoTauPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagRecoTauPlugins,src/RecoTauTag/RecoTau/plugins,src_RecoTauTag_RecoTau_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(RecoTauTagRecoTauPlugins_files_exts),$(RecoTauTagRecoTauPlugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,RecoTauTagRecoTauPlugins,src/RecoTauTag/RecoTau/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_plugins
src_RecoTauTag_RecoTau_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_plugins,src/RecoTauTag/RecoTau/plugins,PLUGINS))
ifeq ($(strip $(PyRecoTauTagRecoTau)),)
PyRecoTauTagRecoTau := self/src/RecoTauTag/RecoTau/python
PyRecoTauTagRecoTau_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/RecoTau/python)
ALL_PRODS += PyRecoTauTagRecoTau
PyRecoTauTagRecoTau_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagRecoTau,src/RecoTauTag/RecoTau/python,src_RecoTauTag_RecoTau_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagRecoTau,src/RecoTauTag/RecoTau/python))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_python
src_RecoTauTag_RecoTau_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_python,src/RecoTauTag/RecoTau/python,PYTHON))
ifeq ($(strip $(TestRecoTauTagCombinatoricGenerator)),)
TestRecoTauTagCombinatoricGenerator_files := $(patsubst src/RecoTauTag/RecoTau/test/%,%,$(foreach file,CombinatoricGenerator_t.cppunit.cc,$(eval xfile:=$(wildcard src/RecoTauTag/RecoTau/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/RecoTau/test/$(file). Please fix src/RecoTauTag/RecoTau/test/BuildFile.))))
TestRecoTauTagCombinatoricGenerator := self/src/RecoTauTag/RecoTau/test
TestRecoTauTagCombinatoricGenerator_TEST_RUNNER_CMD :=  TestRecoTauTagCombinatoricGenerator 
TestRecoTauTagCombinatoricGenerator_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/test/BuildFile
TestRecoTauTagCombinatoricGenerator_LOC_USE   := self RecoTauTag/RecoTau cppunit
TestRecoTauTagCombinatoricGenerator_PACKAGE := self/src/RecoTauTag/RecoTau/test
ALL_PRODS += TestRecoTauTagCombinatoricGenerator
TestRecoTauTagCombinatoricGenerator_INIT_FUNC        += $$(eval $$(call Binary,TestRecoTauTagCombinatoricGenerator,src/RecoTauTag/RecoTau/test,src_RecoTauTag_RecoTau_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(TestRecoTauTagCombinatoricGenerator_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TestRecoTauTagCombinatoricGenerator,src/RecoTauTag/RecoTau/test))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_test
src_RecoTauTag_RecoTau_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_test,src/RecoTauTag/RecoTau/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/TauAnalysis)
subdirs_src_TauAnalysis = src_TauAnalysis_CandidateTools
ALL_PACKAGES += $(patsubst src/%,%,src/TauAnalysis/CandidateTools)
subdirs_src_TauAnalysis_CandidateTools := src_TauAnalysis_CandidateTools_src src_TauAnalysis_CandidateTools_bin src_TauAnalysis_CandidateTools_doc src_TauAnalysis_CandidateTools_test src_TauAnalysis_CandidateTools_plugins src_TauAnalysis_CandidateTools_python src_TauAnalysis_CandidateTools_interface
ifeq ($(strip $(testMarkovChainIntegration)),)
testMarkovChainIntegration_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,testMarkovChainIntegration.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
testMarkovChainIntegration := self/src/TauAnalysis/CandidateTools/bin
testMarkovChainIntegration_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
testMarkovChainIntegration_LOC_USE   := self FWCore/ParameterSet TauAnalysis/CandidateTools root rootmath
testMarkovChainIntegration_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += testMarkovChainIntegration
testMarkovChainIntegration_INIT_FUNC        += $$(eval $$(call Binary,testMarkovChainIntegration,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),$(sort $(patsubst .%,%,$(suffix $(testMarkovChainIntegration_files)))),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testMarkovChainIntegration,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(studySVfitVisPtCuts)),)
studySVfitVisPtCuts_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,studySVfitVisPtCuts.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
studySVfitVisPtCuts := self/src/TauAnalysis/CandidateTools/bin
studySVfitVisPtCuts_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
studySVfitVisPtCuts_LOC_USE   := self DataFormats/Candidate DataFormats/Common DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite TauAnalysis/CandidateTools root
studySVfitVisPtCuts_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += studySVfitVisPtCuts
studySVfitVisPtCuts_INIT_FUNC        += $$(eval $$(call Binary,studySVfitVisPtCuts,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),$(sort $(patsubst .%,%,$(suffix $(studySVfitVisPtCuts_files)))),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,studySVfitVisPtCuts,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(computeCalibration)),)
computeCalibration_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,computeCalibration.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
computeCalibration := self/src/TauAnalysis/CandidateTools/bin
computeCalibration_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
computeCalibration_LOC_USE   := self DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite TauAnalysis/CandidateTools roofit root rootgraphics
computeCalibration_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += computeCalibration
computeCalibration_INIT_FUNC        += $$(eval $$(call Binary,computeCalibration,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),$(sort $(patsubst .%,%,$(suffix $(computeCalibration_files)))),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,computeCalibration,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(nsvfitStandalone)),)
nsvfitStandalone_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,nsvfitStandalone.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
nsvfitStandalone := self/src/TauAnalysis/CandidateTools/bin
nsvfitStandalone_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
nsvfitStandalone_LOC_USE   := self FWCore/PythonParameterSet FWCore/ParameterSet TauAnalysis/CandidateTools rootcintex root
nsvfitStandalone_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += nsvfitStandalone
nsvfitStandalone_INIT_FUNC        += $$(eval $$(call Binary,nsvfitStandalone,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),$(sort $(patsubst .%,%,$(suffix $(nsvfitStandalone_files)))),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,nsvfitStandalone,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(testNeuralMtautau)),)
testNeuralMtautau_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,testNeuralMtautau.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
testNeuralMtautau := self/src/TauAnalysis/CandidateTools/bin
testNeuralMtautau_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
testNeuralMtautau_LOC_USE   := self DataFormats/Common DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite TauAnalysis/CandidateTools root roottmva
testNeuralMtautau_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += testNeuralMtautau
testNeuralMtautau_INIT_FUNC        += $$(eval $$(call Binary,testNeuralMtautau,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),$(sort $(patsubst .%,%,$(suffix $(testNeuralMtautau_files)))),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testNeuralMtautau,src/TauAnalysis/CandidateTools/bin))
endif
ifeq ($(strip $(trainNeuralMtautau)),)
trainNeuralMtautau_files := $(patsubst src/TauAnalysis/CandidateTools/bin/%,%,$(foreach file,trainNeuralMtautau.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/bin/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/bin/$(file). Please fix src/TauAnalysis/CandidateTools/bin/BuildFile.))))
trainNeuralMtautau := self/src/TauAnalysis/CandidateTools/bin
trainNeuralMtautau_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/bin/BuildFile
trainNeuralMtautau_LOC_USE   := self DataFormats/Common DataFormats/FWLite FWCore/FWLite FWCore/ParameterSet FWCore/PythonParameterSet PhysicsTools/FWLite root roottmva
trainNeuralMtautau_PACKAGE := self/src/TauAnalysis/CandidateTools/bin
ALL_PRODS += trainNeuralMtautau
trainNeuralMtautau_INIT_FUNC        += $$(eval $$(call Binary,trainNeuralMtautau,src/TauAnalysis/CandidateTools/bin,src_TauAnalysis_CandidateTools_bin,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_BIN),$(sort $(patsubst .%,%,$(suffix $(trainNeuralMtautau_files)))),bin,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,trainNeuralMtautau,src/TauAnalysis/CandidateTools/bin))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_bin
src_TauAnalysis_CandidateTools_bin_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_bin,src/TauAnalysis/CandidateTools/bin,BINARY))
ifeq ($(strip $(TauAnalysisCandidateTools_plugins)),)
TauAnalysisCandidateTools_plugins_files := $(patsubst src/TauAnalysis/CandidateTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/plugins/$(file). Please fix src/TauAnalysis/CandidateTools/plugins/BuildFile.))))
TauAnalysisCandidateTools_plugins_files_exts := $(sort $(patsubst .%,%,$(suffix $(TauAnalysisCandidateTools_plugins_files))))
TauAnalysisCandidateTools_plugins := self/src/TauAnalysis/CandidateTools/plugins
TauAnalysisCandidateTools_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/plugins/BuildFile
TauAnalysisCandidateTools_plugins_LOC_USE   := self CommonTools/UtilAlgos CommonTools/Utils DataFormats/Candidate DataFormats/CLHEP DataFormats/JetReco DataFormats/Math DataFormats/ParticleFlowCandidate DataFormats/TauReco DQMServices/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities JetMETCorrections/METPUSubtraction TrackingTools/TrajectoryState TrackingTools/TransientTrack TrackingTools/Records AnalysisDataFormats/TauAnalysis TauAnalysis/CandidateTools roofit root lhapdf
TauAnalysisCandidateTools_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TauAnalysisCandidateTools_plugins,TauAnalysisCandidateTools_plugins,$(SCRAMSTORENAME_LIB)))
TauAnalysisCandidateTools_plugins_PACKAGE := self/src/TauAnalysis/CandidateTools/plugins
ALL_PRODS += TauAnalysisCandidateTools_plugins
TauAnalysisCandidateTools_plugins_INIT_FUNC        += $$(eval $$(call Library,TauAnalysisCandidateTools_plugins,src/TauAnalysis/CandidateTools/plugins,src_TauAnalysis_CandidateTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(if $(TauAnalysisCandidateTools_plugins_files_exts),$(TauAnalysisCandidateTools_plugins_files_exts),$(SRC_FILES_SUFFIXES))))
else
$(eval $(call MultipleWarningMsg,TauAnalysisCandidateTools_plugins,src/TauAnalysis/CandidateTools/plugins))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_plugins
src_TauAnalysis_CandidateTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_plugins,src/TauAnalysis/CandidateTools/plugins,PLUGINS))
ifeq ($(strip $(PyTauAnalysisCandidateTools)),)
PyTauAnalysisCandidateTools := self/src/TauAnalysis/CandidateTools/python
PyTauAnalysisCandidateTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TauAnalysis/CandidateTools/python)
ALL_PRODS += PyTauAnalysisCandidateTools
PyTauAnalysisCandidateTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyTauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/python,src_TauAnalysis_CandidateTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyTauAnalysisCandidateTools,src/TauAnalysis/CandidateTools/python))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_python
src_TauAnalysis_CandidateTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_python,src/TauAnalysis/CandidateTools/python,PYTHON))
ifeq ($(strip $(TestSVFit)),)
TestSVFit_files := $(patsubst src/TauAnalysis/CandidateTools/test/%,%,$(foreach file,svfit_t.cppunit.cc,$(eval xfile:=$(wildcard src/TauAnalysis/CandidateTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/TauAnalysis/CandidateTools/test/$(file). Please fix src/TauAnalysis/CandidateTools/test/BuildFile.))))
TestSVFit := self/src/TauAnalysis/CandidateTools/test
TestSVFit_TEST_RUNNER_CMD :=  TestSVFit 
TestSVFit_BuildFile    := $(WORKINGDIR)/cache/bf/src/TauAnalysis/CandidateTools/test/BuildFile
TestSVFit_LOC_USE   := self root TauAnalysis/CandidateTools cppunit
TestSVFit_PACKAGE := self/src/TauAnalysis/CandidateTools/test
ALL_PRODS += TestSVFit
TestSVFit_INIT_FUNC        += $$(eval $$(call Binary,TestSVFit,src/TauAnalysis/CandidateTools/test,src_TauAnalysis_CandidateTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),$(sort $(patsubst .%,%,$(suffix $(TestSVFit_files)))),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TestSVFit,src/TauAnalysis/CandidateTools/test))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_test
src_TauAnalysis_CandidateTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_test,src/TauAnalysis/CandidateTools/test,TEST))
