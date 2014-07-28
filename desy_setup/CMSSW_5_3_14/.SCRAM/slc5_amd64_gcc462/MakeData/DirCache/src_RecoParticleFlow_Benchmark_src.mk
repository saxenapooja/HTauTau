ifeq ($(strip $(RecoParticleFlow/Benchmark)),)
ALL_COMMONRULES += src_RecoParticleFlow_Benchmark_src
src_RecoParticleFlow_Benchmark_src_parent := RecoParticleFlow/Benchmark
src_RecoParticleFlow_Benchmark_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_Benchmark_src,src/RecoParticleFlow/Benchmark/src,LIBRARY))
RecoParticleFlowBenchmark := self/RecoParticleFlow/Benchmark
RecoParticleFlow/Benchmark := RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_files := $(patsubst src/RecoParticleFlow/Benchmark/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/Benchmark/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowBenchmark_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/Benchmark/BuildFile
RecoParticleFlowBenchmark_LOC_USE := self DQMServices/Core DataFormats/Candidate DataFormats/Common DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/TauReco DataFormats/Math FWCore/Utilities SimDataFormats/GeneratorProducts
RecoParticleFlowBenchmark_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowBenchmarkCapabilities,RecoParticleFlowBenchmark,$(SCRAMSTORENAME_LIB)))
RecoParticleFlowBenchmark_PRE_INIT_FUNC += $$(eval $$(call LCGDict,RecoParticleFlowBenchmark,0,src/RecoParticleFlow/Benchmark/src/classes.h,src/RecoParticleFlow/Benchmark/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) --fail_on_warnings,Capabilities))
RecoParticleFlowBenchmark_EX_LIB   := RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_EX_USE   := $(foreach d,$(RecoParticleFlowBenchmark_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowBenchmark_PACKAGE := self/src/RecoParticleFlow/Benchmark/src
ALL_PRODS += RecoParticleFlowBenchmark
RecoParticleFlowBenchmark_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowBenchmark,src/RecoParticleFlow/Benchmark/src,src_RecoParticleFlow_Benchmark_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
