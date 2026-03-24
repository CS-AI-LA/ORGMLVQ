# Ordinal Generalized Matrix Learning Vector Quantization (ORGMLVQ) MATLAB Package

**Ordinal Generalized Matrix Learning Vector Quantization (ORGMLVQ)** is a MATLAB extension of the **GMLVQ toolbox** designed for both **ordinal** and **non-ordinal classification tasks**. This package allows researchers and practitioners to leverage prototype-based metric learning with an added ordinal regularization term for improved performance on structured datasets.  

## Key Features
- Implements the **ordinal GMLVQ (ORGMLVQ) extension**.  
- Handles **ordinal and nominal labels** seamlessly.  
- Provides functions for **training, prediction, and evaluation**.  
- Supports **customizable distance metrics and prototype initialization**.  
- Includes **example scripts** for synthetic and UCI datasets.  

## Implementation Note
This package is based on the original **GMLVQ MATLAB toolbox (v3.1)** by Veen et al., 2021. The ORGMLVQ extension is implemented by modifying the training routine (`doBatchStep.m`, lines 46–50) to incorporate an ordinal regularization term. All other components remain consistent with the original GMLVQ toolbox.  

## Installation
Clone the repository and add it to your MATLAB path:

```bash
git clone https://github.com/CS-AI-LA/ORGMLVQ.git
addpath(genpath('ORGMLVQ'))
