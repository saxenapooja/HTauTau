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
