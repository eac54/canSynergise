{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww19500\viewh16040\viewkind0
\deftab720
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardeftab720\ri-340\partightenfactor0

\f0\fs22 \cf0 2019-09-13\
\
This readme covers the code in the repository {\field{\*\fldinst{HYPERLINK "https://github.com/eac54"}}{\fldrslt eac54}}/{\field{\*\fldinst{HYPERLINK "https://github.com/eac54/canSynergise"}}{\fldrslt canSynergise}}.\
\
N.B. The datasets {\field{\*\fldinst{HYPERLINK "https://github.com/eac54/canSynergise/blob/master/Overall%20layout/cansynergise_cellines_mini.csv"}}{\fldrslt cansynergise_cellines_mini.csv}} and {\field{\*\fldinst{HYPERLINK "https://github.com/eac54/canSynergise/blob/master/Overall%20layout/cansynergise_cellines_mini.csv"}}{\fldrslt cansynergise_trials_mini.csv}} are example data files for use in building the app - the finishes app should use the real, much larger data files. The real datafiles are found here: \
\
https://drive.google.com/drive/folders/1pgLRvHhWIVlzyCPbHJGzteS4T47gXg8N?usp=sharing\
\
\
#Overall layout\
This directory contains the R code for the app\'92s general layout. \
Please feel free to make things look prettier!\
\
#Filtering cell lines\
This directory contains the R code for a function to filter the cell line dataset. I started working on this separately to the general layout to get the functionality I wanted. This now needs to be added to the overall layout code to show on the cell lines tab.\
\
#Filtering trials\
This directory contains the R code for a function to filter the trials dataset. I started working on this separately to the general layout to get the functionality I wanted. This now needs to be added to the overall layout code to show on the trials tab.\
\
#To do list\
- Combine the search/filtering actions in Filtering trials and Filtering cell lines to the relevant tabs in the overall layout\
- Update the search/filtering code so that the user can export subsets of the data as per the filters the have applied\
- Ensure links in the downloads tab link to the correct files\
- Improve app appearance/usability, e.g. when filtering the trials or cell line datasets, only show the first x characters in each column, but when mouse hovers over the column display the full entry\
\
\
\
If you have any questions please do email me - ec18@sanger.ac.uk
\fs28 \
}