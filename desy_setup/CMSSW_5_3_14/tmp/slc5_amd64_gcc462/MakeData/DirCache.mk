ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/AnalysisDataFormats)
subdirs_src_AnalysisDataFormats = src_AnalysisDataFormats_TauAnalysis
ALL_PACKAGES += $(patsubst src/%,%,src/AnalysisDataFormats/TauAnalysis)
subdirs_src_AnalysisDataFormats_TauAnalysis := src_AnalysisDataFormats_TauAnalysis_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/CondFormats)
subdirs_src_CondFormats = src_CondFormats_EgammaObjects
ALL_PACKAGES += $(patsubst src/%,%,src/CondFormats/EgammaObjects)
subdirs_src_CondFormats_EgammaObjects := src_CondFormats_EgammaObjects_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/DataFormats)
subdirs_src_DataFormats = src_DataFormats_JetReco src_DataFormats_TauReco src_DataFormats_METReco src_DataFormats_Common src_DataFormats_StdDictionaries src_DataFormats_PatCandidates
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/JetReco)
subdirs_src_DataFormats_JetReco := src_DataFormats_JetReco_src
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/METReco)
subdirs_src_DataFormats_METReco := src_DataFormats_METReco_src
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/PatCandidates)
subdirs_src_DataFormats_PatCandidates := src_DataFormats_PatCandidates_test src_DataFormats_PatCandidates_src
ifeq ($(strip $(testKinResolutions)),)
testKinResolutions_files := $(patsubst src/DataFormats/PatCandidates/test/%,%,$(foreach file,testKinParametrizations.cc testKinResolutions.cc testRunner.cpp,$(eval xfile:=$(wildcard src/DataFormats/PatCandidates/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/PatCandidates/test/$(file). Please fix src/DataFormats/PatCandidates/test/BuildFile.))))
testKinResolutions := self/src/DataFormats/PatCandidates/test
testKinResolutions_TEST_RUNNER_CMD := echo
testKinResolutions_NO_TESTRUN := yes
testKinResolutions_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/PatCandidates/test/BuildFile
testKinResolutions_LOC_USE := self boost cppunit DataFormats/PatCandidates
testKinResolutions_PACKAGE := self/src/DataFormats/PatCandidates/test
ALL_PRODS += testKinResolutions
testKinResolutions_INIT_FUNC        += $$(eval $$(call Binary,testKinResolutions,src/DataFormats/PatCandidates/test,src_DataFormats_PatCandidates_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testKinResolutions,src/DataFormats/PatCandidates/test))
endif
ALL_COMMONRULES += src_DataFormats_PatCandidates_test
src_DataFormats_PatCandidates_test_parent := DataFormats/PatCandidates
src_DataFormats_PatCandidates_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DataFormats_PatCandidates_test,src/DataFormats/PatCandidates/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/StdDictionaries)
subdirs_src_DataFormats_StdDictionaries := src_DataFormats_StdDictionaries_src
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/TauReco)
subdirs_src_DataFormats_TauReco := src_DataFormats_TauReco_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/EGamma)
subdirs_src_EGamma = src_EGamma_EGammaAnalysisTools
ALL_PACKAGES += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools)
subdirs_src_EGamma_EGammaAnalysisTools := src_EGamma_EGammaAnalysisTools_src src_EGamma_EGammaAnalysisTools_plugins src_EGamma_EGammaAnalysisTools_test src_EGamma_EGammaAnalysisTools_python
ifeq ($(strip $(EGammaEGammaAnalysisToolsPlugins)),)
EGammaEGammaAnalysisToolsPlugins_files := $(patsubst src/EGamma/EGammaAnalysisTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/plugins/$(file). Please fix src/EGamma/EGammaAnalysisTools/plugins/BuildFile.))))
EGammaEGammaAnalysisToolsPlugins := self/src/EGamma/EGammaAnalysisTools/plugins
EGammaEGammaAnalysisToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/plugins/BuildFile
EGammaEGammaAnalysisToolsPlugins_LOC_USE := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/EgammaCandidates CommonTools/Utils HLTrigger/HLTcore EGamma/EGammaAnalysisTools
EGammaEGammaAnalysisToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EGammaEGammaAnalysisToolsPlugins,EGammaEGammaAnalysisToolsPlugins,$(SCRAMSTORENAME_LIB)))
EGammaEGammaAnalysisToolsPlugins_PACKAGE := self/src/EGamma/EGammaAnalysisTools/plugins
ALL_PRODS += EGammaEGammaAnalysisToolsPlugins
EGammaEGammaAnalysisToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins,src_EGamma_EGammaAnalysisTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,EGammaEGammaAnalysisToolsPlugins,src/EGamma/EGammaAnalysisTools/plugins))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_plugins
src_EGamma_EGammaAnalysisTools_plugins_parent := EGamma/EGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_plugins,src/EGamma/EGammaAnalysisTools/plugins,PLUGINS))
ifeq ($(strip $(PyEGammaEGammaAnalysisTools)),)
PyEGammaEGammaAnalysisTools := self/src/EGamma/EGammaAnalysisTools/python
PyEGammaEGammaAnalysisTools_files := $(patsubst src/EGamma/EGammaAnalysisTools/python/%,%,$(wildcard $(foreach dir,src/EGamma/EGammaAnalysisTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEGammaEGammaAnalysisTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EGamma/EGammaAnalysisTools/python)
ALL_PRODS += PyEGammaEGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_python_parent := EGamma/EGammaAnalysisTools
PyEGammaEGammaAnalysisTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python,src_EGamma_EGammaAnalysisTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEGammaEGammaAnalysisTools,src/EGamma/EGammaAnalysisTools/python))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_python
src_EGamma_EGammaAnalysisTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_python,src/EGamma/EGammaAnalysisTools/python,PYTHON))
ifeq ($(strip $(EgammaEGammaAnalysisToolsTest)),)
EgammaEGammaAnalysisToolsTest_files := $(patsubst src/EGamma/EGammaAnalysisTools/test/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EGamma/EGammaAnalysisTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma/EGammaAnalysisTools/test/$(file). Please fix src/EGamma/EGammaAnalysisTools/test/BuildFile.))))
EgammaEGammaAnalysisToolsTest := self/src/EGamma/EGammaAnalysisTools/test
EgammaEGammaAnalysisToolsTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma/EGammaAnalysisTools/test/BuildFile
EgammaEGammaAnalysisToolsTest_LOC_USE := self DataFormats/Common DataFormats/EgammaReco DataFormats/GsfTrackReco DataFormats/ParticleFlowCandidate DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet RecoParticleFlow/PFProducer EGamma/EGammaAnalysisTools clhep root roottmva
EgammaEGammaAnalysisToolsTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EgammaEGammaAnalysisToolsTest,EgammaEGammaAnalysisToolsTest,$(SCRAMSTORENAME_LIB)))
EgammaEGammaAnalysisToolsTest_PACKAGE := self/src/EGamma/EGammaAnalysisTools/test
ALL_PRODS += EgammaEGammaAnalysisToolsTest
EgammaEGammaAnalysisToolsTest_INIT_FUNC        += $$(eval $$(call Library,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test,src_EGamma_EGammaAnalysisTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,EgammaEGammaAnalysisToolsTest,src/EGamma/EGammaAnalysisTools/test))
endif
ALL_COMMONRULES += src_EGamma_EGammaAnalysisTools_test
src_EGamma_EGammaAnalysisTools_test_parent := EGamma/EGammaAnalysisTools
src_EGamma_EGammaAnalysisTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_EGammaAnalysisTools_test,src/EGamma/EGammaAnalysisTools/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/FWCore)
subdirs_src_FWCore = src_FWCore_GuiBrowsers
ALL_PACKAGES += $(patsubst src/%,%,src/FWCore/GuiBrowsers)
subdirs_src_FWCore_GuiBrowsers := src_FWCore_GuiBrowsers_test src_FWCore_GuiBrowsers_python src_FWCore_GuiBrowsers_scripts
ifeq ($(strip $(PyFWCoreGuiBrowsers)),)
PyFWCoreGuiBrowsers := self/src/FWCore/GuiBrowsers/python
PyFWCoreGuiBrowsers_files := $(patsubst src/FWCore/GuiBrowsers/python/%,%,$(wildcard $(foreach dir,src/FWCore/GuiBrowsers/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyFWCoreGuiBrowsers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/FWCore/GuiBrowsers/python)
ALL_PRODS += PyFWCoreGuiBrowsers
src_FWCore_GuiBrowsers_python_parent := FWCore/GuiBrowsers
PyFWCoreGuiBrowsers_INIT_FUNC        += $$(eval $$(call PythonProduct,PyFWCoreGuiBrowsers,src/FWCore/GuiBrowsers/python,src_FWCore_GuiBrowsers_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyFWCoreGuiBrowsers,src/FWCore/GuiBrowsers/python))
endif
ALL_COMMONRULES += src_FWCore_GuiBrowsers_python
src_FWCore_GuiBrowsers_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_GuiBrowsers_python,src/FWCore/GuiBrowsers/python,PYTHON))
src_FWCore_GuiBrowsers_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/FWCore/GuiBrowsers/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_FWCore_GuiBrowsers_scripts,src/FWCore/GuiBrowsers/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_COMMONRULES += src_FWCore_GuiBrowsers_test
src_FWCore_GuiBrowsers_test_parent := FWCore/GuiBrowsers
src_FWCore_GuiBrowsers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_FWCore_GuiBrowsers_test,src/FWCore/GuiBrowsers/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/JetMETCorrections)
subdirs_src_JetMETCorrections = src_JetMETCorrections_METPUSubtraction
ALL_PACKAGES += $(patsubst src/%,%,src/JetMETCorrections/METPUSubtraction)
subdirs_src_JetMETCorrections_METPUSubtraction := src_JetMETCorrections_METPUSubtraction_python src_JetMETCorrections_METPUSubtraction_plugins src_JetMETCorrections_METPUSubtraction_test src_JetMETCorrections_METPUSubtraction_src
ifeq ($(strip $(JetMETCorrectionsMETPUSubtraction_plugins)),)
JetMETCorrectionsMETPUSubtraction_plugins_files := $(patsubst src/JetMETCorrections/METPUSubtraction/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/JetMETCorrections/METPUSubtraction/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/JetMETCorrections/METPUSubtraction/plugins/$(file). Please fix src/JetMETCorrections/METPUSubtraction/plugins/BuildFile.))))
JetMETCorrectionsMETPUSubtraction_plugins := self/src/JetMETCorrections/METPUSubtraction/plugins
JetMETCorrectionsMETPUSubtraction_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/JetMETCorrections/METPUSubtraction/plugins/BuildFile
JetMETCorrectionsMETPUSubtraction_plugins_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects JetMETCorrections/METPUSubtraction RecoJets/JetProducers
JetMETCorrectionsMETPUSubtraction_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,JetMETCorrectionsMETPUSubtraction_plugins,JetMETCorrectionsMETPUSubtraction_plugins,$(SCRAMSTORENAME_LIB)))
JetMETCorrectionsMETPUSubtraction_plugins_PACKAGE := self/src/JetMETCorrections/METPUSubtraction/plugins
ALL_PRODS += JetMETCorrectionsMETPUSubtraction_plugins
JetMETCorrectionsMETPUSubtraction_plugins_INIT_FUNC        += $$(eval $$(call Library,JetMETCorrectionsMETPUSubtraction_plugins,src/JetMETCorrections/METPUSubtraction/plugins,src_JetMETCorrections_METPUSubtraction_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,JetMETCorrectionsMETPUSubtraction_plugins,src/JetMETCorrections/METPUSubtraction/plugins))
endif
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_plugins
src_JetMETCorrections_METPUSubtraction_plugins_parent := JetMETCorrections/METPUSubtraction
src_JetMETCorrections_METPUSubtraction_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_plugins,src/JetMETCorrections/METPUSubtraction/plugins,PLUGINS))
ifeq ($(strip $(PyJetMETCorrectionsMETPUSubtraction)),)
PyJetMETCorrectionsMETPUSubtraction := self/src/JetMETCorrections/METPUSubtraction/python
PyJetMETCorrectionsMETPUSubtraction_files := $(patsubst src/JetMETCorrections/METPUSubtraction/python/%,%,$(wildcard $(foreach dir,src/JetMETCorrections/METPUSubtraction/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyJetMETCorrectionsMETPUSubtraction_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/JetMETCorrections/METPUSubtraction/python)
ALL_PRODS += PyJetMETCorrectionsMETPUSubtraction
src_JetMETCorrections_METPUSubtraction_python_parent := JetMETCorrections/METPUSubtraction
PyJetMETCorrectionsMETPUSubtraction_INIT_FUNC        += $$(eval $$(call PythonProduct,PyJetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/python,src_JetMETCorrections_METPUSubtraction_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyJetMETCorrectionsMETPUSubtraction,src/JetMETCorrections/METPUSubtraction/python))
endif
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_python
src_JetMETCorrections_METPUSubtraction_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_python,src/JetMETCorrections/METPUSubtraction/python,PYTHON))
ALL_COMMONRULES += src_JetMETCorrections_METPUSubtraction_test
src_JetMETCorrections_METPUSubtraction_test_parent := JetMETCorrections/METPUSubtraction
src_JetMETCorrections_METPUSubtraction_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_JetMETCorrections_METPUSubtraction_test,src/JetMETCorrections/METPUSubtraction/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/Muon)
subdirs_src_Muon = src_Muon_MuonAnalysisTools
ALL_PACKAGES += $(patsubst src/%,%,src/Muon/MuonAnalysisTools)
subdirs_src_Muon_MuonAnalysisTools := src_Muon_MuonAnalysisTools_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/MyRootMaker)
subdirs_src_MyRootMaker = src_MyRootMaker_MyRootMaker
ALL_PACKAGES += $(patsubst src/%,%,src/MyRootMaker/MyRootMaker)
subdirs_src_MyRootMaker_MyRootMaker := src_MyRootMaker_MyRootMaker_plugins src_MyRootMaker_MyRootMaker_test src_MyRootMaker_MyRootMaker_src
ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_plugins
src_MyRootMaker_MyRootMaker_plugins_parent := MyRootMaker/MyRootMaker
src_MyRootMaker_MyRootMaker_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_plugins,src/MyRootMaker/MyRootMaker/plugins,PLUGINS))
ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_test
src_MyRootMaker_MyRootMaker_test_parent := MyRootMaker/MyRootMaker
src_MyRootMaker_MyRootMaker_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_test,src/MyRootMaker/MyRootMaker/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/PhysicsTools)
subdirs_src_PhysicsTools = src_PhysicsTools_PatAlgos src_PhysicsTools_PatUtils
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatAlgos)
subdirs_src_PhysicsTools_PatAlgos := src_PhysicsTools_PatAlgos_python src_PhysicsTools_PatAlgos_src src_PhysicsTools_PatAlgos_scripts src_PhysicsTools_PatAlgos_plugins src_PhysicsTools_PatAlgos_test
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins_files := $(patsubst src/PhysicsTools/PatAlgos/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/plugins/$(file). Please fix src/PhysicsTools/PatAlgos/plugins/BuildFile.))))
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PhysicsToolsPatAlgos_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/plugins/BuildFile
PhysicsToolsPatAlgos_plugins_LOC_USE := self PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects JetMETCorrections/Objects TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsToolsPatAlgos_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_plugins,PhysicsToolsPatAlgos_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_plugins_PACKAGE := self/src/PhysicsTools/PatAlgos/plugins
ALL_PRODS += PhysicsToolsPatAlgos_plugins
PhysicsToolsPatAlgos_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,src_PhysicsTools_PatAlgos_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_plugins
src_PhysicsTools_PatAlgos_plugins_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_plugins,src/PhysicsTools/PatAlgos/plugins,PLUGINS))
ifeq ($(strip $(PyPhysicsToolsPatAlgos)),)
PyPhysicsToolsPatAlgos := self/src/PhysicsTools/PatAlgos/python
PyPhysicsToolsPatAlgos_files := $(patsubst src/PhysicsTools/PatAlgos/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatAlgos/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatAlgos_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatAlgos/python)
ALL_PRODS += PyPhysicsToolsPatAlgos
src_PhysicsTools_PatAlgos_python_parent := PhysicsTools/PatAlgos
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
runtestPhysicsToolsPatAlgos_LOC_USE := self FWCore/Utilities
runtestPhysicsToolsPatAlgos_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += runtestPhysicsToolsPatAlgos
runtestPhysicsToolsPatAlgos_INIT_FUNC        += $$(eval $$(call Binary,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,runtestPhysicsToolsPatAlgos,src/PhysicsTools/PatAlgos/test))
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_testAnalyzers)),)
PhysicsToolsPatAlgos_testAnalyzers_files := $(patsubst src/PhysicsTools/PatAlgos/test/%,%,$(foreach file,private/*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatAlgos/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatAlgos/test/$(file). Please fix src/PhysicsTools/PatAlgos/test/BuildFile.))))
PhysicsToolsPatAlgos_testAnalyzers := self/src/PhysicsTools/PatAlgos/test
PhysicsToolsPatAlgos_testAnalyzers_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatAlgos/test/BuildFile
PhysicsToolsPatAlgos_testAnalyzers_LOC_USE := self FWCore/Framework FWCore/ParameterSet DataFormats/BTauReco PhysicsTools/PatUtils DataFormats/PatCandidates PhysicsTools/UtilAlgos root
PhysicsToolsPatAlgos_testAnalyzers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatAlgos_testAnalyzers,PhysicsToolsPatAlgos_testAnalyzers,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatAlgos_testAnalyzers_PACKAGE := self/src/PhysicsTools/PatAlgos/test
ALL_PRODS += PhysicsToolsPatAlgos_testAnalyzers
PhysicsToolsPatAlgos_testAnalyzers_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test,src_PhysicsTools_PatAlgos_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatAlgos_testAnalyzers,src/PhysicsTools/PatAlgos/test))
endif
ALL_COMMONRULES += src_PhysicsTools_PatAlgos_test
src_PhysicsTools_PatAlgos_test_parent := PhysicsTools/PatAlgos
src_PhysicsTools_PatAlgos_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatAlgos_test,src/PhysicsTools/PatAlgos/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/PhysicsTools/PatUtils)
subdirs_src_PhysicsTools_PatUtils := src_PhysicsTools_PatUtils_python src_PhysicsTools_PatUtils_plugins src_PhysicsTools_PatUtils_src
ifeq ($(strip $(PhysicsToolsPatUtils_plugins)),)
PhysicsToolsPatUtils_plugins_files := $(patsubst src/PhysicsTools/PatUtils/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/PatUtils/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/PatUtils/plugins/$(file). Please fix src/PhysicsTools/PatUtils/plugins/BuildFile.))))
PhysicsToolsPatUtils_plugins := self/src/PhysicsTools/PatUtils/plugins
PhysicsToolsPatUtils_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/PatUtils/plugins/BuildFile
PhysicsToolsPatUtils_plugins_LOC_USE := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils CondFormats/JetMETObjects DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates JetMETCorrections/Objects JetMETCorrections/Type1MET RecoMET/METAlgorithms
PhysicsToolsPatUtils_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsPatUtils_plugins,PhysicsToolsPatUtils_plugins,$(SCRAMSTORENAME_LIB)))
PhysicsToolsPatUtils_plugins_PACKAGE := self/src/PhysicsTools/PatUtils/plugins
ALL_PRODS += PhysicsToolsPatUtils_plugins
PhysicsToolsPatUtils_plugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins,src_PhysicsTools_PatUtils_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,PhysicsToolsPatUtils_plugins,src/PhysicsTools/PatUtils/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_plugins
src_PhysicsTools_PatUtils_plugins_parent := PhysicsTools/PatUtils
src_PhysicsTools_PatUtils_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_plugins,src/PhysicsTools/PatUtils/plugins,PLUGINS))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoJets)
subdirs_src_RecoJets = src_RecoJets_JetProducers
ifeq ($(strip $(PyPhysicsToolsPatUtils)),)
PyPhysicsToolsPatUtils := self/src/PhysicsTools/PatUtils/python
PyPhysicsToolsPatUtils_files := $(patsubst src/PhysicsTools/PatUtils/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/PatUtils/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsPatUtils_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/PatUtils/python)
ALL_PRODS += PyPhysicsToolsPatUtils
src_PhysicsTools_PatUtils_python_parent := PhysicsTools/PatUtils
PyPhysicsToolsPatUtils_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python,src_PhysicsTools_PatUtils_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsPatUtils,src/PhysicsTools/PatUtils/python))
endif
ALL_COMMONRULES += src_PhysicsTools_PatUtils_python
src_PhysicsTools_PatUtils_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_PatUtils_python,src/PhysicsTools/PatUtils/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoJets/JetProducers)
subdirs_src_RecoJets_JetProducers := src_RecoJets_JetProducers_test src_RecoJets_JetProducers_python src_RecoJets_JetProducers_src src_RecoJets_JetProducers_plugins
ifeq ($(strip $(RecoJetsJetProducers_plugins)),)
RecoJetsJetProducers_plugins_files := $(patsubst src/RecoJets/JetProducers/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoJets/JetProducers/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoJets/JetProducers/plugins/$(file). Please fix src/RecoJets/JetProducers/plugins/BuildFile.))))
RecoJetsJetProducers_plugins := self/src/RecoJets/JetProducers/plugins
RecoJetsJetProducers_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoJets/JetProducers/plugins/BuildFile
RecoJetsJetProducers_plugins_LOC_USE := self RecoJets/JetProducers RecoJets/JetAlgorithms FWCore/Framework DataFormats/JetReco DataFormats/VertexReco Geometry/CaloGeometry Geometry/Records CommonTools/UtilAlgos CondFormats/JetMETObjects JetMETCorrections/Objects fastjet
RecoJetsJetProducers_plugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoJetsJetProducers_plugins,RecoJetsJetProducers_plugins,$(SCRAMSTORENAME_LIB)))
RecoJetsJetProducers_plugins_PACKAGE := self/src/RecoJets/JetProducers/plugins
ALL_PRODS += RecoJetsJetProducers_plugins
RecoJetsJetProducers_plugins_INIT_FUNC        += $$(eval $$(call Library,RecoJetsJetProducers_plugins,src/RecoJets/JetProducers/plugins,src_RecoJets_JetProducers_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoJetsJetProducers_plugins,src/RecoJets/JetProducers/plugins))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_plugins
src_RecoJets_JetProducers_plugins_parent := RecoJets/JetProducers
src_RecoJets_JetProducers_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_plugins,src/RecoJets/JetProducers/plugins,PLUGINS))
ifeq ($(strip $(PyRecoJetsJetProducers)),)
PyRecoJetsJetProducers := self/src/RecoJets/JetProducers/python
PyRecoJetsJetProducers_files := $(patsubst src/RecoJets/JetProducers/python/%,%,$(wildcard $(foreach dir,src/RecoJets/JetProducers/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoJetsJetProducers_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoJets/JetProducers/python)
ALL_PRODS += PyRecoJetsJetProducers
src_RecoJets_JetProducers_python_parent := RecoJets/JetProducers
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
test-large-voronoi-area_LOC_USE := self RecoJets/JetProducers RecoJets/JetAlgorithms FWCore/Framework DataFormats/JetReco DataFormats/VertexReco Geometry/CaloGeometry Geometry/Records CommonTools/UtilAlgos fastjet
test-large-voronoi-area_PACKAGE := self/src/RecoJets/JetProducers/test
ALL_PRODS += test-large-voronoi-area
test-large-voronoi-area_INIT_FUNC        += $$(eval $$(call Binary,test-large-voronoi-area,src/RecoJets/JetProducers/test,src_RecoJets_JetProducers_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,test-large-voronoi-area,src/RecoJets/JetProducers/test))
endif
ALL_COMMONRULES += src_RecoJets_JetProducers_test
src_RecoJets_JetProducers_test_parent := RecoJets/JetProducers
src_RecoJets_JetProducers_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoJets_JetProducers_test,src/RecoJets/JetProducers/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoMET)
subdirs_src_RecoMET = src_RecoMET_METAlgorithms
ALL_PACKAGES += $(patsubst src/%,%,src/RecoMET/METAlgorithms)
subdirs_src_RecoMET_METAlgorithms := src_RecoMET_METAlgorithms_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoParticleFlow)
subdirs_src_RecoParticleFlow = src_RecoParticleFlow_Benchmark
ALL_PACKAGES += $(patsubst src/%,%,src/DataFormats/Common)
subdirs_src_DataFormats_Common := src_DataFormats_Common_src src_DataFormats_Common_test
ALL_PACKAGES += $(patsubst src/%,%,src/RecoParticleFlow/Benchmark)
subdirs_src_RecoParticleFlow_Benchmark := src_RecoParticleFlow_Benchmark_src
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/RecoTauTag)
subdirs_src_RecoTauTag = src_RecoTauTag_RecoTau src_RecoTauTag_ImpactParameter src_RecoTauTag_TauTagTools src_RecoTauTag_Configuration
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/Configuration)
subdirs_src_RecoTauTag_Configuration := src_RecoTauTag_Configuration_python
ifeq ($(strip $(PyRecoTauTagConfiguration)),)
PyRecoTauTagConfiguration := self/src/RecoTauTag/Configuration/python
PyRecoTauTagConfiguration_files := $(patsubst src/RecoTauTag/Configuration/python/%,%,$(wildcard $(foreach dir,src/RecoTauTag/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTauTagConfiguration_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/Configuration/python)
ALL_PRODS += PyRecoTauTagConfiguration
src_RecoTauTag_Configuration_python_parent := RecoTauTag/Configuration
PyRecoTauTagConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagConfiguration,src/RecoTauTag/Configuration/python,src_RecoTauTag_Configuration_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagConfiguration,src/RecoTauTag/Configuration/python))
endif
ALL_COMMONRULES += src_RecoTauTag_Configuration_python
src_RecoTauTag_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_Configuration_python,src/RecoTauTag/Configuration/python,PYTHON))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/ImpactParameter)
subdirs_src_RecoTauTag_ImpactParameter := src_RecoTauTag_ImpactParameter_python src_RecoTauTag_ImpactParameter_plugins src_RecoTauTag_ImpactParameter_test src_RecoTauTag_ImpactParameter_src
ifeq ($(strip $(RecoTauTagReco3ProngTauPlugins)),)
RecoTauTagReco3ProngTauPlugins_files := $(patsubst src/RecoTauTag/ImpactParameter/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/ImpactParameter/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/ImpactParameter/plugins/$(file). Please fix src/RecoTauTag/ImpactParameter/plugins/BuildFile.))))
RecoTauTagReco3ProngTauPlugins := self/src/RecoTauTag/ImpactParameter/plugins
RecoTauTagReco3ProngTauPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/ImpactParameter/plugins/BuildFile
RecoTauTagReco3ProngTauPlugins_LOC_USE := self TrackingTools/Records FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/BTauReco DataFormats/VertexReco rootrflx DataFormats/Math boost root RecoBTag/BTagTools TrackingTools/TransientTrack RecoTauTag/ImpactParameter RecoTauTag/RecoTau DataFormats/TauReco CommonTools/Utils RecoVertex/KinematicFit RecoVertex/KinematicFitPrimitives DataFormats/BeamSpot DataFormats/MuonReco DataFormats/TrackReco DataFormats/GsfTrackReco
RecoTauTagReco3ProngTauPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagReco3ProngTauPlugins,RecoTauTagReco3ProngTauPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagReco3ProngTauPlugins_PACKAGE := self/src/RecoTauTag/ImpactParameter/plugins
ALL_PRODS += RecoTauTagReco3ProngTauPlugins
RecoTauTagReco3ProngTauPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagReco3ProngTauPlugins,src/RecoTauTag/ImpactParameter/plugins,src_RecoTauTag_ImpactParameter_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoTauTagReco3ProngTauPlugins,src/RecoTauTag/ImpactParameter/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_ImpactParameter_plugins
src_RecoTauTag_ImpactParameter_plugins_parent := RecoTauTag/ImpactParameter
src_RecoTauTag_ImpactParameter_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_ImpactParameter_plugins,src/RecoTauTag/ImpactParameter/plugins,PLUGINS))
ifeq ($(strip $(PyRecoTauTagImpactParameter)),)
PyRecoTauTagImpactParameter := self/src/RecoTauTag/ImpactParameter/python
PyRecoTauTagImpactParameter_files := $(patsubst src/RecoTauTag/ImpactParameter/python/%,%,$(wildcard $(foreach dir,src/RecoTauTag/ImpactParameter/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTauTagImpactParameter_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/ImpactParameter/python)
ALL_PRODS += PyRecoTauTagImpactParameter
src_RecoTauTag_ImpactParameter_python_parent := RecoTauTag/ImpactParameter
PyRecoTauTagImpactParameter_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagImpactParameter,src/RecoTauTag/ImpactParameter/python,src_RecoTauTag_ImpactParameter_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagImpactParameter,src/RecoTauTag/ImpactParameter/python))
endif
ALL_COMMONRULES += src_RecoTauTag_ImpactParameter_python
src_RecoTauTag_ImpactParameter_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_ImpactParameter_python,src/RecoTauTag/ImpactParameter/python,PYTHON))
ifeq ($(strip $(TauImpactParameterTest)),)
TauImpactParameterTest_files := $(patsubst src/RecoTauTag/ImpactParameter/test/%,%,$(foreach file,TauImpactParameterTest.cc,$(eval xfile:=$(wildcard src/RecoTauTag/ImpactParameter/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/ImpactParameter/test/$(file). Please fix src/RecoTauTag/ImpactParameter/test/BuildFile.))))
TauImpactParameterTest := self/src/RecoTauTag/ImpactParameter/test
TauImpactParameterTest_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/ImpactParameter/test/BuildFile
TauImpactParameterTest_LOC_USE := self clhep rootgraphics FWCore/PluginManager FWCore/Utilities FWCore/Framework FWCore/ParameterSet DataFormats/Math DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco
TauImpactParameterTest_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,TauImpactParameterTest,TauImpactParameterTest,$(SCRAMSTORENAME_LIB)))
TauImpactParameterTest_PACKAGE := self/src/RecoTauTag/ImpactParameter/test
ALL_PRODS += TauImpactParameterTest
TauImpactParameterTest_INIT_FUNC        += $$(eval $$(call Library,TauImpactParameterTest,src/RecoTauTag/ImpactParameter/test,src_RecoTauTag_ImpactParameter_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TauImpactParameterTest,src/RecoTauTag/ImpactParameter/test))
endif
ALL_COMMONRULES += src_RecoTauTag_ImpactParameter_test
src_RecoTauTag_ImpactParameter_test_parent := RecoTauTag/ImpactParameter
src_RecoTauTag_ImpactParameter_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_ImpactParameter_test,src/RecoTauTag/ImpactParameter/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/RecoTau)
subdirs_src_RecoTauTag_RecoTau := src_RecoTauTag_RecoTau_src src_RecoTauTag_RecoTau_python src_RecoTauTag_RecoTau_test src_RecoTauTag_RecoTau_plugins
ifeq ($(strip $(RecoTauTagRecoTauPlugins)),)
RecoTauTagRecoTauPlugins_files := $(patsubst src/RecoTauTag/RecoTau/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/RecoTau/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/RecoTau/plugins/$(file). Please fix src/RecoTauTag/RecoTau/plugins/BuildFile.))))
RecoTauTagRecoTauPlugins := self/src/RecoTauTag/RecoTau/plugins
RecoTauTagRecoTauPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/RecoTau/plugins/BuildFile
RecoTauTagRecoTauPlugins_LOC_USE := self TrackingTools/Records RecoVertex/KalmanVertexFit CommonTools/CandUtils DataFormats/Candidate DataFormats/MuonReco DataFormats/TrackReco TrackingTools/TransientTrack RecoVertex/VertexPrimitives PhysicsTools/IsolationUtils PhysicsTools/MVAComputer PhysicsTools/MVATrainer FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/Utilities DataFormats/TauReco DataFormats/WrappedStdDictionaries CommonTools/UtilAlgos CommonTools/CandAlgos PhysicsTools/HepMCCandAlgos RecoTauTag/TauTagTools RecoTauTag/RecoTau DataFormats/JetReco DataFormats/ParticleFlowReco RecoBTag/SecondaryVertex DataFormats/VertexReco CondFormats/EgammaObjects CondFormats/DataRecord CondFormats/EcalObjects Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records MagneticField/Engine MagneticField/Records FastSimulation/BaseParticlePropagator root
RecoTauTagRecoTauPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagRecoTauPlugins,RecoTauTagRecoTauPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagRecoTauPlugins_PACKAGE := self/src/RecoTauTag/RecoTau/plugins
ALL_PRODS += RecoTauTagRecoTauPlugins
RecoTauTagRecoTauPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagRecoTauPlugins,src/RecoTauTag/RecoTau/plugins,src_RecoTauTag_RecoTau_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoTauTagRecoTauPlugins,src/RecoTauTag/RecoTau/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_plugins
src_RecoTauTag_RecoTau_plugins_parent := RecoTauTag/RecoTau
src_RecoTauTag_RecoTau_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_plugins,src/RecoTauTag/RecoTau/plugins,PLUGINS))
ifeq ($(strip $(PyRecoTauTagRecoTau)),)
PyRecoTauTagRecoTau := self/src/RecoTauTag/RecoTau/python
PyRecoTauTagRecoTau_files := $(patsubst src/RecoTauTag/RecoTau/python/%,%,$(wildcard $(foreach dir,src/RecoTauTag/RecoTau/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTauTagRecoTau_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/RecoTau/python)
ALL_PRODS += PyRecoTauTagRecoTau
src_RecoTauTag_RecoTau_python_parent := RecoTauTag/RecoTau
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
TestRecoTauTagCombinatoricGenerator_LOC_USE := self RecoTauTag/RecoTau cppunit
TestRecoTauTagCombinatoricGenerator_PACKAGE := self/src/RecoTauTag/RecoTau/test
ALL_PRODS += TestRecoTauTagCombinatoricGenerator
TestRecoTauTagCombinatoricGenerator_INIT_FUNC        += $$(eval $$(call Binary,TestRecoTauTagCombinatoricGenerator,src/RecoTauTag/RecoTau/test,src_RecoTauTag_RecoTau_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TestRecoTauTagCombinatoricGenerator,src/RecoTauTag/RecoTau/test))
endif
ALL_COMMONRULES += src_RecoTauTag_RecoTau_test
src_RecoTauTag_RecoTau_test_parent := RecoTauTag/RecoTau
src_RecoTauTag_RecoTau_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_RecoTau_test,src/RecoTauTag/RecoTau/test,TEST))
ALL_PACKAGES += $(patsubst src/%,%,src/RecoTauTag/TauTagTools)
subdirs_src_RecoTauTag_TauTagTools := src_RecoTauTag_TauTagTools_python src_RecoTauTag_TauTagTools_src src_RecoTauTag_TauTagTools_test src_RecoTauTag_TauTagTools_plugins
ifeq ($(strip $(RecoTauTagTauTagToolsPlugins)),)
RecoTauTagTauTagToolsPlugins_files := $(patsubst src/RecoTauTag/TauTagTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoTauTag/TauTagTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoTauTag/TauTagTools/plugins/$(file). Please fix src/RecoTauTag/TauTagTools/plugins/BuildFile.))))
RecoTauTagTauTagToolsPlugins := self/src/RecoTauTag/TauTagTools/plugins
RecoTauTagTauTagToolsPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoTauTag/TauTagTools/plugins/BuildFile
RecoTauTagTauTagToolsPlugins_LOC_USE := self CondFormats/DataRecord CommonTools/Utils CommonTools/UtilAlgos DataFormats/Candidate TrackingTools/TransientTrack RecoVertex/VertexPrimitives PhysicsTools/IsolationUtils PhysicsTools/MVAComputer PhysicsTools/MVATrainer FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger DataFormats/TauReco CommonTools/CandUtils RecoTauTag/TauTagTools RecoTauTag/RecoTau
RecoTauTagTauTagToolsPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoTauTagTauTagToolsPlugins,RecoTauTagTauTagToolsPlugins,$(SCRAMSTORENAME_LIB)))
RecoTauTagTauTagToolsPlugins_PACKAGE := self/src/RecoTauTag/TauTagTools/plugins
ALL_PRODS += RecoTauTagTauTagToolsPlugins
RecoTauTagTauTagToolsPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoTauTagTauTagToolsPlugins,src/RecoTauTag/TauTagTools/plugins,src_RecoTauTag_TauTagTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RecoTauTagTauTagToolsPlugins,src/RecoTauTag/TauTagTools/plugins))
endif
ALL_COMMONRULES += src_RecoTauTag_TauTagTools_plugins
src_RecoTauTag_TauTagTools_plugins_parent := RecoTauTag/TauTagTools
src_RecoTauTag_TauTagTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_TauTagTools_plugins,src/RecoTauTag/TauTagTools/plugins,PLUGINS))
ifeq ($(strip $(PyRecoTauTagTauTagTools)),)
PyRecoTauTagTauTagTools := self/src/RecoTauTag/TauTagTools/python
PyRecoTauTagTauTagTools_files := $(patsubst src/RecoTauTag/TauTagTools/python/%,%,$(wildcard $(foreach dir,src/RecoTauTag/TauTagTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoTauTagTauTagTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoTauTag/TauTagTools/python)
ALL_PRODS += PyRecoTauTagTauTagTools
src_RecoTauTag_TauTagTools_python_parent := RecoTauTag/TauTagTools
PyRecoTauTagTauTagTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoTauTagTauTagTools,src/RecoTauTag/TauTagTools/python,src_RecoTauTag_TauTagTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoTauTagTauTagTools,src/RecoTauTag/TauTagTools/python))
endif
ALL_COMMONRULES += src_RecoTauTag_TauTagTools_python
src_RecoTauTag_TauTagTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_TauTagTools_python,src/RecoTauTag/TauTagTools/python,PYTHON))
ALL_COMMONRULES += src_RecoTauTag_TauTagTools_test
src_RecoTauTag_TauTagTools_test_parent := RecoTauTag/TauTagTools
src_RecoTauTag_TauTagTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_TauTagTools_test,src/RecoTauTag/TauTagTools/test,TEST))
ifeq ($(strip $(traits_t)),)
traits_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,traits_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
traits_t := self/src/DataFormats/Common/test
traits_t_TEST_RUNNER_CMD :=  traits_t 
traits_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
traits_t_LOC_USE := self boost cppunit DataFormats/Common
traits_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += traits_t
traits_t_INIT_FUNC        += $$(eval $$(call Binary,traits_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,traits_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(DetSetVector_t)),)
DetSetVector_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,DetSetVector_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
DetSetVector_t := self/src/DataFormats/Common/test
DetSetVector_t_TEST_RUNNER_CMD :=  DetSetVector_t 
DetSetVector_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
DetSetVector_t_LOC_USE := self boost cppunit DataFormats/Common
DetSetVector_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += DetSetVector_t
DetSetVector_t_INIT_FUNC        += $$(eval $$(call Binary,DetSetVector_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,DetSetVector_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(RefVector_t)),)
RefVector_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,RefVector_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
RefVector_t := self/src/DataFormats/Common/test
RefVector_t_TEST_RUNNER_CMD :=  RefVector_t 
RefVector_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
RefVector_t_LOC_USE := self boost cppunit DataFormats/Common
RefVector_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += RefVector_t
RefVector_t_INIT_FUNC        += $$(eval $$(call Binary,RefVector_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RefVector_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(DataFrame_t)),)
DataFrame_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,DataFrame_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
DataFrame_t := self/src/DataFormats/Common/test
DataFrame_t_TEST_RUNNER_CMD :=  DataFrame_t 
DataFrame_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
DataFrame_t_LOC_USE := self boost cppunit DataFormats/Common
DataFrame_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += DataFrame_t
DataFrame_t_INIT_FUNC        += $$(eval $$(call Binary,DataFrame_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,DataFrame_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(exDSTV)),)
exDSTV_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,exDSTV.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
exDSTV := self/src/DataFormats/Common/test
exDSTV_TEST_RUNNER_CMD :=  exDSTV 
exDSTV_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
exDSTV_LOC_USE := self boost cppunit DataFormats/Common
exDSTV_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += exDSTV
exDSTV_INIT_FUNC        += $$(eval $$(call Binary,exDSTV,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,exDSTV,src/DataFormats/Common/test))
endif
ifeq ($(strip $(testMultiAssociation)),)
testMultiAssociation_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,testRunner.cpp testMultiAssociation.cc,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
testMultiAssociation := self/src/DataFormats/Common/test
testMultiAssociation_TEST_RUNNER_CMD :=  testMultiAssociation 
testMultiAssociation_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
testMultiAssociation_LOC_USE := self boost cppunit DataFormats/Common
testMultiAssociation_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += testMultiAssociation
testMultiAssociation_INIT_FUNC        += $$(eval $$(call Binary,testMultiAssociation,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testMultiAssociation,src/DataFormats/Common/test))
endif
ifeq ($(strip $(exTrie)),)
exTrie_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,exTrie.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
exTrie := self/src/DataFormats/Common/test
exTrie_TEST_RUNNER_CMD :=  exTrie 
exTrie_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
exTrie_LOC_USE := self boost cppunit DataFormats/Common
exTrie_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += exTrie
exTrie_INIT_FUNC        += $$(eval $$(call Binary,exTrie,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,exTrie,src/DataFormats/Common/test))
endif
ifeq ($(strip $(testBoostRange)),)
testBoostRange_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,testBoostRange.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
testBoostRange := self/src/DataFormats/Common/test
testBoostRange_TEST_RUNNER_CMD :=  testBoostRange 
testBoostRange_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
testBoostRange_LOC_USE := self boost cppunit DataFormats/Common
testBoostRange_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += testBoostRange
testBoostRange_INIT_FUNC        += $$(eval $$(call Binary,testBoostRange,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testBoostRange,src/DataFormats/Common/test))
endif
ifeq ($(strip $(OwnVector_t)),)
OwnVector_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,OwnVector_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
OwnVector_t := self/src/DataFormats/Common/test
OwnVector_t_TEST_RUNNER_CMD :=  OwnVector_t 
OwnVector_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
OwnVector_t_LOC_USE := self boost cppunit DataFormats/Common
OwnVector_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += OwnVector_t
OwnVector_t_INIT_FUNC        += $$(eval $$(call Binary,OwnVector_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,OwnVector_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(Trie_t)),)
Trie_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,Trie_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
Trie_t := self/src/DataFormats/Common/test
Trie_t_TEST_RUNNER_CMD :=  Trie_t 
Trie_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
Trie_t_LOC_USE := self boost cppunit DataFormats/Common
Trie_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += Trie_t
Trie_t_INIT_FUNC        += $$(eval $$(call Binary,Trie_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,Trie_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(testDataFormatsCommon)),)
testDataFormatsCommon_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,testRunner.cpp testOwnVector.cc testOneToOneAssociation.cc testValueMap.cc testOneToManyAssociation.cc testAssociationVector.cc testAssociationNew.cc testValueMapNew.cc testSortedCollection.cc testRangeMap.cc testIDVectorMap.cc ref_t.cppunit.cc DetSetRefVector_t.cppunit.cc DetSetLazyVector_t.cppunit.cc reftobase_t.cppunit.cc reftobasevector_t.cppunit.cc cloningptr_t.cppunit.cc ptr_t.cppunit.cc ptrvector_t.cppunit.cc IntValues_reflex.cc containermask_t.cppunit.cc,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
testDataFormatsCommon := self/src/DataFormats/Common/test
testDataFormatsCommon_TEST_RUNNER_CMD :=  testDataFormatsCommon 
testDataFormatsCommon_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
testDataFormatsCommon_LOC_USE := self boost cppunit DataFormats/Common
testDataFormatsCommon_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += testDataFormatsCommon
testDataFormatsCommon_INIT_FUNC        += $$(eval $$(call Binary,testDataFormatsCommon,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,testDataFormatsCommon,src/DataFormats/Common/test))
endif
ifeq ($(strip $(ReflexTools_t)),)
ReflexTools_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,ReflexTools_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
ReflexTools_t := self/src/DataFormats/Common/test
ReflexTools_t_TEST_RUNNER_CMD :=  ReflexTools_t 
ReflexTools_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
ReflexTools_t_LOC_USE := self boost cppunit DataFormats/Common rootrflx DataFormats/StdDictionaries DataFormats/WrappedStdDictionaries
ReflexTools_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += ReflexTools_t
ReflexTools_t_INIT_FUNC        += $$(eval $$(call Binary,ReflexTools_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,ReflexTools_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(MapOfVectors_t)),)
MapOfVectors_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,MapOfVectors_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
MapOfVectors_t := self/src/DataFormats/Common/test
MapOfVectors_t_TEST_RUNNER_CMD :=  MapOfVectors_t 
MapOfVectors_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
MapOfVectors_t_LOC_USE := self boost cppunit DataFormats/Common
MapOfVectors_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += MapOfVectors_t
MapOfVectors_t_INIT_FUNC        += $$(eval $$(call Binary,MapOfVectors_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,MapOfVectors_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(RefCore_t)),)
RefCore_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,RefCore_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
RefCore_t := self/src/DataFormats/Common/test
RefCore_t_TEST_RUNNER_CMD :=  RefCore_t 
RefCore_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
RefCore_t_LOC_USE := self boost cppunit DataFormats/Common
RefCore_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += RefCore_t
RefCore_t_INIT_FUNC        += $$(eval $$(call Binary,RefCore_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,RefCore_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(Ref_t)),)
Ref_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,Ref_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
Ref_t := self/src/DataFormats/Common/test
Ref_t_TEST_RUNNER_CMD :=  Ref_t 
Ref_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
Ref_t_LOC_USE := self boost cppunit DataFormats/Common
Ref_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += Ref_t
Ref_t_INIT_FUNC        += $$(eval $$(call Binary,Ref_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,Ref_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(Wrapper_t)),)
Wrapper_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,Wrapper_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
Wrapper_t := self/src/DataFormats/Common/test
Wrapper_t_TEST_RUNNER_CMD :=  Wrapper_t 
Wrapper_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
Wrapper_t_LOC_USE := self boost cppunit DataFormats/Common
Wrapper_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += Wrapper_t
Wrapper_t_INIT_FUNC        += $$(eval $$(call Binary,Wrapper_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,Wrapper_t,src/DataFormats/Common/test))
endif
ifeq ($(strip $(DetSetNew_t)),)
DetSetNew_t_files := $(patsubst src/DataFormats/Common/test/%,%,$(foreach file,DetSetNew_t.cpp,$(eval xfile:=$(wildcard src/DataFormats/Common/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/DataFormats/Common/test/$(file). Please fix src/DataFormats/Common/test/BuildFile.))))
DetSetNew_t := self/src/DataFormats/Common/test
DetSetNew_t_TEST_RUNNER_CMD :=  DetSetNew_t 
DetSetNew_t_BuildFile    := $(WORKINGDIR)/cache/bf/src/DataFormats/Common/test/BuildFile
DetSetNew_t_LOC_USE := self boost cppunit DataFormats/Common
DetSetNew_t_PACKAGE := self/src/DataFormats/Common/test
ALL_PRODS += DetSetNew_t
DetSetNew_t_INIT_FUNC        += $$(eval $$(call Binary,DetSetNew_t,src/DataFormats/Common/test,src_DataFormats_Common_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,DetSetNew_t,src/DataFormats/Common/test))
endif
ALL_COMMONRULES += src_DataFormats_Common_test
src_DataFormats_Common_test_parent := DataFormats/Common
src_DataFormats_Common_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DataFormats_Common_test,src/DataFormats/Common/test,TEST))
ALL_SUBSYSTEMS+=$(patsubst src/%,%,src/TauAnalysis)
subdirs_src_TauAnalysis = src_TauAnalysis_CandidateTools
ALL_PACKAGES += $(patsubst src/%,%,src/TauAnalysis/CandidateTools)
subdirs_src_TauAnalysis_CandidateTools := src_TauAnalysis_CandidateTools_plugins src_TauAnalysis_CandidateTools_src src_TauAnalysis_CandidateTools_test src_TauAnalysis_CandidateTools_python src_TauAnalysis_CandidateTools_bin
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
ifeq ($(strip $(PyTauAnalysisCandidateTools)),)
PyTauAnalysisCandidateTools := self/src/TauAnalysis/CandidateTools/python
PyTauAnalysisCandidateTools_files := $(patsubst src/TauAnalysis/CandidateTools/python/%,%,$(wildcard $(foreach dir,src/TauAnalysis/CandidateTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyTauAnalysisCandidateTools_LOC_USE := self
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/TauAnalysis/CandidateTools/python)
ALL_PRODS += PyTauAnalysisCandidateTools
src_TauAnalysis_CandidateTools_python_parent := TauAnalysis/CandidateTools
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
TestSVFit_LOC_USE := self root TauAnalysis/CandidateTools cppunit
TestSVFit_PACKAGE := self/src/TauAnalysis/CandidateTools/test
ALL_PRODS += TestSVFit
TestSVFit_INIT_FUNC        += $$(eval $$(call Binary,TestSVFit,src/TauAnalysis/CandidateTools/test,src_TauAnalysis_CandidateTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
else
$(eval $(call MultipleWarningMsg,TestSVFit,src/TauAnalysis/CandidateTools/test))
endif
ALL_COMMONRULES += src_TauAnalysis_CandidateTools_test
src_TauAnalysis_CandidateTools_test_parent := TauAnalysis/CandidateTools
src_TauAnalysis_CandidateTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_TauAnalysis_CandidateTools_test,src/TauAnalysis/CandidateTools/test,TEST))
