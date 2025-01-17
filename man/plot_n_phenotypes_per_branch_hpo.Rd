% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_n_phenotypes_per_hpo_branch.R
\name{plot_n_phenotypes_per_branch_hpo}
\alias{plot_n_phenotypes_per_branch_hpo}
\title{Plot n phenotypes per brach - Highlight selected}
\usage{
plot_n_phenotypes_per_branch_hpo(
  phenotype_to_genes,
  hpo,
  highlighted_branches = c("Abnormality of the nervous system",
    "Abnormality of the cardiovascular system", "Abnormality of the immune system"),
  background_branches = hpo$children["HP:0000118"][[1]],
  wes_anderson_palette = "Moonrise3"
)
}
\arguments{
\item{phenotype_to_genes}{The phenotype_to_genes file from HPO giving phenotype gene lists <data.frame>}

\item{hpo}{The HPO data object from ontologyIndex package.}

\item{highlighted_branches}{Names of branches you want to highlight <vector<string>>}

\item{background_branches}{HPO Ids of all branches to be shown (including highlighted) <vector<string>>}

\item{wes_anderson_palette}{Name of desired color palette, see options above <string>}
}
\description{
This plots the number of phenotypes per HPO branch and colours selected
branches to highlight them. This is not using any EWCE results, it is simply
using the raw HPO data to get an overview of how many phenotypes there are.
}
\details{
Uses wesanderson color palette choose from \verb{BottleRocket1, BottleRocket2,}
\verb{Rushmore1, Royal1, Royal2, Zissou1, Darjeeling1, Darjeeling2, Chevalier1,}
\verb{FantasticFox1 , Moonrise1, Moonrise2, Moonrise3, Cavalcanti1, GrandBudapest1,}
\verb{GrandBudapest2, IsleofDogs1, IsleofDogs2}

Default value for the background_branches argument is the child terms of
phenotypic abnormality. Essentially this gives the main branches of the HPO.

Note that the highlighted branches must be also present in the background
branches.
}
\examples{
\dontrun{
background_branches <- hpo$children[
  hpo$id[match("Abnormality of the nervous system", hpo$name)]][[1]]
# Highlighting "Abnormality of ganglion" branch in the plot
highlighted_branches <- c("Abnormality of nervous system physiology")
# create the plot
plot_n_phenotypes_per_branch_hpo(highlighted_branches=highlighted_branches,
                                 background_branches=background_branches,
                                 wes_anderson_palette = "Moonrise3",
                                 phenotype_to_genes = phenotype_to_genes)
}
}
