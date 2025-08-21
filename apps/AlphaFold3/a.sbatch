#!/bin/bash -e

# More Information: https://slurm.schedmd.com/sbatch.html
#SBATCH --job-name=a
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --output=log
#SBATCH --time=00-01:00:00       # Run time (dd-hh:mm:ss)
#SBATCH --export=SBATCH_OUTPUT=${SBATCH_OUTPUT}
##SBATCH --mail-type=END,FAIL     # Mail events: NONE, BEGIN, END, FAIL, ALL
# #SBATCH --account=users        # Uncomment and change if necessary

# [GPU]
# #SBATCH --gres=gpu:1
# #SBATCH --constraint=rtx8000|a100

# [Array]
# #SBATCH --array=1-5              # Use $SLURM_ARRAY_TASK_ID

module purge
#module load [PACKAGE/VERSION] [PACKAGE/VERSION]

env
echo hi
echo 2
echo 3
echo ${SBATCH_OUTPUT}
cat ${SBATCH_OUTPUT}
