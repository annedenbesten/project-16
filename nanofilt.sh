#!/bin/bash
#SBATCH -t 60:00
#SBATCH -c 16

#nanofilt
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_0.fastq > trimmed/trimmed_unclassified_0.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_1.fastq > trimmed/trimmed_unclassified_1.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_2.fastq > trimmed/trimmed_unclassified_2.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_3.fastq > trimmed/trimmed_unclassified_3.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_4.fastq > trimmed/trimmed_unclassified_4.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_5.fastq > trimmed/trimmed_unclassified_5.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_6.fastq > trimmed/trimmed_unclassified_6.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_7.fastq > trimmed/trimmed_unclassified_7.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_8.fastq > trimmed/trimmed_unclassified_8.fastq
NanoFilt -q 9 data/demultiplexed/unclassified/fastq_runid_7d3a35c6aa3998d3e9b30b34991c4cba3bf206ce_9.fastq > trimmed/trimmed_unclassified_9.fastq
