#!/usr/sh

ini glite32
ini ROOT534

## set dctools settings for dCache
ini dctools

var_path=$PWD
echo "$var_path"
case $var_path in ( */src* ) 
    module use -a /afs/desy.de/group/cms/modulefiles/
    module load cmssw  
    ini glite
    module load crab
    eval `scram runtime -sh` ;
    cmsenv
esac

# For GRID JOB SUBMISSION, also require for srmls folders enquires
if [ "$1" = "renew" ]; then
    ini glite
    voms-proxy-init --voms cms:/cms/dcms
fi


## using CRAB
ini glite
module load crab

#ini neurobayes
#export LD_LIBRARY_PATH=$NEUROBAYES/lib:$LD_LIBRARY_PATH
#export PATH=$NEUROBAYES/external:$PATH
#export PHIT_LICENCE_PATH=/usr/users/phit/Licences
#export CVSROOT=:gserver:cmssw.cvs.cern.ch:/local/reps/CMSSW     # needed for the checkout packages
#export CMSSW_SEARCH_PATH=/afs/cern.ch/cms/sdt/misc/oldConfig/CMSSW:$CMSSW_SEARCH_PATH 


## help-Twiki
# https://twiki.cern.ch/twiki/bin/viewauth/CMS/HamburgWikiComputingNAF