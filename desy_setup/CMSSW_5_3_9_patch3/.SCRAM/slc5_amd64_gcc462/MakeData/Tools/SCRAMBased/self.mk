ifeq ($(strip $(Utilities/ReleaseScripts)),)
src_Utilities_ReleaseScripts := self/Utilities/ReleaseScripts
Utilities/ReleaseScripts  := src_Utilities_ReleaseScripts
src_Utilities_ReleaseScripts_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/Utilities/ReleaseScripts/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Utilities_ReleaseScripts_EX_USE := self
ALL_EXTERNAL_PRODS += src_Utilities_ReleaseScripts
endif

ifeq ($(strip $(IORawData/SiPixelInputSources)),)
IORawDataSiPixelInputSources := self/IORawData/SiPixelInputSources
IORawData/SiPixelInputSources := IORawDataSiPixelInputSources
IORawDataSiPixelInputSources_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/IORawData/SiPixelInputSources/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IORawDataSiPixelInputSources_LOC_USE   := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/Sources DataFormats/FEDRawData Utilities/StorageFactory
ALL_EXTERNAL_PRODS += IORawDataSiPixelInputSources
endif
ifeq ($(strip $(SimTracker/TrackHistory)),)
SimTrackerTrackHistory := self/SimTracker/TrackHistory
SimTracker/TrackHistory := SimTrackerTrackHistory
SimTrackerTrackHistory_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimTracker/TrackHistory/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimTrackerTrackHistory_LOC_USE   := self clhep boost root DataFormats/Math DataFormats/VertexReco DataFormats/JetReco SimTracker/VertexAssociation FWCore/Framework FWCore/ParameterSet FWCore/Utilities MagneticField/Records MagneticField/Engine SimDataFormats/TrackingAnalysis SimGeneral/HepPDTRecord SimTracker/Records SimTracker/TrackAssociation SimTracker/TrackerHitAssociation TrackingTools/TransientTrack
SimTrackerTrackHistory_EX_LIB   := SimTrackerTrackHistory
SimTrackerTrackHistory_EX_USE   := $(foreach d,$(SimTrackerTrackHistory_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimTrackerTrackHistory
endif
ifeq ($(strip $(SimCalorimetry/EcalSimProducers)),)
SimCalorimetryEcalSimProducers := self/SimCalorimetry/EcalSimProducers
SimCalorimetry/EcalSimProducers := SimCalorimetryEcalSimProducers
SimCalorimetryEcalSimProducers_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimCalorimetry/EcalSimProducers/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalSimProducers_LOC_USE   := self FWCore/PluginManager FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet SimCalorimetry/EcalSimAlgos SimDataFormats/CrossingFrame SimGeneral/NoiseGenerators CondFormats/DataRecord CondFormats/ESObjects Geometry/EcalAlgo
SimCalorimetryEcalSimProducers_EX_LIB   := SimCalorimetryEcalSimProducers
SimCalorimetryEcalSimProducers_EX_USE   := $(foreach d,$(SimCalorimetryEcalSimProducers_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimCalorimetryEcalSimProducers
endif
ifeq ($(strip $(Alignment/LaserAlignmentSimulation)),)
AlignmentLaserAlignmentSimulation := self/Alignment/LaserAlignmentSimulation
Alignment/LaserAlignmentSimulation := AlignmentLaserAlignmentSimulation
AlignmentLaserAlignmentSimulation_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/Alignment/LaserAlignmentSimulation/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentLaserAlignmentSimulation_LOC_USE   := self FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities SimG4Core/Notification clhep
AlignmentLaserAlignmentSimulation_EX_LIB   := AlignmentLaserAlignmentSimulation
AlignmentLaserAlignmentSimulation_EX_USE   := $(foreach d,$(AlignmentLaserAlignmentSimulation_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += AlignmentLaserAlignmentSimulation
endif
ifeq ($(strip $(Configuration/Skimming)),)
ConfigurationSkimming := self/Configuration/Skimming
Configuration/Skimming := ConfigurationSkimming
ConfigurationSkimming_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/Configuration/Skimming/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ConfigurationSkimming_LOC_USE   := self FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/Common DataFormats/EgammaCandidates DataFormats/MuonReco DataFormats/JetReco DataFormats/Common Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools RecoJets/JetAlgorithms HLTrigger/HLTcore CommonTools/UtilAlgos CommonTools/RecoAlgos
ALL_EXTERNAL_PRODS += ConfigurationSkimming
endif
ifeq ($(strip $(GeneratorInterface/BeamHaloGenerator)),)
GeneratorInterfaceBeamHaloGenerator := self/GeneratorInterface/BeamHaloGenerator
GeneratorInterface/BeamHaloGenerator := GeneratorInterfaceBeamHaloGenerator
GeneratorInterfaceBeamHaloGenerator_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/GeneratorInterface/BeamHaloGenerator/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceBeamHaloGenerator_LOC_USE   := self boost FWCore/Framework FWCore/PluginManager FWCore/ParameterSet SimDataFormats/GeneratorProducts GeneratorInterface/Core clhep root f77compiler
ALL_EXTERNAL_PRODS += GeneratorInterfaceBeamHaloGenerator
endif
ifeq ($(strip $(FastSimulation/Muons)),)
src_FastSimulation_Muons := self/FastSimulation/Muons
FastSimulation/Muons  := src_FastSimulation_Muons
src_FastSimulation_Muons_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/FastSimulation/Muons/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_FastSimulation_Muons_EX_USE := TrackingTools/DetLayers self RecoMuon/GlobalTrackingTools DataFormats/TrackReco FWCore/ServiceRegistry Utilities/General TrackingTools/PatternTools FastSimDataFormats/L1GlobalMuonTrigger FWCore/ParameterSet
ALL_EXTERNAL_PRODS += src_FastSimulation_Muons
endif

ifeq ($(strip $(L1Trigger/CSCTrackFinder)),)
L1TriggerCSCTrackFinder := self/L1Trigger/CSCTrackFinder
L1Trigger/CSCTrackFinder := L1TriggerCSCTrackFinder
L1TriggerCSCTrackFinder_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/L1Trigger/CSCTrackFinder/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerCSCTrackFinder_LOC_USE   := self L1Trigger/CSCCommonTrigger L1Trigger/DTUtilities L1Trigger/DTTrackFinder Geometry/CSCGeometry Geometry/Records DataFormats/MuonDetId DataFormats/CSCDigi DataFormats/L1CSCTrackFinder DataFormats/L1DTTrackFinder DataFormats/L1GlobalMuonTrigger boost
L1TriggerCSCTrackFinder_EX_LIB   := L1TriggerCSCTrackFinder
L1TriggerCSCTrackFinder_EX_USE   := $(foreach d,$(L1TriggerCSCTrackFinder_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += L1TriggerCSCTrackFinder
endif
ifeq ($(strip $(SimCalorimetry/EcalElectronicsEmulation)),)
SimCalorimetryEcalElectronicsEmulation := self/SimCalorimetry/EcalElectronicsEmulation
SimCalorimetry/EcalElectronicsEmulation := SimCalorimetryEcalElectronicsEmulation
SimCalorimetryEcalElectronicsEmulation_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimCalorimetry/EcalElectronicsEmulation/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalElectronicsEmulation_LOC_USE   := self FWCore/Framework FWCore/ParameterSet Geometry/CaloTopology DataFormats/EcalDigi DataFormats/EcalDetId SimDataFormats/CaloHit CondFormats/EcalObjects CondFormats/DataRecord root
ALL_EXTERNAL_PRODS += SimCalorimetryEcalElectronicsEmulation
endif
ifeq ($(strip $(DQMOffline/Muon)),)
DQMOfflineMuon := self/DQMOffline/Muon
DQMOffline/Muon := DQMOfflineMuon
DQMOfflineMuon_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/DQMOffline/Muon/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineMuon_LOC_USE   := self Geometry/CSCGeometry FWCore/Framework DQMServices/Core DQMServices/Components FWCore/PluginManager DataFormats/MuonReco DataFormats/L1GlobalMuonTrigger DataFormats/FEDRawData RecoMuon/TrackingTools TrackingTools/TransientTrack DataFormats/CSCDigi DataFormats/CSCRecHit DataFormats/DTRecHit DataFormats/RPCDigi CondFormats/DTObjects CondFormats/CSCObjects CondFormats/DataRecord EventFilter/CSCRawToDigi CommonTools/TriggerUtils
ALL_EXTERNAL_PRODS += DQMOfflineMuon
endif
ifeq ($(strip $(DQMOffline/Trigger)),)
DQMOfflineTrigger := self/DQMOffline/Trigger
DQMOffline/Trigger := DQMOfflineTrigger
DQMOfflineTrigger_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/DQMOffline/Trigger/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineTrigger_LOC_USE   := self DQMServices/Core FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities DataFormats/RecoCandidate DataFormats/HLTReco DataFormats/MuonReco DataFormats/EgammaReco DataFormats/TrackReco DataFormats/TrajectorySeed DataFormats/BTauReco DataFormats/TauReco DataFormats/METReco DataFormats/JetReco DataFormats/CaloTowers CommonTools/Utils RecoEcal/EgammaCoreTools RecoEgamma/EgammaHLTAlgos RecoEgamma/EgammaIsolationAlgos HLTrigger/HLTcore CondFormats/DataRecord DQM/HLTEvF RecoJets/JetAssociationAlgorithms RecoJets/JetAlgorithms RecoJets/JetProducers JetMETCorrections/Objects root boost
ALL_EXTERNAL_PRODS += DQMOfflineTrigger
endif
ifeq ($(strip $(GeneratorInterface/CosmicMuonGenerator)),)
GeneratorInterfaceCosmicMuonGenerator := self/GeneratorInterface/CosmicMuonGenerator
GeneratorInterface/CosmicMuonGenerator := GeneratorInterfaceCosmicMuonGenerator
GeneratorInterfaceCosmicMuonGenerator_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/GeneratorInterface/CosmicMuonGenerator/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceCosmicMuonGenerator_LOC_USE   := self boost FWCore/Framework SimDataFormats/GeneratorProducts GeneratorInterface/Core clhep root
ALL_EXTERNAL_PRODS += GeneratorInterfaceCosmicMuonGenerator
endif
ifeq ($(strip $(GeneratorInterface/LHEInterface)),)
GeneratorInterfaceLHEInterface := self/GeneratorInterface/LHEInterface
GeneratorInterface/LHEInterface := GeneratorInterfaceLHEInterface
GeneratorInterfaceLHEInterface_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/GeneratorInterface/LHEInterface/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceLHEInterface_LOC_USE   := self FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities SimDataFormats/GeneratorProducts Utilities/StorageFactory hepmc boost sigcpp xerces-c rootmath libhepml fastjet xz
GeneratorInterfaceLHEInterface_EX_LIB   := GeneratorInterfaceLHEInterface
GeneratorInterfaceLHEInterface_EX_USE   := $(foreach d,$(GeneratorInterfaceLHEInterface_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += GeneratorInterfaceLHEInterface
endif
ifeq ($(strip $(FWCore/Sources)),)
FWCoreSources := self/FWCore/Sources
FWCore/Sources := FWCoreSources
FWCoreSources_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/FWCore/Sources/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreSources_LOC_USE   := self DataFormats/Provenance FWCore/Catalog FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Utilities boost
FWCoreSources_EX_LIB   := FWCoreSources
FWCoreSources_EX_USE   := $(foreach d,$(FWCoreSources_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += FWCoreSources
endif
ifeq ($(strip $(CondCore/RunInfoPlugins)),)
CondCoreRunInfoPlugins := self/CondCore/RunInfoPlugins
CondCore/RunInfoPlugins := CondCoreRunInfoPlugins
CondCoreRunInfoPlugins_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/CondCore/RunInfoPlugins/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreRunInfoPlugins_LOC_USE   := self CondFormats/RunInfo CondCore/ESSources CondFormats/DataRecord
ALL_EXTERNAL_PRODS += CondCoreRunInfoPlugins
endif
ifeq ($(strip $(CondCore/Utilities)),)
CondCoreUtilities := self/CondCore/Utilities
CondCore/Utilities := CondCoreUtilities
CondCoreUtilities_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/CondCore/Utilities/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondCoreUtilities_LOC_USE   := self FWCore/Utilities FWCore/PluginManager FWCore/MessageLogger FWCore/Framework boost boost_program_options CondCore/ORA CondCore/DBCommon CondCore/IOVService CondCore/MetaDataService CondCore/TagCollection rootcintex
CondCoreUtilities_EX_LIB   := CondCoreUtilities
CondCoreUtilities_EX_USE   := $(foreach d,$(CondCoreUtilities_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += CondCoreUtilities
endif
ifeq ($(strip $(FWCore/Framework)),)
FWCoreFramework := self/FWCore/Framework
FWCore/Framework := FWCoreFramework
FWCoreFramework_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/FWCore/Framework/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreFramework_LOC_USE   := self DataFormats/Common DataFormats/Provenance FWCore/Common FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/PythonParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/Version boost rootcore rootrflx sigcpp
FWCoreFramework_EX_LIB   := FWCoreFramework
FWCoreFramework_EX_USE   := $(foreach d,$(FWCoreFramework_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += FWCoreFramework
endif
ifeq ($(strip $(SimDataFormats/CrossingFrame)),)
SimDataFormatsCrossingFrame := self/SimDataFormats/CrossingFrame
SimDataFormats/CrossingFrame := SimDataFormatsCrossingFrame
SimDataFormatsCrossingFrame_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimDataFormats/CrossingFrame/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimDataFormatsCrossingFrame_LOC_USE   := self DataFormats/Common DataFormats/HcalDetId DataFormats/Provenance FWCore/MessageLogger FWCore/Utilities SimDataFormats/CaloHit SimDataFormats/EncodedEventId SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex SimDataFormats/GeneratorProducts rootrflx
SimDataFormatsCrossingFrame_EX_LIB   := SimDataFormatsCrossingFrame
SimDataFormatsCrossingFrame_EX_USE   := $(foreach d,$(SimDataFormatsCrossingFrame_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimDataFormatsCrossingFrame
endif
ifeq ($(strip $(IOMC/NtupleConverter)),)
IOMCNtupleConverter := self/IOMC/NtupleConverter
IOMC/NtupleConverter := IOMCNtupleConverter
IOMCNtupleConverter_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/IOMC/NtupleConverter/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOMCNtupleConverter_LOC_USE   := self boost FWCore/Framework FWCore/Sources SimDataFormats/GeneratorProducts hepmc root
ALL_EXTERNAL_PRODS += IOMCNtupleConverter
endif
ifeq ($(strip $(SimCalorimetry/EcalTestBeam)),)
SimCalorimetryEcalTestBeam := self/SimCalorimetry/EcalTestBeam
SimCalorimetry/EcalTestBeam := SimCalorimetryEcalTestBeam
SimCalorimetryEcalTestBeam_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimCalorimetry/EcalTestBeam/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalTestBeam_LOC_USE   := self FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimCalorimetry/EcalSimAlgos SimCalorimetry/EcalTestBeamAlgos SimGeneral/NoiseGenerators SimDataFormats/CrossingFrame SimDataFormats/EcalTestBeam CondFormats/DataRecord TBDataFormats/EcalTBObjects SimCalorimetry/EcalSimProducers
ALL_EXTERNAL_PRODS += SimCalorimetryEcalTestBeam
endif
ifeq ($(strip $(GeneratorInterface/AlpgenInterface)),)
GeneratorInterfaceAlpgenInterface := self/GeneratorInterface/AlpgenInterface
GeneratorInterface/AlpgenInterface := GeneratorInterfaceAlpgenInterface
GeneratorInterfaceAlpgenInterface_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/GeneratorInterface/AlpgenInterface/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceAlpgenInterface_LOC_USE   := self boost root DataFormats/Math SimDataFormats/GeneratorProducts f77compiler
GeneratorInterfaceAlpgenInterface_EX_LIB   := GeneratorInterfaceAlpgenInterface
GeneratorInterfaceAlpgenInterface_EX_USE   := $(foreach d,$(GeneratorInterfaceAlpgenInterface_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += GeneratorInterfaceAlpgenInterface
endif
ifeq ($(strip $(CalibCalorimetry/EcalLaserSorting)),)
CalibCalorimetryEcalLaserSorting := self/CalibCalorimetry/EcalLaserSorting
CalibCalorimetry/EcalLaserSorting := CalibCalorimetryEcalLaserSorting
CalibCalorimetryEcalLaserSorting_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/CalibCalorimetry/EcalLaserSorting/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibCalorimetryEcalLaserSorting_LOC_USE   := self FWCore/Framework IOPool/Streamer DataFormats/FEDRawData
ALL_EXTERNAL_PRODS += CalibCalorimetryEcalLaserSorting
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/FWCore/Version/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_LOC_USE   := self
FWCoreVersion_EX_LIB   := FWCoreVersion
FWCoreVersion_EX_USE   := $(foreach d,$(FWCoreVersion_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += FWCoreVersion
endif
ifeq ($(strip $(L1TriggerConfig/DTTPGConfigProducers)),)
L1TriggerConfigDTTPGConfigProducers := self/L1TriggerConfig/DTTPGConfigProducers
L1TriggerConfig/DTTPGConfigProducers := L1TriggerConfigDTTPGConfigProducers
L1TriggerConfigDTTPGConfigProducers_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/L1TriggerConfig/DTTPGConfigProducers/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerConfigDTTPGConfigProducers_LOC_USE   := self CondCore/DBCommon CondCore/DBOutputService CondCore/IOVService CondCore/MetaDataService CondCore/PopCon CondFormats/DTObjects CondFormats/DataRecord CondTools/DT CoralBase DataFormats/Provenance FWCore/Catalog FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/PluginManager RelationalAccess rootrflx L1TriggerConfig/DTTPGConfig
ALL_EXTERNAL_PRODS += L1TriggerConfigDTTPGConfigProducers
endif
ifeq ($(strip $(IORawData/HcalTBInputService)),)
IORawDataHcalTBInputService := self/IORawData/HcalTBInputService
IORawData/HcalTBInputService := IORawDataHcalTBInputService
IORawDataHcalTBInputService_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/IORawData/HcalTBInputService/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IORawDataHcalTBInputService_LOC_USE   := self FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/Sources DataFormats/Common DataFormats/FEDRawData boost root
ALL_EXTERNAL_PRODS += IORawDataHcalTBInputService
endif
ifeq ($(strip $(Mixing/Base)),)
MixingBase := self/Mixing/Base
Mixing/Base := MixingBase
MixingBase_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/Mixing/Base/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
MixingBase_LOC_USE   := self DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Sources FWCore/Utilities FWCore/Version boost clhep roothistmatrix CondFormats/RunInfo CondFormats/DataRecord
MixingBase_EX_LIB   := MixingBase
MixingBase_EX_USE   := $(foreach d,$(MixingBase_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += MixingBase
endif
ifeq ($(strip $(EventFilter/Utilities)),)
EventFilterUtilities := self/EventFilter/Utilities
EventFilter/Utilities := EventFilterUtilities
EventFilterUtilities_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/EventFilter/Utilities/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
EventFilterUtilities_LOC_USE   := self FWCore/MessageLogger FWCore/ServiceRegistry EventFilter/FEDInterface xdaq curl
EventFilterUtilities_EX_LIB   := EventFilterUtilities
EventFilterUtilities_EX_USE   := $(foreach d,$(EventFilterUtilities_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += EventFilterUtilities
endif
ifeq ($(strip $(FWCore/Modules)),)
FWCoreModules := self/FWCore/Modules
FWCore/Modules := FWCoreModules
FWCoreModules_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/FWCore/Modules/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreModules_LOC_USE   := self DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet boost rootrflx
ALL_EXTERNAL_PRODS += FWCoreModules
endif
ifeq ($(strip $(SimCalorimetry/EcalSimAlgos)),)
SimCalorimetryEcalSimAlgos := self/SimCalorimetry/EcalSimAlgos
SimCalorimetry/EcalSimAlgos := SimCalorimetryEcalSimAlgos
SimCalorimetryEcalSimAlgos_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimCalorimetry/EcalSimAlgos/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalSimAlgos_LOC_USE   := self SimDataFormats/CaloHit DataFormats/EcalDigi DataFormats/EcalDetId SimCalorimetry/CaloSimAlgos SimGeneral/NoiseGenerators CondFormats/EcalObjects CalibCalorimetry/EcalLaserCorrection CalibFormats/CaloObjects clhep roothistmatrix
SimCalorimetryEcalSimAlgos_EX_LIB   := SimCalorimetryEcalSimAlgos
SimCalorimetryEcalSimAlgos_EX_USE   := $(foreach d,$(SimCalorimetryEcalSimAlgos_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimCalorimetryEcalSimAlgos
endif
ifeq ($(strip $(SimMuon/Neutron)),)
SimMuonNeutron := self/SimMuon/Neutron
SimMuon/Neutron := SimMuonNeutron
SimMuonNeutron_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimMuon/Neutron/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimMuonNeutron_LOC_USE   := self SimDataFormats/EncodedEventId FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger clhep rootcore
SimMuonNeutron_EX_LIB   := SimMuonNeutron
SimMuonNeutron_EX_USE   := $(foreach d,$(SimMuonNeutron_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimMuonNeutron
endif
ifeq ($(strip $(L1Trigger/GlobalMuonTrigger)),)
L1TriggerGlobalMuonTrigger := self/L1Trigger/GlobalMuonTrigger
L1Trigger/GlobalMuonTrigger := L1TriggerGlobalMuonTrigger
L1TriggerGlobalMuonTrigger_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/L1Trigger/GlobalMuonTrigger/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
L1TriggerGlobalMuonTrigger_LOC_USE   := self FWCore/Framework FWCore/Sources FWCore/ParameterSet FWCore/PluginManager DataFormats/L1GlobalMuonTrigger DataFormats/L1CaloTrigger CondFormats/DataRecord CondFormats/L1TObjects
ALL_EXTERNAL_PRODS += L1TriggerGlobalMuonTrigger
endif
ifeq ($(strip $(SimGeneral/TrackingAnalysis)),)
SimGeneralTrackingAnalysis := self/SimGeneral/TrackingAnalysis
SimGeneral/TrackingAnalysis := SimGeneralTrackingAnalysis
SimGeneralTrackingAnalysis_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/SimGeneral/TrackingAnalysis/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralTrackingAnalysis_LOC_USE   := self clhep CalibFormats/SiStripObjects CalibTracker/Records CalibTracker/SiPixelESProducers CondFormats/CSCObjects CondFormats/SiPixelObjects DataFormats/DetId DataFormats/SiStripDetId DataFormats/SiPixelDetId FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/TrackingAnalysis SimDataFormats/Vertex SimDataFormats/TrackingHit SimTracker/Common
SimGeneralTrackingAnalysis_EX_LIB   := SimGeneralTrackingAnalysis
SimGeneralTrackingAnalysis_EX_USE   := $(foreach d,$(SimGeneralTrackingAnalysis_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimGeneralTrackingAnalysis
endif
ifeq ($(strip $(CondFormats/RunInfo)),)
CondFormatsRunInfo := self/CondFormats/RunInfo
CondFormats/RunInfo := CondFormatsRunInfo
CondFormatsRunInfo_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/CondFormats/RunInfo/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CondFormatsRunInfo_LOC_USE   := self CondFormats/Common FWCore/Utilities CoralBase rootrflx
CondFormatsRunInfo_EX_LIB   := CondFormatsRunInfo
CondFormatsRunInfo_EX_USE   := $(foreach d,$(CondFormatsRunInfo_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += CondFormatsRunInfo
endif
ifeq ($(strip $(IOMC/ParticleGuns)),)
IOMCParticleGuns := self/IOMC/ParticleGuns
IOMC/ParticleGuns := IOMCParticleGuns
IOMCParticleGuns_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/IOMC/ParticleGuns/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOMCParticleGuns_LOC_USE   := self boost FWCore/Framework SimDataFormats/GeneratorProducts SimGeneral/HepPDTRecord clhep hepmc heppdt
ALL_EXTERNAL_PRODS += IOMCParticleGuns
endif
ifeq ($(strip $(IOMC/Input)),)
IOMCInput := self/IOMC/Input
IOMC/Input := IOMCInput
IOMCInput_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/IOMC/Input/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOMCInput_LOC_USE   := self FWCore/Framework FWCore/Sources FWCore/ParameterSet FWCore/Utilities FWCore/PluginManager SimDataFormats/GeneratorProducts hepmc clhep
ALL_EXTERNAL_PRODS += IOMCInput
endif
ifeq ($(strip $(RecoBTag/PerformanceDB)),)
RecoBTagPerformanceDB := self/RecoBTag/PerformanceDB
RecoBTag/PerformanceDB := RecoBTagPerformanceDB
RecoBTagPerformanceDB_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/RecoBTag/PerformanceDB/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoBTagPerformanceDB_LOC_USE   := self FWCore/PluginManager FWCore/ParameterSet FWCore/Utilities FWCore/MessageLogger
RecoBTagPerformanceDB_EX_LIB   := RecoBTagPerformanceDB
RecoBTagPerformanceDB_EX_USE   := $(foreach d,$(RecoBTagPerformanceDB_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoBTagPerformanceDB
endif
ifeq ($(strip $(Alignment/MuonAlignmentAlgorithms)),)
AlignmentMuonAlignmentAlgorithms := self/Alignment/MuonAlignmentAlgorithms
Alignment/MuonAlignmentAlgorithms := AlignmentMuonAlignmentAlgorithms
AlignmentMuonAlignmentAlgorithms_BuildFile    := $(wildcard $(WORKINGDIR)/cache/bf/src/Alignment/MuonAlignmentAlgorithms/BuildFile) /cvmfs/cms.cern.ch/slc5_amd64_gcc462/cms/cmssw-patch/CMSSW_5_3_9_patch3/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
AlignmentMuonAlignmentAlgorithms_LOC_USE   := self FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities CommonTools/Utils DataFormats/TrackReco Geometry/CSCGeometry Geometry/CommonDetUnit TrackingTools/TrackFitters Alignment/CommonAlignment RecoMuon/TransientTrackingRecHit clhep root rootcore rootminuit
AlignmentMuonAlignmentAlgorithms_EX_LIB   := AlignmentMuonAlignmentAlgorithms
AlignmentMuonAlignmentAlgorithms_EX_USE   := $(foreach d,$(AlignmentMuonAlignmentAlgorithms_LOC_USE),$(if $($(d)_LOC_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += AlignmentMuonAlignmentAlgorithms
endif
