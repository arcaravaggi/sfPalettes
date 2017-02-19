# sfPalettes - Sci-fi movie colour palettes


sfPalettes is a library of colour palettes based on popular (and, perhaps, not so popular) science fiction movies. All colour palettes in this package were created using a number of publically available sources, including screenshots and posters. 

For an index of the palettes contained within the package, call the internal `mov` dataframe. For usage instructions, [click here](http://htmlpreview.github.io/?https://github.com/arcaravaggi/sfPalettes/blob/master/vignettes/sfPalettes.html).

sfPalettes was inspired by Kartik Ram's [wesanderson](https://github.com/karthik/wesanderson) package and Chris Hamm's [spaceMovie](https://github.com/butterflyology/spaceMovie) Star Wars-themed package. `sfPalettes` began as contributions to `spaceMovie` and the package still contains my original Star Wars movie palettes. 

## Installation

```r
devtools::install_github("arcaravaggi/sfPalettes")
```

### Example

#### Scatterplot with the Jurassic Park palette

```r
library("ggplot2")
```

```
## Warning: package 'ggplot2' was built under R version 3.3.2
```

```r
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  theme_bw() +
  geom_point(size = 3) +
  scale_color_manual(values = SF_palette("JP")) +
  labs(y = "Sepal width", x = "Sepal length") +
  theme(legend.text = element_text(face = "italic"))
```

<img src="figure/JP1-1.png" style="display: block; margin: auto;" />

### Package palettes

Palettes will be added as-and-when I have time to develop them. If you'd like to contribute a palette, see __Development__, below.


```r
SF_palette("ANH")
```

<img src="figure/ANH-1.png" style="display: block; margin: auto;" />


```r
SF_palette("AOTC")
```

<img src="figure/Attack of the Clones-1.png" style="display: block; margin: auto;" />


```r
SF_palette("ESSM")
```

<img src="figure/ESSM-1.png" style="display: block; margin: auto;" />


```r
SF_palette("HER")
```

<img src="figure/HER-1.png" style="display: block; margin: auto;" />


```r
SF_palette("JP")
```

<img src="figure/JP-1.png" style="display: block; margin: auto;" />


```r
SF_palette("RGO")
```

<img src="figure/RGO-1.png" style="display: block; margin: auto;" />


```r
SF_palette("ROTJ")
```

<img src="figure/ROTJ-1.png" style="display: block; margin: auto;" />


```r
SF_palette("ROTS")
```

<img src="figure/ROTS-1.png" style="display: block; margin: auto;" />


```r
SF_palette("TESB")
```

<img src="figure/TESB-1.png" style="display: block; margin: auto;" />


```r
SF_palette("TFA")
```

<img src="figure/TFA-1.png" style="display: block; margin: auto;" />


```r
SF_palette("TM")
```

<img src="figure/TM-1.png" style="display: block; margin: auto;" />


```r
SF_palette("TPM")
```

<img src="figure/TPM-1.png" style="display: block; margin: auto;" />

## Development

### Contributions

Contributors are welcome to fork the package and suggest additions or improvements.  

### I found a bug

Please report it to the [issue tracker][issues]. Please provide specific details, allowing the error to be reproduced and investigated. Always note the version of R you are using, along with any other relevant software (e.g. RStudio).  

[issues]: https://github.com/arcaravaggi/sfPalettes/issues

## License

This package is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License, version 3, as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but without any warranty; without even the implied warranty of merchantability or fitness for a particular purpose. See the GNU General Public License for more details.

A copy of the GNU General Public License, version 3, is available at https://www.r-project.org/Licenses/GPL-
