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

## References
- Abdi, L., Prete, A., Arlt, W., & Biehl, M. (2026). *Leveraging ordinal generalized matrix learning vector quantization for improved classification*. Neural Computing and Applications, 38(6), 174.  
- Veen, R.J., Westerman, F., & Biehl, M. (2021). *A no-nonsense beginner's tool for GMLVQ*. [Link](https://www.cs.rug.nl/~biehl/gmlvq.html)

## Authors
- **Lida Abdi** – [l.abdi@imperial.ac.uk](mailto:l.abdi@imperial.ac.uk) – Imperial College London, UK  
- **Alessandro Prete** – [a.prete@bham.ac.uk](mailto:a.prete@bham.ac.uk) – University of Birmingham, UK  
- **Wiebke Arlt** – [w.arlt@lms.mrc.ac.uk](mailto:w.arlt@lms.mrc.ac.uk) – Imperial College London, UK  
- **Michael Biehl** – [m.biehl@rug.nl](mailto:m.biehl@rug.nl) – University of Groningen, Netherlands


## Installation
Clone the repository and add it to your MATLAB path:

```bash
git clone https://github.com/CS-AI-LA/ORGMLVQ.git
addpath(genpath('ORGMLVQ'))
