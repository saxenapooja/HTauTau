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
