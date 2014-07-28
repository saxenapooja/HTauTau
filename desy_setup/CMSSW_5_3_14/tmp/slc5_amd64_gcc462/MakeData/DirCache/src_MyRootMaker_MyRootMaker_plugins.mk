ALL_COMMONRULES += src_MyRootMaker_MyRootMaker_plugins
src_MyRootMaker_MyRootMaker_plugins_parent := MyRootMaker/MyRootMaker
src_MyRootMaker_MyRootMaker_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyRootMaker_MyRootMaker_plugins,src/MyRootMaker/MyRootMaker/plugins,PLUGINS))
