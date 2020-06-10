#!/bin/bash
#SBATCH -c 16
#SBATCH -t 60:00

cp /home/atgm2001/project/trimmed/*.fastq $TMPDIR
cp /home/atgm2001/project/spec.txt $TMPDIR
cp -r /home/atgm2001/project/Assembly $TMPDIR
cp -r /home/atgm2001/project/canu-2.0 $TMPDIR

#cd TMPDIR
cd $TMPDIR

#run canu
canu-2.0/*/bin/canu \
  -p hela \
  -d Assembly \
  genomeSize=3000m \
  -nanopore *fastq \
  

#cp files local cd
cp $TMPDIR/hela* /home/atgm2001/project/Assembly
