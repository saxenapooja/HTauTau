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
