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
