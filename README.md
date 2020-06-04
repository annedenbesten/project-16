# project-16
Quality control on the personal-identification-pipeline created by Zaaijer et al. using minION sequenced HeLa CaSki cell lines.

Zaaijer et al. build a pipeline personal-identification-pipeline to quickly determine cancer types in cell lines. This pipeline implements the minION sketching method which identifies cell lines based on the present SNP's present in short, raw minION reads. The paper about this study is stated below:

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5705215/

To control this the personal-identification-pipeline, a pipeline was buibld, using minION sequenced HeLa CaSki cell lines as data.
The flow chart of all programs and steps of this pipeline is depicted below.

![](flowchart_end_report.png)

Quality assessing 
Quality assessment of the raw minION reads was performed by minIONQC. This tool uses the tool obtained during minION sequencing and resulting in an output of quality. 

Full documentation on the minIONQC tool can be found using the link below:

https://github.com/roblanf/minion_qc

Reads were trimmed using NanoFilt. Reads were filtered based on a quality of 9, which is also implemented in the personal-identification pipeline. After installing, the tool works with a simple command: NanoFilt -q 9 reads.fastq > trimmed.fastq  

Full documentation on NanoFilt is given in the link below:

https://github.com/wdecoster/nanofilt






