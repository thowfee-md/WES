# 🧬 Whole Exome Sequencing (WES) Variant Analysis Pipeline

This repository contains the full workflow and results of my bioinformatics project conducted as part of my MSc in Bioinformatics. The project involves analyzing Whole Exome Sequencing (WES) data to identify and interpret missense variants using standard NGS tools and performing downstream functional enrichment analysis.

---

## 📁 Project Overview

**Title**: _Variant Identification and Functional Enrichment Analysis from Whole Exome Sequencing of PTCL Samples_  
**Duration**: Jan 2025 – Apr 2025  
**Organization**: Bionome Pvt Ltd, Bangalore  
**Supervisors**:  
- Ms. Susha Dinesh (Senior Bioinformatics Analyst)  
- Dr. K.S. Jayachandran (Assistant Professor, Bharathidasan University)

## 🔬 Objectives

- To process and analyze raw WES data from PTCL samples
- To identify high-confidence missense variants
- To annotate variants using multiple databases (ClinVar, dbSNP)
- To extract gene symbols and perform functional enrichment analysis
- To interpret biological significance through GO terms, pathways, and disease associations

---

## 🧰 Tools & Technologies

| Category | Tools Used |
|----------|------------|
| QC & Trimming | FastQC, Fastp |
| Alignment | BWA |
| File Handling | SAMtools, Picard |
| Variant Calling | FreeBayes, GATK |
| Annotation | ANNOVAR, SnpEff |
| Enrichment | STRING, g:Profiler, Reactome, WikiPathways |
| Programming | Python, Bash |
| Platforms | Galaxy Server, CLI |

---

## 🔁 Workflow

```text
1. Data Retrieval (NCBI SRA)
2. Quality Control (FastQC)
3. Trimming & Filtering (Fastp)
4. Alignment to Reference Genome (BWA)
5. Post-processing (SAMtools, Picard)
6. Variant Calling (FreeBayes / GATK)
7. Variant Annotation (ANNOVAR, SnpEff)
8. Filtering: Missense Variants
9. Gene Symbol Extraction
10. Enrichment Analysis:
    - GO: Biological Process, Molecular Function
    - Pathways: Reactome, WikiPathways
    - Disease Association
    - Tissue Expression (TISSUES DB)
11. Visualization & Reporting
