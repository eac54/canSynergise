#cansynergise_trials.csv readme - 01/08/2019#

This data file contains a curated dataset of 1667 entries for clinical trials combining two targeted anticancer drugs. Data is presented in 22 columns - descriptions of which are as follows:

Trial source - the name of the resource used to identify the trial. Options are 'clinicaltrials.gov' for trials listed on clinicaltrials.gov or 'literature' for trials found via Pubmed Searches
Drug_1/Drug_2 - the name of the targeted drugs used (curated by authors to correct misspellings, remove chemotherapies and non-cancer drugs, etc)
canSAR_target_1/canSAR_target_2 - canSAR target identifier for the drugs (curated by authors)
InChI_1/InChI_2 - unique identifier for the compounds (curated by authors)
InChIKey_1/InChIKey_2 - unique identifier for the compounds (curated by authors)
SMILES_1/SMILES_2 - unique identifier for the compounds (curated by authors)
Patient population - based on PubMed abstract (trials described in literature) or ‘Title’ or ‘Condition’ field (trials from ClinicalTrials.gov).
Disease - based on PubMed abstract (trials described in literature) or 'Condition' field (trials from ClinicalTrials.gov). Curated by authors to standardise vocabulary
Phase - based on PubMed abstract (trials described in literature) or 'Phase' field (trials from ClinicalTrials.gov). Curated by authors to standardise formatting
PMID - PubMed ID for papers identified from literature
Results - sentence or sentences curated from PubMed abstract summarising the results of the trial
NCT Number - from ClinicalTrials.gov and not curated by authors. Alternatively, may be extracted by authors from PubMed abstract for trials found by literature searches	
Title - from ClinicalTrials.gov. Not curated by authors		
Conditions - from ClinicalTrials.gov. Curated by authors to remove non-cancer conditions or symptom relief (e.g. pain relief)	
URL - from ClinicalTrials.gov. Not curated by authors

For a more detailed description of the data curation, see the canSynergise manuscript.