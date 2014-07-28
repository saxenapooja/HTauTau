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
