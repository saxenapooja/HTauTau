ALL_COMMONRULES += src_RecoTauTag_TauTagTools_test
src_RecoTauTag_TauTagTools_test_parent := RecoTauTag/TauTagTools
src_RecoTauTag_TauTagTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoTauTag_TauTagTools_test,src/RecoTauTag/TauTagTools/test,TEST))
