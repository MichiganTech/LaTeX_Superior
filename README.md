HPC: Superior Proposal Template
================

What is this?
-------------------

A LaTeX (and MS Word) template for writing a short proposal to request 
accounts on Superior, Michigan Tech's shared research computing infrastructure.

Contents
-------------------

  * MichiganTech.cls
  * superior_proposal.tex
  * superior_proposal.bib
  * superior_proposal.pdf
  * superior_proposal.docx
  * Images/MichiganTech.eps
  * Images/image_01.eps
  * Images/image_02.eps
  * Images/image_03.eps
  * Images/graph_01.dat
  * Images/graph_01.eps
  * Images/graph_01.gnu
  * Images/graph_01.jpg
  * Makefile

What should one do?
-------------------

If you are LaTeX user:

  1. There is no need to edit ```MichiganTech.cls``` or the ```Makefile```

  2. Place all graphics in ```Images``` folder

  3. Fill in appropriate details in ```superior_proposal.tex``` and ```superior_proposal.bib```

  4. Run

     A. LaTeX twice on superior_proposal (PDFLaTeX if images are JPG or PDF)

     B. BibTex once on superior_proposal

     C. LaTeX twice on superior_proposal (PDFLaTeX if images are JPG or PDF)

     D. Convert the DVI to Postscript and convert the Postscript to PDF

  5. In lieu of steps in #4, you may just run ```make``` on a linux machine

  6. Rename ```superior_proposal.pdf``` as ```superior_proposal-john.pdf```,
     replacing ```john``` with your own Michigan Tech ISO username, and email
     it to ```hpc-accounts-l@mtu.edu```


If you are a MS Word user:

  1. Fill in appropriate details in ```superior_proposal.docx```

  2. Rename ```superior_proposal.docx``` as ```superior_proposal-john.docx```,
     replacing ```john``` with your own Michigan Tech ISO username, and email
     it to Dr. Warren Perger (```wfp@mtu.edu```)


What if you are working on multiple projects?
-------------------

Only one proposal will suffice. Just be sure to indicate different projects
and a brief description (few sentences) about each one of them.


Got questions? Need help?
-------------------

DO NOT send your questions, comments and/or concerns about this template to 
Information Technology. [Google](http://google.com/) search often provides a 
quick and reliable answer. If all else fails, then contact the author.


Author
-------------------

Dr. Gowtham, PhD         
Director of Research Computing, IT             
Adj. Asst. Professor, Physics/ECE               
Michigan Technological University                 
Email: g@mtu.edu             
http://sgowtham.com
