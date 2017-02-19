#' SF_palette
#'
#' Use \code{\link{SF_palette}} to construct palettes of desired length.
#'
#' @param n Number of colours required
#' @param name Name of desired palette
#' @param type "Continuous" for interpolated palettes, or "discrete"
#' @param label Name of source movie (for use when creating palette swatches)
#' @return A vector of colours.
#' @export
#' @keywords colours
#' @examples
#' SW_palette("ANH")
#' SW_palette("JP", 3)
#'
#' Palettes can be interpolated, increasing the number of available colours. 
#'
#' pal <- SF_palette(name = "HER", n = 21, type = "continuous")
#' image(volcano, col = pal)
#' 
#' @seealso
#' Karthik Ram's [wesanderson](https://github.com/karthik/wesanderson) color palettes
#' Chris Hamm's [spaceMovie](https://github.com/butterflyology/spaceMovie) Star Wars-themed palettes which feature some of my early Star Wars palettes

SF_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)
  
  pal <- SF_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")
  
  if (missing(n)) {
    n <- length(pal)
  }
  
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors is greater than the palette")
  }
  
  out <- switch(type,
                continuous = colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}