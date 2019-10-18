# BiocSwirl: Terminal based Bioconductor Courses 

##### Keywords: 
Tutorials, Communication, scRNA-seq, Workflow Design, Command Line

### Package purpose:
There have been many resources available to interdisciplinary researchers for years now in the form of Rbookdown tutorials, in person workshops, and Youtube videos. However, each method of learning has its pros and cons- for blogpost and video type tutorials we have the inability to troubleshoot and raise our hands, for in person workshops we have time limitations. 

Bioinformatics has grown in adoption in many traditional non-computer science fields that lack the time and energy to go truly in depth past copying and pasting code found online. Swirlstats and terminal-based Python courses such as browser-based Codeacademy, have shown to be efficient course structures to teach data science and statistics to complete beginners. `BiocSwirl`, inspired by such courses, aims to make learning bioinformatics concepts hands on through the development of course material that takes you through the common bioinformatics workflows (in this hackathon we will focus on scRNA-seq).

We developed `swirlify()`-style console/terminal based courses for the purposes of teaching bioinformatics workflow steps and good coding practices. The philosophy is to keep the GUI use and application switching as minimal as possible but the content itself very rich and informative. Bioconductor, Radian, bioSyntax (shoutout to hackseq 2016!), are examples of some packages we use to teach workflow steps, file types, and concepts in R.

Please refer [here](biocswirl_package/courses/scrna_seq/docs/lessonplan_template) for the lesson plan.

### Installation:
Please refer to the [installation instructions](biocswirl_dev/devenv_install) for `BiocSwirl` setup details.

### Examples of use (GSE71585 dataset):
- [Low Level Analyses](biocswirl_package/courses/scrna_seq/lessons/low_level/low_level.yaml) - in progress  
a. Importing, raw data preprocessing   
b. Alignment  
c. Quality Control   
d. Normalization (with and without spike-ins)  
e. Dimensionality Reduction  
f. Correcting for batch effects  
- High Level Analyses    
a. Clustering methods, exploratory analyses    
b. Cell cycle phase classification from gene expression data  
c. HVG and marker gene identification  
- Visualizations for high-throughput data

### Further reference:
[Vignette](vignettes/package_intro.Rmd) - in progress
