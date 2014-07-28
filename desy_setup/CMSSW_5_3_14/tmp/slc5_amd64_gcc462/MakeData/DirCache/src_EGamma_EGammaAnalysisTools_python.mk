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
