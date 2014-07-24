import FWCore.ParameterSet.Config as cms

from TrackingTools.TransientTrack.TransientTrackBuilder_cfi import TransientTrackBuilderESProducer
import RecoMET.METProducers.METSigParams_cfi as met_config
import TauAnalysis.CandidateTools.nSVfitAlgorithmTauDecayKineMC_cfi as kineMC_config
import TauAnalysis.CandidateTools.nSVfitAlgorithmVisPtCutCorrections_cfi as visPtCutCorrections
from TauAnalysis.CandidateTools.nSVfitAlgorithmTrackQualityCuts_cfi import trackQualityCuts

nSVfitTrackService = cms.Service("NSVfitTrackService")

nSVfitElectronLikelihoodPhaseSpace = cms.PSet(
    pluginName = cms.string("nSVfitTauToElecLikelihoodPhaseSpace"),
    pluginType = cms.string("NSVfitTauToElecLikelihoodPhaseSpace"),
    applySinThetaFactor = cms.bool(False),
    verbosity = cms.int32(0)
)

nSVfitElectronLikelihoodMC_energy_angle_all = kineMC_config.nSVfitTauDecayLikelihoodMC_energy_angle_all.clone(
    pluginName = cms.string("nSVfitTauToElecLikelihoodMC_energy_angle_all"),
    pluginType = cms.string("NSVfitTauToElecLikelihoodMC"),
    verbosity = cms.int32(0)
)

nSVfitElectronLikelihoodMatrixElement = cms.PSet(
    pluginName = cms.string("nSVfitTauToElecLikelihoodMatrixElement"),
    pluginType = cms.string("NSVfitTauToElecLikelihoodMatrixElement"),
    applySinThetaFactor = cms.bool(False),
    verbosity = cms.int32(0)
)

nSVfitTauToElecBuilder = cms.PSet(
    pluginName = cms.string("nSVfitTauToElecBuilder"),
    pluginType = cms.string("NSVfitTauToElecBuilder"),
    trackQualityCuts = trackQualityCuts,
    verbosity = cms.int32(0)
)

nSVfitMuonLikelihoodPhaseSpace = cms.PSet(
    pluginName = cms.string("nSVfitTauToMuLikelihoodPhaseSpace"),
    pluginType = cms.string("NSVfitTauToMuLikelihoodPhaseSpace"),
    applySinThetaFactor = cms.bool(False),
    verbosity = cms.int32(0)
)

nSVfitMuonLikelihoodMC_energy_angle_all = kineMC_config.nSVfitTauDecayLikelihoodMC_energy_angle_all.clone(
    pluginName = cms.string("nSVfitTauToMuLikelihoodMC_energy_angle_all"),
    pluginType = cms.string("NSVfitTauToMuLikelihoodMC"),
    verbosity = cms.int32(0)
)

nSVfitMuonLikelihoodMatrixElement = cms.PSet(
    pluginName = cms.string("nSVfitTauToMuLikelihoodMatrixElement"),
    pluginType = cms.string("NSVfitTauToMuLikelihoodMatrixElement"),
    applySinThetaFactor = cms.bool(False),
    verbosity = cms.int32(0)
)

nSVfitTauToMuBuilder = cms.PSet(
    pluginName = cms.string("nSVfitTauToMuBuilder"),
    pluginType = cms.string("NSVfitTauToMuBuilder"),
    trackQualityCuts = trackQualityCuts,
    verbosity = cms.int32(0)
)

nSVfitTauLikelihoodPhaseSpace = cms.PSet(
    pluginName = cms.string("nSVfitTauToHadLikelihoodPhaseSpace"),
    pluginType = cms.string("NSVfitTauToHadLikelihoodPhaseSpace"),
    applySinThetaFactor = cms.bool(False),
    verbosity = cms.int32(0)
)

