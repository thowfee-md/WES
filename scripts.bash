creating a Conda environment 
                                        -   conda activate exome_seq_env 
Running FastQC 
            - fastqc SRR31851783_1.fastq.gz SRR31851783_2.fastq.gz

Trimming FASTQ file  
                - fastp -i SRR31851783_1.fastq.gz –I SRR31851783_2.fastq.gz –o SRR31851783_1_trimmed.fastq.gz –O SRR31851783_2_trimmed.fastq.gz 

creating index for reference  
                        ➢ bwa index GRCh38.fasta.fna 
                        ⮚ bwa mem-t8 GRCh38.fasta.fna SRR31851783_1_trimmed.fastq.gz  SRR31851783_2_trimmed.fastq.gz   > aligned.Sam 

SAM to BAM: 
        ➢ samtools view -bS SRR31851783_aligned.sam > SRR31851783_aligned.bam

Sorting and Indexing the BAM: 
                        ➢  samtools sort -o SRR31851783_sorted.bam SRR31851783_aligned.bam 
                        ➢ samtools  index  SRR31851783_sorted.bam
Removing Mark Duplicates 
                        ➢ picard markduplicates i =  srr31851783_sorted.bam   o = dedup.bam  m = metrics.txt
Running variant calling 
                    ➢ freebayes -f GRCh38.36.fasta.fna dedup.bam > raw_variants.vcf 
Creating a dict file:  
                    ➢ gatk createsequence Dictionary -R GRCh38.36.fasta.fna 
Filtering variants:  
                    ➢ gatk Variant Filtration -R GRCh38.36.fasta.fna -V raw_variants.vcf --filter -name “LowQual “-- filter -expression “QUAL < 30.0 | | DP < 10 “- O filtered_output.vcf 

 Annotating variants with  ENSEMBL VEP 
                    ➢ https://asia.ensembl.org/info/docs/tools/vep/index.html

Data Analysis and interpretation
# A bioinformatics pipeline for processing Whole Exome Sequencing data — from raw reads to functional insights using variant annotation and enrichment analysis

using STRING (https://string-db.org/) 

FUNCTIONAL ENRICHMENT OF MISSENSE VARIANTS
#Functional enrichment analysis of missense variants using Gene Ontology (GO) and pathway analysis tools 
PATHWAY ENRICHMENT OF MISSENSE VARIANTS
#Functional enrichment analysis of missense variants using pathway analysis tools such as KEGG, Reactome, or WikiPathways
DISEASE ASSOCIATION STUDIES
#Functional enrichment analysis of missense variants using disease association databases such as ClinVar, OMIM, or DisGeNET
TISSUE EXPRESSION STUDIES 
#Functional enrichment analysis of missense variants using tissue expression databases such as GTEx or Human Protein Atlas
 

