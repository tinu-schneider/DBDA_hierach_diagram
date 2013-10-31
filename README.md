## Diagram for hierarchical models

An example of an 'Doing Bayesian Data Analysis' ([DBDA](http://www.indiana.edu/~kruschke/DoingBayesianDataAnalysis/))-style diagram for hierarchical models, the classic "[rats](http://www.mrc-bsu.cam.ac.uk/bugs/documentation/exampVol1/node3.html)" example from BUGS, motivated by [John K. Kruschke's post](http://doingbayesiandataanalysis.blogspot.ch/2013/10/diagrams-for-hierarchical-models-we.html).

The Code is written in LaTeX and TikZ and uses 'distrograms' (pictograms of the distributions, a word-creation of Rasmus Bååth) to illustrate the underlying distributions.

![DBDA diagram](https://raw.github.com/tinu-schneider/DBDA_hierach_diagram/master/Example.png)


### Files
* hierarch_diagram.tex: The diagram, it is written in LaTeX and TikZ
* hierarch_diagram_framedBoxes.tex: In this example the nodes are framed to show the possibilities of TikZ ![like in this example](https://raw.github.com/tinu-schneider/DBDA_hierach_diagram/master/framed_node.png)
* plot_PNGs_of_MiniPlots.R: An R-script that draws the 'distrograms' of  different distributions (Normal, Gamma, Beta). They are saved in `MiniPlots/`. 

###  Thanks

John K. Kruschke motivated me to refactor the first prototype. 

Rasmus Bååth wrote a sophisticated R-script to draw 'distrograms' for many different distributions and save them as .png and .svg. His code is on [GitHub](https://github.com/rasmusab/distribution_diagrams). I used his 'Normal' and 'Gamma' with some minor changes. 
He also created templates of the 'distrograms' for  LibreOffice Draw, see his [blog post](http://www.sumsar.net/blog/2013/10/diy-kruschke-style-diagrams/).