nSVfitTauToHadLikelihoodMC_energy_angle_all = kineMC_config.nSVfitTauDecayLikelihoodMC_energy_angle_all.clone(
    pluginName = cms.string("nSVfitTauToHadLikelihoodMC_energy_angle_all"),
    pluginType = cms.string("NSVfitTauToHadLikelihoodMC"),
    verbosity = cms.int32(0)
)

nSVfitTauLikelihoodMatrixElement = cms.PSet(
    pluginName = cms.string("nSVfitTauToHadLikelihoodMatrixElement"),
    pluginType = cms.string("NSVfitTauToHadLikelihoodMatrixElement"),
    VMshapeFileName = cms.FileInPath("TauAnalysis/CandidateTools/data/VMpdf.root"),
    recToGenTauDecayModeMapFileName = cms.FileInPath("TauAnalysis/CandidateTools/data/recToGenTauDecayModeMap.root"),
    applySinThetaFactor = cms.bool(False),
    verbosity = cms.int32(0)
)

nSVfitTauToHadBuilder = cms.PSet(
    pluginName = cms.string("nSVfitTauToHadBuilder"),
    pluginType = cms.string("NSVfitTauToHadBuilder"),
    trackQualityCuts = trackQualityCuts,
    verbosity = cms.int32(0)
)

nSVfitResonanceLikelihoodPhaseSpace = cms.PSet(
    pluginName = cms.string("nSVfitResonanceLikelihoodPhaseSpace"),
    pluginType = cms.string("NSVfitResonanceLikelihoodPhaseSpace"),
    power = cms.double(1.0),
    verbosity = cms.int32(0)
)

nSVfitResonanceLikelihoodLogM = cms.PSet(
    pluginName = cms.string("nSVfitResonanceLikelihoodLogM"),
    pluginType = cms.string("NSVfitResonanceLikelihoodRegularization"),
    nll = cms.string("TMath::Log(mass)"),
    power = cms.double(1.0)
)

nSVfitResonanceLikelihoodLogEff = cms.PSet(
    pluginName = cms.string("nSVfitResonanceLikelihoodEff_power100"),
    pluginType = cms.string("NSVfitResonanceLikelihoodRegularization"),
    nll = cms.string("TMath::Log(TMath::Max(5.00e-3, 4.21e-2*(2.52e-2 + TMath::Erf((x - 4.40e+1)*6.90e-3))))"),
    power = cms.double(1.0)
)

nSVfitResonanceLikelihoodPolarization = cms.PSet(
    pluginName = cms.string("nSVfitResonanceLikelihoodPolarization"),
    pluginType = cms.string("NSVfitResonanceLikelihoodPolarization"),
    LR = cms.PSet(
        formula = cms.string("[0]*([1] + [2] - x)/[2]"), # CV: linearly decrease weight of Z specific polarization
                                                         #     between mZ and mZ + 30 GeV
        xMin = cms.double(91.188),
        xMax = cms.double(121.188),
        parameter = cms.PSet(
            par0 = cms.double(0.576),
            par1 = cms.double(91.188), # mZ / GeV
            par2 = cms.double(30.)     # width of transition region between Z and Higgs specific polarization
        )
    ),
    RL = cms.PSet(
        formula = cms.string("[0]*([1] + [2] - x)/[2]"), # CV: linearly decrease weight of Z specific polarization
                                                         #     between mZ and mZ + 30 GeV
        xMin = cms.double(91.188),
        xMax = cms.double(121.188),
        parameter = cms.PSet(
            par0 = cms.double(0.424),
            par1 = cms.double(91.188), # mZ / GeV
            par2 = cms.double(30.)     # width of transition region between Z and Higgs specific polarization
        )
    ),
    LL = cms.PSet(
        formula = cms.string("[0]*(x - [1])/[2]"), # CV: linearly increase weight of Higgs specific polarization
                                                   #     between mZ and mZ + 30 GeV
        xMin = cms.double(91.188), 
        xMax = cms.double(121.188),
        parameter = cms.PSet(
            par0 = cms.double(0.50),
            par1 = cms.double(91.188), # mZ / GeV
            par2 = cms.double(30.),    # width of transition region between Z and Higgs specific polarization
        )
    ),
    RR = cms.PSet(
        formula = cms.string("[0]*(x - [1])/[2]"), # CV: linearly increase weight of Higgs specific polarization
                                                   #     between mZ and mZ + 30 GeV
        xMin = cms.double(91.188), 
        xMax = cms.double(121.188),
        parameter = cms.PSet(
            par0 = cms.double(0.50),
            par1 = cms.double(91.188), # mZ / GeV
            par2 = cms.double(30.),    # width of transition region between Z and Higgs specific polarization
        )
    ),
    power = cms.double(1.0),
    verbosity = cms.int32(0)
)

