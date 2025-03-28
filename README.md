# Reproducibility Documentation for ECAI2024
Official codebase for ECAI 2024 paper "Unlocking Efficiency: Adaptive Masking for Gene Transformer Models" [Open-access PDF](https://ebooks.iospress.nl/doi/10.3233/FAIA240864) published at the 27th European Conference on Artificial Intelligence https://www.ecai2024.eu/

## Proposed Models
1. Please clone the codebase of DNABert or GeneMask and follow their pretraining instructions.
2. Use the pretraining codes provided under the "/src/pretraining-adaptive" directory

The pretrained model weights of CM-GEMS and some of the baseline models are available at this [Google Drive link](https://drive.google.com/drive/folders/1tduLypbSiY-hgctDhvNSdK5vvJDGAK9h?usp=sharing).

## Evaluation Datasets

### 1. Genome Understanding Evaluation Benchmark

#### Repository Setup
- Clone the DNABert-2 repository:
 `git clone https://github.com/MAGICS-LAB/DNABERT_2`

#### Evaluation Steps
1. Follow instructions in Section 6 of README.md, specifically subsection 6.1 "Evaluate models on GUE"
2. `sh scripts/run_dnabert1.sh DATA_PATH`
3. Customized scripts are available in the scripts directory
4. The generated results folder for all variants is provided

### 2. Few-shot Evaluation Dataset
#### Dataset Sources
Most datasets from the GeneMask repository:
https://github.com/roysoumya/GeneMask/tree/main/Data-B_fewshot-task-datasets

#### Silencer Dataset Construction
Prerequisites: Download FASTA file:
http://health.tsinghua.edu.cn/SilencerDB/download/Method/High_throughput_Homo_sapiens.fa

Steps:

1. Run Jupyter notebook: scripts/create_silencer_data_from_fasta_file.ipynb
2. Generates training and test splits
3. Create 10 sets of few-shot training sets
4. Performed for ten different runs

Evaluation data located in /data/silencer/ directory

If you use this codebase or the paper findings, please cite our work:

```
@incollection{roy2024unlocking,
  title={Unlocking Efficiency: Adaptive Masking for Gene Transformer Models},
  author={Roy, Soumyadeep and Sural, Shamik and Ganguly, Niloy},
  booktitle={ECAI 2024},
  pages={3195--3202},
  year={2024},
  publisher={IOS Press},
  doi={10.3233/FAIA240864}
}
```
