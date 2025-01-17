#' Load phenotype_to_genes.txt
#'
#' This is a function for loading the phenotype to genes text file from HPO.
#' It adds the collumn names and returns as a dataframe
#'
#' @param pheno_to_genes_txt_file path to the phenotype to genes text file from the
#' HPO. It contains phenotypes annotated with associated genes
#' @examples \dontrun{
#' phenotype_to_genes <- load_phenotype2genes("data/phenotype_to_genes.txt")
#' }
#' @returns a dataframe of the phenotype_to_genes.txt file from HPO
#' @export
load_phenotype_to_genes <- function(pheno_to_genes_txt_file = "data/phenotype_to_genes.txt") {
  if (!file.exists(pheno_to_genes_txt_file)) {
    download.file("https://ndownloader.figshare.com/files/27722238",
                  pheno_to_genes_txt_file)}

  phenotype_to_genes = utils::read.delim(pheno_to_genes_txt_file,
                                  skip = 1,
                                  header=FALSE)
  colnames(phenotype_to_genes) = c("ID", "Phenotype", "EntrezID", "Gene",
                                   "Additional", "Source", "LinkID")
  return(phenotype_to_genes)
}