nSVfitResonanceLikelihoodPrior = cms.PSet(
    pluginName = cms.string("nSVfitResonanceLikelihoodPrior"),
    pluginType = cms.string("NSVfitResonanceLikelihoodPrior"),
    formula = cms.string("1. + [0]*TMath::Gaus(x, [1], [2])"),
    xMin = cms.double(91.188), # do not apply prior probability correction below mZ
    xMax = cms.double(1.e+3),
    parameter = cms.PSet(
        par0 = cms.double(3.),
        par1 = cms.double(91.188), # mZ / GeV
        par2 = cms.double(2.495)   # GammaZ / GeV
    ),
    power = cms.double(1.0)
)

nSVfitResonanceBuilder = cms.PSet(
    pluginName = cms.string("nSVfitResonanceBuilder"),
    pluginType = cms.string("NSVfitResonanceBuilder"),
    polStates = cms.vstring( # polarization states to be considered when evaluating likelihoods
        ##"LR", "RL", # Z case
        ##"LL", "RR"  # Higgs case
        "undefined"
    )
)

tailProbCorr_Data_2011 = cms.PSet( # use for 2011 Data
    formula = cms.string("[0] + [1]*x + [2]*0.5*(3.*x*x - 1.) + [3]*0.2*(5.*x*x*x -3.*x) + [4]*0.125*(35.*x*x*x*x - 30.*x*x + 3.)"),
    xMin = cms.double(0.),
    xMax = cms.double(5.),
    parameter = cms.PSet(
        par0 = cms.double(9.94505e-01),
        par1 = cms.double(5.85923e-04),
        par2 = cms.double(1.41680e-03),
        par3 = cms.double(-6.20178e-05),
        par4 = cms.double(5.55139e-05)
    )
)

tailProbCorr_MC_2011 = cms.PSet( # use for 2011 Monte Carlo
    formula = cms.string("[0] + [1]*x + [2]*0.5*(3.*x*x - 1.) + [3]*0.2*(5.*x*x*x -3.*x) + [4]*0.125*(35.*x*x*x*x - 30.*x*x + 3.)"),
    xMin = cms.double(0.),
    xMax = cms.double(5.),
    parameter = cms.PSet(
        par0 = cms.double(9.94448e-01),
        par1 = cms.double(-6.74415e-04),
        par2 = cms.double(1.52430e-03),
        par3 = cms.double(1.07572e-04),
        par4 = cms.double(5.27405e-05)
    )
)

nSVfitEventLikelihoodMEt2 = cms.PSet(
    pluginName = cms.string("nSVfitEventLikelihoodMEt2"),
    pluginType = cms.string("NSVfitEventLikelihoodMEt2"),
    srcPFJets = cms.InputTag('ak5PFJets'),
    srcPFCandidates = cms.InputTag('particleFlow'),
    resolution = met_config.METSignificance_params,
    dRoverlapPFJet = cms.double(0.3),
    dRoverlapPFCandidate = cms.double(0.1),
    #tailProbCorr = tailProbCorr_MC_2011,
    sfMEtCov = cms.double(1.0), # CV: use 1.0 for Type-1 corrected PFMET, 0.70 for No-PU MET
    power = cms.double(1.0),
    verbosity = cms.int32(0)
)

