#!/bin/bash
#SBATCH -c 16
#SBATCH -t 60:00:00

cp /home/atgm2001/project/trimmed/*.fastq $TMPDIR
cp /home/atgm2001/project/spec.txt $TMPDIR
cp -r /home/atgm2001/project/Assembly $TMPDIR

#cd TMPDIR
cd $TMPDIR

#load canu
module load pre2019 biorunner
module load canu
module avail canu

#run canu
canu \
  -s spec.txt \
  -p hela \
  -d Assembly \
  genomeSize=3.5m \
  -nanopore-raw *fastq \
  

#cp files local cd
cp $TMPDIR/hela* /home/atgm2001/project/Assembly
