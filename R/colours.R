#' Complete list of palettes
#'
#' Use \code{\link{SF_palette}} to construct palettes of desired length.
#'
#' @export
SF_palettes <- list(
#Star Wars
  ANH = c("#0E0C12", "#B56432", "#50B8ED", "#3A3640", "#DEA021", "#6D6974"),
  RGO = c("#CB9451", "#60463C", "#CBD3D8", "#7D857E", "#080403", "#CA0F2E"),
  TESB = c("#140F10",  "#3174D8", "#B0B7CE", "#36333D", "#7D857E", "#6F4C33"),
  ROTJ = c("#0E0C0F", "#CA0F2E", "#3174D8", "#199B4F", "#625F63", "#40CF6B"),
  TPM = c("#27211A", "#5A689B", "#744753", "#0b9e44", "#D8B38D", "#B68C5F"),
  AOTC = c("#647691", "#A9BB99", "#2A2024", "#93530B", "#FF8E1E", "#3E543F"),
  ROTS = c("#D6C078", "#525252", "#A10000", "#787878", "#D90008", "#0E0C0F"),
  TFA = c("#CCB361", "#A10000", "#51B6ED", "#0b9e44", "#985C18", "#D90008")
)

#' A Space Movie palette generator ....
#'
#' These are a handful of color palettes from the Space Movie franchise.
#'
#' @param n Number of colours required.
#' @param name Name of desired palette. See `index`(\url{http://}) for a full list of package colours.
#' @param type "Continuous" for interpolated palettes, or "discrete".
#' @return A vector of colours.
#' @export
#' @keywords colours
#' @examples
#' SW_palette("ANH")
#' SW_palette("ROTS", 3)
#'
#' If you need more colors than normally found in a palette, you can use a
#' continuous palette to interpolate between existing colors.
#'
#' pal <- SF_palette(name = "AOTC", n = 21, type = "continuous")
#' image(volcano, col = pal)
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

#' @export
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.1, 0.1, 0.1, 0.1))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text(((n + 1) / 2), 1, labels = attr(x, "name"), cex = 1.5, family = "sans")
}

#' heatmap
#'
#' A heatmap example
# "heatmap"

#' @seealso
#' Karthik Ram's `wesanderson`(\url{https://github.com/karthik/wesanderson}) color palettes.