response_Data_2012 = "8.73728e-01*0.5*(1.0 - TMath::Erf(-9.22702e-03*TMath::Power(x, 1.29731e+00)))" # response of MVA MET algorithm (non-unity response training) in 2012 data
response_MC_2012 = "9.02974e-01*0.5*(1.0 - TMath::Erf(-1.46769e-02*TMath::Power(x, 1.18952e+00)))" # response of MVA MET algorithm (non-unity response training) in Summer'12 MC

nSVfitEventLikelihoodMEt2a = cms.PSet(
    pluginName = cms.string("nSVfitEventLikelihoodMEt2a"),
    pluginType = cms.string("NSVfitEventLikelihoodMEt2a"),
    response = cms.string(response_MC_2012),
    #tailProbCorr = tailProbCorr_MC_2011,
    power = cms.double(1.0),
    verbosity = cms.int32(0)
)

nSVfitEventLikelihoodMEt3 = cms.PSet(
    pluginName = cms.string("nSVfitEventLikelihoodMEt3"),
    pluginType = cms.string("NSVfitEventLikelihoodMEt3"),
    srcPFJets = cms.InputTag('ak5PFJets'),
    srcPFCandidates = cms.InputTag('particleFlow'),
    resolution = met_config.METSignificance_params,
    dRoverlapPFJet = cms.double(0.3),
    dRoverlapPFCandidate = cms.double(0.1),
    pfJetPtThreshold = cms.double(20.),
    pfCandPtThreshold = cms.double(5.),    
    numToys = cms.uint32(10000000),    
    power = cms.double(1.0),
    monitorMEtUncertainty = cms.bool(False),
    monitorFilePath = cms.string('/data1/veelken/tmp/svFitStudies/'),
    ##monitorFilePath = cms.string('/tmp/veelken/'),
    verbosity = cms.int32(0)
)

nSVfitEventBuilder = cms.PSet(
    pluginName = cms.string("nSVfitEventBuilder"),
    pluginType = cms.string("NSVfitEventBuilder"),
    srcBeamSpot = cms.InputTag('offlineBeamSpot'),
    algorithm = cms.string("AdaptiveVertexFitter"),
    applyBeamSpotConstraint = cms.bool(False)
)

nSVfitConfig_template = cms.PSet(
    event = cms.PSet(
        resonances = cms.PSet(
            A = cms.PSet(
                daughters = cms.PSet(
                    leg1 = cms.PSet(
                        src = cms.InputTag('selectedPatMuonsTrkIPcumulative'),
                        likelihoodFunctions = cms.VPSet(nSVfitMuonLikelihoodMatrixElement),
                        builder = nSVfitTauToMuBuilder
                    ),
                    leg2 = cms.PSet(
                        src = cms.InputTag('selectedPatTausForMuTauElectronVetoCumulative'),
                        likelihoodFunctions = cms.VPSet(nSVfitTauLikelihoodPhaseSpace),
                        builder = nSVfitTauToHadBuilder
                    )
                ),
                likelihoodFunctions = cms.VPSet(),
                builder = nSVfitResonanceBuilder
            )
        ),
        srcMEt = cms.InputTag('patPFMETs'),
        srcPrimaryVertex = cms.InputTag("offlinePrimaryVerticesWithBS"),
        likelihoodFunctions = cms.VPSet(nSVfitEventLikelihoodMEt2),
        builder = nSVfitEventBuilder
    )
)

