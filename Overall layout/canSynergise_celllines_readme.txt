#cansynergise_celllines.csv readme - 01/08/2019#

This data file contains a curated dataset of 316,910 entries for combinations of two targeted anticancer drugs in cell lines. Data is presented in 22 columns - descriptions of which are as follows:


Drug_1/Drug_2 - the name of the targeted drugs used (curated by authors to correct misspellings, remove chemotherapies and non-cancer drugs, etc)
canSAR_target_1/canSAR_target_2 - canSAR target identifier for the drugs (curated by authors)
InChI_1/InChI_2 - unique identifier for the compounds (curated by authors)
InChIKey_1/InChIKey_2 - unique identifier for the compounds (curated by authors)
SMILES_1/SMILES_2 - unique identifier for the compounds (curated by authors)
Dose_1/Dose_2 - numerical value for dose of drug used as described in literature (curated by authors)
Dose_1_units/Dose_2_units - unit for dose of drug used as described in literature (curated by authors). Note that ‘u’ has been used to denote the Greek letter mu, for example in abbreviating ‘micromolar’ to ‘uM’. This column includes doses defined relative to properties such as IC50 (IC75/IC90 etc), doses relative to effective doses, e.g. ED25, ED50, ED75 etc, and doses relative to fraction of cells effected (0.5 Fe, etc).  
Cell line - cell line name from paper, curated by authors to standardise formatting
Disease - curated by authors based on canSAR’s classification of cell lines
Interaction - curated by authors to either ‘synergistic’, ‘non-synergistic’, ‘additive’ or ‘antagonistic’. For further detail on definitions, see main manuscript
PMID - PubMed ID for papers identified from literature
Assessment technique - technique used in paper to assess the interaction of the drugs
Assessment value - numerical value for the assessment technique

For a more detailed description of the data curation, see the canSynergise manuscript.