#!/bin/bash
#SBATCH --job-name=AC_LiqTruck               # create a short name for your job
#SBATCH --nodes=1                           # node count
#SBATCH --ntasks=1                          # total number of tasks across all nodes
#SBATCH --cpus-per-task=8                   # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=10G                    # memory per cpu-core
#SBATCH --time=48:00:00                     # total run time limit (HH:MM:SS)
#SBATCH --output="test.out"
#SBATCH --error="test.err"
#SBATCH --mail-type=FAIL                    # notifications for job done & fail
#SBATCH --mail-user=cybulsky@mit.edu         # send-to address

source /etc/profile
module load julia/1.7.3
module load gurobi/gurobi-951

export GUROBI_HOME="/home/gridsan/acybulsky/gurobi952/linux64"

julia Run.jl

date
