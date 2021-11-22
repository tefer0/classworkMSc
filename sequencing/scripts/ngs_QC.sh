

#count number of sequences.
awk '{s++}END{print s/4}' s_7_1.fastq 

#run fastqc -o output directory
fastqc *.fastq -o ../results/

#trimm with sickle pe paired end, -f forward strand, -r reverse strand, -o output -f, -p output -r, -s output singles, -q quality, -l length
sickle pe -f s_7_1.fastq -r s_7_2.fastq -t sanger -o s_7_1_25-trimmed.fastq -p s_7_2_25-trimmed.fastq -s s_7_12_25-trimmed.fastq -q 20
