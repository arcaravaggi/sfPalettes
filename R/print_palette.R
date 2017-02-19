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