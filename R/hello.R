# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}


#https://www.s-ings.com/scratchpad/oklch-smooth/

# https://github.com/jrnold/ggthemes/blob/main/R/ptol.R

tibble(
  `A` = c("#fce9ec","#ffd2da","#ffb7c5","#ff93ab","#fc6e91","#e74b77","#be2f5c","#911541","#5a0023"),
  `B` = c("#fde9e7","#fed4d0","#ffb9b4","#ff9793","#ff6c6f","#ed4752","#c7263a","#970823","#5c0010"),
  `C` = c("#feeae3","#ffd4c4","#ffbba1","#ff9b76","#fc784a","#e45729","#be3c0f","#8e2500","#551400"),
  `D` = c("#ffecdb","#ffdcb9","#ffc587","#ffaa4a","#fa9016","#e17900","#b66000","#7d4200","#472500"),
  `E` = c("#feedc6","#ffe197","#ffd158","#fdc215","#edaf00","#cb9300","#9e7100","#6d4d00","#3d2a00"),
  `F` = c("#eef2d4","#e3ed9f","#d4e360","#c1d126","#aab900","#8e9b00","#6f7900","#4f5600","#2d3100"),
  `G` = c("#e1f5d8","#caf1b9","#a7e788","#87d65d","#6dbe3d","#57a126","#418014","#2d5c0a","#163700"),
  `H` = c("#e0f5e5","#c5eecf","#96e4ad","#5ed78a","#2ec06d","#1ca25a","#148046","#105d32","#07371c"),
  `I` = c("#d9f6ed","#b7eede","#78e5c9","#33d6b3","#00bc9a","#169e81","#0b7e66","#065b49","#00372b"),
  `J` = c("#d7f5f6","#b0eef0","#70e3e8","#33d1d8","#1db8bf","#0f9aa1","#0a7a80","#05595e","#003538"),
  `K` = c("#daf4ff","#b9eafe","#84dcfe","#4dcbf6","#09b5e3","#069ac2","#077a9b","#065871","#003344"),
  `L` = c("#e3f1fe","#c3e3ff","#9fd4ff","#6fc1ff","#3aadfc","#0391e6","#0073c1","#005391","#002f56"),
  `M` = c("#e8eeff","#d7e1fe","#bdcefe","#a0b8ff","#7f9dff","#6381f8","#4a62d4","#32449c","#1e2959"),
  `N` = c("#f1ebff","#e6dbff","#d7c5fe","#c6a9ff","#b48aff","#9c6bed","#7f50ca","#5d3996","#361c5c"),
  `O` = c("#fce7fc","#fbd1fb","#f9b1fb","#f190f5","#e171e7","#c458cb","#a13da7","#79237f","#4c0452"),
  `P` = c("#fee8f2","#fcd3e6","#ffb4d9","#ff8ac8","#f668b6","#dc4d9e","#b82f7f","#8c145d","#580037"),
  `Z` = c("#eaf0f5","#d8e1e9","#c1cdd8","#a9b8c6","#8fa1b2","#74889b","#5b6c7c","#414e5a","#262f37")
) %>%
  mutate(lightness = seq(10, 90, 10), .before = A) %>%
  pivot_longer(cols = -lightness, names_to = "hue", values_to = "value") %>%
  relocate(hue, .before = lightness) %>%
  print()


# Test the colors
show_olkch() # shows the full color spectrum, with hues, lightnesses, and hex
show_olkch(return = "hex") # returns the hex code. return = "plot" is the default
highlight_olkch(hue = "A", lightnesses = c(50, 70, 90)) # highlights these somehow as a subset of the above plot. Syntax matches below.
highlight_olkch(hue = "A", lightnesses = c(50, 70, 90), return = "hex") # same as above
test_olkch(hue = "A", lightnesses = c(50, 70, 90)) # a series of simple plots showing these colors

# Customize the usage as arguments, allow for vertical or horizontal selection.
# hue and hues are synonymous. hightness and lightnesses are synonymous.
scale_color_oklch(hue = "A", lightnesses = c(50, 70, 90))
scale_color_oklch(hues = c("A", "C", "E"), lightness = 50)
# by default, it'll select all combinations. But here's a way to pick out individuals.
scale_color_oklch(selection = c("A50", "B70", "C90"))
