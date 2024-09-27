# Analyzing the Impact of Environmental Factors on Aquatic Biodiversity in Toronto

## Overview

This GitHub Repository contains all files used to generate the paper *Analyzing the Impact of Environmental Factors on Aquatic Biodiversity in Toronto*. The report analyzes the Toronto Beaches Observations dataset, which is available to the public from Open Data Toronto. Its results shows the higher wind speed, higher wave action, and higher turbidity of water, will have negative impacts the waterfowl population. They have the negative relationships.


## File Structure

The repo is structured as:

-   `data/raw_data` includes the raw data used in this analysis.
-   `data/analysis_data` includes the cleaned data used in this analysis.
-   `other/literature` includes copies of references used in the analysis.
-   `other/sketches` includes sketches of the dataset and graphs used in this paper.
-   `other/llm` includes the entire chat history with ChatGPT-4o.
-   `paper` includes a PDF version of the final paper, the Quarto file used to create the PDF, and a file containing the references for the paper.
-   `scripts` includes R scripts for data simulation, downloading, cleaning, and testing.

## Statement on LLM usage

Some aspects of this project are generated with help from ChatGPT-4o. For example, codes that for making boxplot and scatter plot (but I don't use scatter plot in the final submission) are provided by ChatGPT-4o. And ChatGPT-4o also provides relationships of variables in plots that used in my paper, which gives me some inspirations about summaries and title of each plot. Besides, ChatGPT-4o also shows me some examples of references in BibTeX format. Also, ChatPGT-4o gives me some inspiration of my paper's title, introduction and the abstract, ChatGPT-4o also modifies the introduction part. Also, we I doing the simulations, ChatGPT-4o also give me some inspirations by providing me some simulation methods codes. The entire chat history is available in `other/llm/usage.txt`.