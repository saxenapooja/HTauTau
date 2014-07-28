ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_test
src_MyRootMaker_MyRootMaker_test_parent := MyRootMaker/MyRootMaker
src_MyRootMaker_MyRootMaker_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_test,src/MyRootMaker/MyRootMaker/test,TEST))
