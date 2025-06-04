A bioinformatics pipeline for processing Whole Exome Sequencing data — from raw reads to functional insights using variant annotation and enrichment analysis


WES_Pipeline/
├── env/                      # Conda environment setup
├── data/
│   └── raw_reads/           # SRA or FASTQ files
├── qc/                      # FastQC outputs
├── trimmed/                 # Cleaned reads
├── alignment/               # BAM/SAM files
├── variants/                # VCFs
├── annotation/              # Annotated variants
├── enrichment/              # GO/pathway results
├── notebooks/               # Jupyter analysis notebooks
├── scripts/                 # Bash or Python scripts for each step
├── README.md
└── requirements.txt
