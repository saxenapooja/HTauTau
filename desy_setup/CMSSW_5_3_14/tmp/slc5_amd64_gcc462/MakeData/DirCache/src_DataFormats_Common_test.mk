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
