#' Output format for letter
#'
#' Each function is a wrapper for \code{\link[rmarkdown]{html_document}} to
#' produce documents in ConwayLetterTemplate style.
#' @rdname bloomberg
#' @param \dots Arguments passed to \code{\link[rmarkdown]{html_document}}.
#'
#' @return An R Markdown output format object.
#'
#'
#' @export
bloomberg <- function(...) {
  
  # locations of resource files in the package
  # pkg_resource = function(...) {
  #   system.file(..., package = "myrmdtemplate")
  # }
  
  # template <- pkg_resource("rmarkdown/templates/myrmdtemplate/resources/template.html")

# template <- "https://raw.githubusercontent.com/rstudio/rmarkdown/master/inst/rmd/h/default.html"
  
   # css = pkg_resource("rmarkdown/templates/myrmdtemplate/resources/styles.css")
   # header = pkg_resource("rmarkdown/templates/myrmdtemplate/resources/header.html")
   
   
   
   rmarkdown::html_document(...,
                            template = "Extras/template.html",
                            css = "Extras/styles.css",
                            theme = "cosmo",
                            toc = TRUE,
                            toc_float = TRUE
                            # ,
                            # includes = rmarkdown::includes(in_header = "header.html")
                            )
   
}
