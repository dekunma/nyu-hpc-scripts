#!/bin/bash
sbatch <<EOT
#!/bin/bash
#SBATCH --cpus-per-task=2          
#SBATCH --time=1:00:00                 
#SBATCH --mem=4GB
#SBATCH --job-name=echo_$1
#SBATCH --output=$1.out

echo $1
EOT