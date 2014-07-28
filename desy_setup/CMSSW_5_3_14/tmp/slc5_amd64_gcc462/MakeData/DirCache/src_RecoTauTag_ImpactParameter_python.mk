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
