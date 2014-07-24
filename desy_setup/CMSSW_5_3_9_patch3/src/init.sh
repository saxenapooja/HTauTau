#!/usr/sh
ini glite32
ini ROOT534
ini dctools

var_path=$PWD
echo "$var_path"
case $var_path in ( */src* ) 
    ini cmssw 
    export SCRAM_ARCH=slc5_amd64_gcc462 
    eval `scram runtime -sh` ;;
esac


# For GRID JOB SUBMISSION 
# Also require for srmls folders enquires
if [ "$1" = "renew" ]; then
    voms-proxy-init -voms cms:/cms/dcms -valid 96:00
fi
ini crab
ini neurobayes
export LD_LIBRARY_PATH=$NEUROBAYES/lib:$LD_LIBRARY_PATH
export PATH=$NEUROBAYES/external:$PATH
export PHIT_LICENCE_PATH=/usr/users/phit/Licences
export CVSROOT=:gserver:cmssw.cvs.cern.ch:/local/reps/CMSSW #needed for the Checkout packages
export CMSSW_SEARCH_PATH=/afs/cern.ch/cms/sdt/misc/oldConfig/CMSSW:$CMSSW_SEARCH_PATH 