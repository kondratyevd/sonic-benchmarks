#!/bin/bash
#
#SBATCH --account=cms-express
#SBATCH --job-name=sonic-triton-workflow
#SBATCH --export=X509_USER_PROXY="/depot/cms/users/dkondra/x509up_u616617"
#SBATCH --output=/depot/cms/sonic/dkondra/saturation_logs/job_%j.out
#SBATCH --error=/depot/cms/sonic/dkondra/saturation_logs/job_%j.err
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --time=01-00:00:00
#SBATCH --mem-per-cpu=7G

tmp_dir=/tmp/dkondra/sonic-triton/job_$SLURM_JOB_ID
mkdir -p $tmp_dir
cd $tmp_dir

source /cvmfs/cms.cern.ch/cmsset_default.sh

# wget https://raw.githubusercontent.com/fastmachinelearning/sonic-workflows/CMSSW_13_3_X/setup.sh
# chmod +x setup.sh
# ./setup.sh

cp -r /depot/cms/sonic/dkondra/sonic-studies/CMSSW_13_3_0_pre4 .
cd CMSSW_13_3_0_pre4/src/sonic-workflows
cmsenv

cmsRun run.py maxEvents=10000 address="triton-2102.cms.geddes.rcac.purdue.edu" port=8001