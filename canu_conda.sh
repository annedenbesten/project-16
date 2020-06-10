#!/bin/bash
#SBATCH -c 16
#SBATCH -t 60:00:00

cp /home/atgm2001/project/trimmed/*.fastq $TMPDIR
cp /home/atgm2001/project/spec.txt $TMPDIR
cp -r /home/atgm2001/project/Assembly $TMPDIR

#cd TMPDIR
cd $TMPDIR

#run canu
canu \
  -useGrid=true \
  -p hela \
  -d Assembly \
  genomeSize=3.5m \
  -nanopore *fastq \
  

#cp files local cd
cp $TMPDIR/hela* /home/atgm2001/project/Assembly