nSVfitProducerByIntegration = cms.EDProducer("NSVfitProducerByIntegration",
    config = nSVfitConfig_template.clone(),
    algorithm = cms.PSet(
        pluginName = cms.string("nSVfitAlgorithmByIntegration"),
        pluginType = cms.string("NSVfitAlgorithmByIntegration"),
        parameters = cms.PSet(
            mass_A = cms.PSet(
                min = cms.double(5.),
                max = cms.double(2000.),                                         
                stepSizeFactor = cms.double(1.025), # nextM = max(stepSizeFactor*currentM, minStepSize)
                minStepSize = cms.double(0.),      
                replace = cms.string("leg1.x"),
                by = cms.string("(A.p4.mass/mass_A)*(A.p4.mass/mass_A)/leg2.x"),
                deltaFuncDerrivative = cms.string("2.*leg1.x/mass_A")                                                   
            )
        ),
        vegasOptions = cms.PSet(
            numCallsGridOpt = cms.uint32(1000),
            numCallsIntEval = cms.uint32(10000),
            maxChi2 = cms.double(2.),
            maxIntEvalIter = cms.uint32(5),                                          
            precision = cms.double(0.00001)
        ),
        max_or_median = cms.string("max"),                                         
        verbosity = cms.int32(0)
    ),
    dRmin = cms.double(0.3),
    instanceLabel = cms.string("")
)
nSVfitProducerByIntegration.config.event.resonances.A.daughters.leg1.likelihoodFunctions[0].applySinThetaFactor = \
  cms.bool(False)
nSVfitProducerByIntegration.config.event.resonances.A.daughters.leg2.likelihoodFunctions[0].applySinThetaFactor = \
  cms.bool(False)

nSVfitProducerByIntegration2 = cms.EDProducer("NSVfitProducerByIntegration2",
    config = nSVfitConfig_template.clone(),
    algorithm = cms.PSet(
        pluginName = cms.string("nSVfitAlgorithmByIntegration2"),
        pluginType = cms.string("NSVfitAlgorithmByIntegration2"),
        markovChainOptions = cms.PSet(
            mode = cms.string("Metropolis"),
            initMode = cms.string("Gaus"),
            numIterBurnin = cms.uint32(10000),
            numIterSampling = cms.uint32(100000),
            numIterSimAnnealingPhase1 = cms.uint32(2000),
            numIterSimAnnealingPhase2 = cms.uint32(6000),
            T0 = cms.double(15.),
            alpha = cms.double(0.999),
            numChains = cms.uint32(1),
            numBatches = cms.uint32(1),
            L = cms.uint32(1),
            epsilon0 = cms.double(1.e-2),
            nu = cms.double(0.71)
        ),
        max_or_median = cms.string("max"),
        verbosity = cms.int32(0)
    ),
    dRmin = cms.double(0.3),
    instanceLabel = cms.string("")
)
nSVfitProducerByIntegration2.config.event.resonances.A.daughters.leg1.likelihoodFunctions[0].applySinThetaFactor = \
  cms.bool(False)
nSVfitProducerByIntegration2.config.event.resonances.A.daughters.leg2.likelihoodFunctions[0].applySinThetaFactor = \
  cms.bool(False)

nSVfitProducerByLikelihoodMaximization = cms.EDProducer("NSVfitProducer",
    config = nSVfitConfig_template.clone(),
    algorithm = cms.PSet(
        pluginName = cms.string("nSVfitAlgorithmByLikelihoodMaximization"),
        pluginType = cms.string("NSVfitAlgorithmByLikelihoodMaximization"),
        minimizer  = cms.vstring("Minuit2", "Migrad"),
        maxObjFunctionCalls = cms.uint32(5000),
        verbosity = cms.int32(0)
    ),
    dRmin = cms.double(0.3),
    instanceLabel = cms.string("")
)
nSVfitProducerByLikelihoodMaximization.config.event.resonances.A.daughters.leg1.likelihoodFunctions[0].applySinThetaFactor = \
  cms.bool(True)
nSVfitProducerByLikelihoodMaximization.config.event.resonances.A.daughters.leg2.likelihoodFunctions[0].applySinThetaFactor = \
  cms.bool(True)
nSVfitProducerByLikelihoodMaximization.config.event.resonances.A.likelihoodFunctions = cms.VPSet(nSVfitResonanceLikelihoodLogM)
