import FWCore.ParameterSet.Config as cms

from TauAnalysis.CandidateTools.elecMuPairSelection_cfi import *
from TauAnalysis.CandidateTools.elecTauPairSelection_cfi import *
from TauAnalysis.CandidateTools.muTauPairSelection_cfi import *
from TauAnalysis.CandidateTools.diTauPairSelection_cfi import *

from TauAnalysis.CandidateTools.tools.objSelConfigurator import *

#--------------------------------------------------------------------------------
# define selection criteria for e + mu pairs
# (settings made here overwrite values defined in elecMuPairSelector_cfi)
#--------------------------------------------------------------------------------

selectedElecMuPairsAntiOverlapVeto.cut = cms.string('dR12 > 1.57')
selectedElecMuPairsZeroCharge.cut = cms.string('charge = 0')
selectedElecMuPairsAcoplanarity12.cut = cms.string('cos(dPhi12) > -1.01')
selectedElecMuPairsMt1MET.cut = cms.string('mt1MET < 50.')
selectedElecMuPairsMt2MET.cut = cms.string('mt2MET < 50.')
selectedElecMuPairsPzetaDiff.cut = cms.string('(pZeta - 1.5*pZetaVis) > -20.')

patElecMuPairSelConfigurator = objSelConfigurator(
    [ selectedElecMuPairsAntiOverlapVeto,
      selectedElecMuPairsZeroCharge,
      selectedElecMuPairsAcoplanarity12,
      selectedElecMuPairsMt1MET,
      selectedElecMuPairsMt2MET,
      selectedElecMuPairsPzetaDiff ],
    src = "allElecMuPairs",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectElecMuPairs = patElecMuPairSelConfigurator.configure(pyNameSpace = locals())

selectedElecMuPairsAntiOverlapVetoLooseElectronIsolation.cut = selectedElecMuPairsAntiOverlapVeto.cut
selectedElecMuPairsZeroChargeLooseElectronIsolation.cut = selectedElecMuPairsZeroCharge.cut
selectedElecMuPairsAcoplanarity12LooseElectronIsolation.cut = selectedElecMuPairsAcoplanarity12.cut
selectedElecMuPairsMt1METlooseElectronIsolation.cut = selectedElecMuPairsMt1MET.cut
selectedElecMuPairsMt2METlooseElectronIsolation.cut = selectedElecMuPairsMt2MET.cut
selectedElecMuPairsPzetaDiffLooseElectronIsolation.cut = selectedElecMuPairsPzetaDiff.cut

patElecMuPairSelConfiguratorLooseElectronIsolation = objSelConfigurator(
    [ selectedElecMuPairsAntiOverlapVetoLooseElectronIsolation,
      selectedElecMuPairsZeroChargeLooseElectronIsolation,
      selectedElecMuPairsAcoplanarity12LooseElectronIsolation,
      selectedElecMuPairsMt1METlooseElectronIsolation,
      selectedElecMuPairsMt2METlooseElectronIsolation,
      selectedElecMuPairsPzetaDiffLooseElectronIsolation ],
    src = "allElecMuPairsLooseElectronIsolation",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectElecMuPairsLooseElectronIsolation = patElecMuPairSelConfiguratorLooseElectronIsolation.configure(pyNameSpace = locals())

#--------------------------------------------------------------------------------
# define selection criteria for e + tau-jet pairs
# (settings made here overwrite values defined in elecTauPairSelection)
#--------------------------------------------------------------------------------

selectedElecTauPairsAntiOverlapVeto.cut = cms.string('dR12 > 0.5')
selectedElecTauPairsMt1MET.cut = cms.string('mt1MET < 5000.')
selectedElecTauPairsPzetaDiff.cut = cms.string('(pZeta - 1.5*pZetaVis) > -20.')
selectedElecTauPairsZeroCharge.cut = cms.string('charge = 0')
selectedElecTauPairsNonZeroCharge.cut = cms.string('charge != 0')

patElecTauPairSelConfiguratorOS = objSelConfigurator(
    [ selectedElecTauPairsAntiOverlapVeto,
      selectedElecTauPairsMt1MET,
      selectedElecTauPairsPzetaDiff,
      selectedElecTauPairsZeroCharge ],
    src = "allElecTauPairs",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectElecTauPairsOS = patElecTauPairSelConfiguratorOS.configure(pyNameSpace = locals())

patElecTauPairSelConfiguratorSS = objSelConfigurator(
    [ selectedElecTauPairsNonZeroCharge ],
    src = "selectedElecTauPairsPzetaDiffCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectElecTauPairsSS = patElecTauPairSelConfiguratorSS.configure(pyNameSpace = locals())

selectElecTauPairs = cms.Sequence( selectElecTauPairsOS * selectElecTauPairsSS)

selectedElecTauPairsAntiOverlapVetoLooseElectronIsolation.cut = selectedElecTauPairsAntiOverlapVeto.cut
selectedElecTauPairsMt1METlooseElectronIsolation.cut = selectedElecTauPairsMt1MET.cut
selectedElecTauPairsPzetaDiffLooseElectronIsolation.cut = selectedElecTauPairsPzetaDiff.cut
selectedElecTauPairsZeroChargeLooseElectronIsolation.cut = selectedElecTauPairsZeroCharge.cut
selectedElecTauPairsNonZeroChargeLooseElectronIsolation.cut = selectedElecTauPairsNonZeroCharge.cut

patElecTauPairSelConfiguratorLooseElectronIsolationOS = objSelConfigurator(
    [ selectedElecTauPairsAntiOverlapVetoLooseElectronIsolation,
      selectedElecTauPairsMt1METlooseElectronIsolation,
      selectedElecTauPairsPzetaDiffLooseElectronIsolation,
      selectedElecTauPairsZeroChargeLooseElectronIsolation ],
    src = "allElecTauPairsLooseElectronIsolation",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectElecTauPairsLooseElectronIsolationOS = patElecTauPairSelConfiguratorLooseElectronIsolationOS.configure(pyNameSpace = locals())

patElecTauPairSelConfiguratorLooseElectronIsolationSS = objSelConfigurator(
    [ selectedElecTauPairsNonZeroChargeLooseElectronIsolation ],
    src = "selectedElecTauPairsPzetaDiffLooseElectronIsolationCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectElecTauPairsLooseElectronIsolationSS = patElecTauPairSelConfiguratorLooseElectronIsolationSS.configure(pyNameSpace = locals())

selectElecTauPairsLooseElectronIsolation = cms.Sequence( selectElecTauPairsLooseElectronIsolationOS * selectElecTauPairsLooseElectronIsolationSS)

#--------------------------------------------------------------------------------
# define selection criteria for mu + tau-jet pairs
# (settings made here overwrite values defined in muTauPairSelector_cfi)
#--------------------------------------------------------------------------------

selectedMuTauPairsAntiOverlapVeto.cut = cms.string('dR12 > 0.7')
selectedMuTauPairsMt1MET.cut = cms.string('mt1MET < 40.')
selectedMuTauPairsPzetaDiff.cut = cms.string('(pZeta - 1.5*pZetaVis) > -20.')
selectedMuTauPairsZeroCharge.cut = cms.string('charge = 0')
selectedMuTauPairsNonZeroCharge.cut = cms.string('charge != 0')

patMuTauPairSelConfiguratorOS = objSelConfigurator(
    [ selectedMuTauPairsAntiOverlapVeto,
      selectedMuTauPairsMt1MET,
      selectedMuTauPairsPzetaDiff,
      selectedMuTauPairsZeroCharge ],
    src = "allMuTauPairs",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectMuTauPairsOS = patMuTauPairSelConfiguratorOS.configure(pyNameSpace = locals())

patMuTauPairSelConfiguratorSS = objSelConfigurator(
    [ selectedMuTauPairsNonZeroCharge ],
    src = "selectedMuTauPairsPzetaDiffCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectMuTauPairsSS = patMuTauPairSelConfiguratorSS.configure(pyNameSpace = locals())

selectMuTauPairs = cms.Sequence(selectMuTauPairsOS * selectMuTauPairsSS)

selectedMuTauPairsAntiOverlapVetoLooseMuonIsolation.cut = selectedMuTauPairsAntiOverlapVeto.cut
selectedMuTauPairsMt1METlooseMuonIsolation.cut = selectedMuTauPairsMt1MET.cut
selectedMuTauPairsPzetaDiffLooseMuonIsolation.cut = selectedMuTauPairsPzetaDiff.cut
selectedMuTauPairsZeroChargeLooseMuonIsolation.cut = \
  cms.string('leg2.leadPFChargedHadrCand().isNonnull() & (leg1.charge + leg2.leadPFChargedHadrCand.charge) = 0')
selectedMuTauPairsNonZeroChargeLooseMuonIsolation.cut = \
  cms.string('leg2.leadPFChargedHadrCand().isNonnull() & (leg1.charge + leg2.leadPFChargedHadrCand.charge) != 0')

patMuTauPairSelConfiguratorLooseMuonIsolationOS = objSelConfigurator(
    [ selectedMuTauPairsAntiOverlapVetoLooseMuonIsolation,
      selectedMuTauPairsMt1METlooseMuonIsolation,
      selectedMuTauPairsPzetaDiffLooseMuonIsolation,
      selectedMuTauPairsZeroChargeLooseMuonIsolation ],
    src = "allMuTauPairsLooseMuonIsolation",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectMuTauPairsLooseMuonIsolationOS = patMuTauPairSelConfiguratorLooseMuonIsolationOS.configure(pyNameSpace = locals())

patMuTauPairSelConfiguratorLooseMuonIsolationSS = objSelConfigurator(
    [ selectedMuTauPairsNonZeroChargeLooseMuonIsolation ],
    src = "selectedMuTauPairsPzetaDiffLooseMuonIsolationCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectMuTauPairsLooseMuonIsolationSS = patMuTauPairSelConfiguratorLooseMuonIsolationSS.configure(pyNameSpace = locals())

selectMuTauPairsLooseMuonIsolation = cms.Sequence(selectMuTauPairsLooseMuonIsolationOS * selectMuTauPairsLooseMuonIsolationSS)

#--------------------------------------------------------------------------------
# define selection criteria for tau-jet + tau-jet pairs
# (settings made here overwrite values defined in muTauPairSelector_cfi)
#--------------------------------------------------------------------------------

selectedDiTauPairsAntiOverlapVeto.cut = cms.string('dR12 > 0.7')
#selectedDiTauPairsAcoplanarity.cut = cms.string('(dPhi1MET < 2.4) | (dPhi2MET < 2.4)')
selectedDiTauPairsAcoplanarity.cut = cms.string('(dPhi1MET < 3.2) | (dPhi2MET < 3.2)') # CV: cut disabled for now...
selectedDiTauPairsPzetaDiff.cut = cms.string('(pZeta - 1.5*pZetaVis) > -20.')
selectedDiTauPairsZeroCharge.cut = cms.string('charge = 0')
selectedDiTauPairsNonZeroCharge.cut = cms.string('charge != 0')

patDiTauPairSelConfiguratorOS = objSelConfigurator(
    [ selectedDiTauPairsAntiOverlapVeto,
      selectedDiTauPairsAcoplanarity,
      selectedDiTauPairsPzetaDiff,
      selectedDiTauPairsZeroCharge ],
    src = "selectedDiTauPairs2ndTauElectronVetoCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectDiTauPairsOS = patDiTauPairSelConfiguratorOS.configure(pyNameSpace = locals())

patDiTauPairSelConfiguratorSS = objSelConfigurator(
    [ selectedDiTauPairsNonZeroCharge ],
    src = "selectedDiTauPairsPzetaDiffCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectDiTauPairsSS = patDiTauPairSelConfiguratorSS.configure(pyNameSpace = locals())

selectDiTauPairs = cms.Sequence(selectDiTauPairsOS * selectDiTauPairsSS)

# define additional collections of tau-jet + tau-jet candidates
# with loose lead. track Pt, track isolation and ECAL isolation applied on second leg
# (NOTE: to be used for the purpose of factorizing efficiencies
#        of tau id. criteria from other event selection criteria,
#        in order to avoid problems with limited Monte Carlo statistics)

selectedDiTauPairsAntiOverlapVetoLoose2ndTau.cut = cms.string('dR12 > 0.7')
#selectedDiTauPairsAcoplanarityLoose2ndTau.cut = cms.string('(dPhi1MET < 2.4) | (dPhi2MET < 2.4)')
selectedDiTauPairsAcoplanarityLoose2ndTau.cut = cms.string('(dPhi1MET < 3.2) | (dPhi2MET < 3.2)') # CV: cut disabled for now...
selectedDiTauPairsPzetaDiffLoose2ndTau.cut = cms.string('(pZeta - 1.5*pZetaVis) > -20.')
selectedDiTauPairsZeroChargeLoose2ndTau.cut = \
  cms.string('leg2.leadPFChargedHadrCand().isNonnull() & (leg1.charge + leg2.leadPFChargedHadrCand.charge) = 0')
selectedDiTauPairsNonZeroChargeLoose2ndTau.cut = \
  cms.string('leg2.leadPFChargedHadrCand().isNonnull() & (leg1.charge + leg2.leadPFChargedHadrCand.charge) != 0')

patDiTauPairSelConfiguratorOSloose2ndTau = objSelConfigurator(
    [ selectedDiTauPairsAntiOverlapVetoLoose2ndTau,
      selectedDiTauPairsAcoplanarityLoose2ndTau,
      selectedDiTauPairsPzetaDiffLoose2ndTau,
      selectedDiTauPairsZeroChargeLoose2ndTau ],
    src = "selectedDiTauPairs2ndTauElectronVetoLooseCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectDiTauPairsOSloose2ndTau = patDiTauPairSelConfiguratorOSloose2ndTau.configure(pyNameSpace = locals())

patDiTauPairSelConfiguratorSSloose2ndTau = objSelConfigurator(
    [ selectedDiTauPairsNonZeroChargeLoose2ndTau ],
    src = "selectedDiTauPairsPzetaDiffLoose2ndTauCumulative",
    pyModuleName = __name__,
    doSelIndividual = True
)

selectDiTauPairsSSloose2ndTau = patDiTauPairSelConfiguratorSSloose2ndTau.configure(pyNameSpace = locals())

selectDiTauPairsLoose2ndTau = cms.Sequence(selectDiTauPairsOSloose2ndTau * selectDiTauPairsSSloose2ndTau)

selectDiTauPairsAllKinds = cms.Sequence(
    selectElecMuPairs + selectElecMuPairsLooseElectronIsolation
   + selectElecTauPairs + selectElecTauPairsLooseElectronIsolation
   + selectMuTauPairs + selectMuTauPairsLooseMuonIsolation
   + selectDiTauPairs + selectDiTauPairsLoose2ndTau
)
