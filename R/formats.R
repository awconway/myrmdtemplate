#' Output format for letter
#'
#' Each function is a wrapper for \code{\link[bookdown]{html_document2}} to
#' produce documents in ConwayLetterTemplate style.
#' @rdname template
#' @param \dots Arguments passed to \code{\link[bookdown]{html_document2}}.
#'
#' @return An R Markdown output format object.
#'
#'
#' @export
template <- function(...) {
  
  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "myrmdtemplate")
  }
  
  template <- pkg_resource("rmarkdown/templates/myrmdtemplate/resources/template.html")

   
  
   css = pkg_resource("rmarkdown/templates/myrmdtemplate/resources/styles.css")
   header = pkg_resource("rmarkdown/templates/myrmdtemplate/resources/header.html")
   
   
   
   bookdown::html_document2(...,
                            template = template,
                            css = css,
                            theme = cosmo,
                            toc = TRUE,
                            toc_float = TRUE,
                            number_sections = FALSE
   )
   
}