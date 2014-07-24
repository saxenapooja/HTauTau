echo 'INFO: Setting identity'
USER=$(whoami)
kinit $USER@CERN.CH
echo 'INFO: Setting Grid env and proxy'
source /afs/cern.ch/project/gd/LCG-share/3.2.11-1/etc/profile.d/grid-env.sh
voms-proxy-init -voms cms
{
    echo 'INFO: Setting agent environment'
    source /data/srv/wmagent/current/apps/wmagent/etc/profile.d/init.sh
} || {
    echo 'ERROR: This machine does not have WMAgent installed. Not sourcing Agent environment'
}
{
    echo 'INFO: Updating repository'
    git pull
} || {
    echo 'ERROR: This machine does not have git installed. Not updating WmAgentScripts repository'
}

git config --global user.name  "Pooja Saxena"
git config --global user.email pooja.saxena@cern.ch
git config --global core.editor "emacs -nw"