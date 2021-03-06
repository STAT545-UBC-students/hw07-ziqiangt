context("wirte and read")

# 1
test_that("Test write and read.", {
  df <- data.frame(
  animals = factor(c(1,0,1,0,0,0), levels = c(0, 1),
                  labels = c("dog", "cat"))
  )

  x_write(df, "./dog_cat.csv", "./dog_cat.txt")
  read_return <- x_read("./dog_cat.csv", "./dog_cat.txt")

  expect_equal(levels(read_return$animals), levels(df$animals))
})

# 2
test_that("Test write and read.", {
  df <- data.frame(
    kids = factor(c(1,0,1,0,1,1), levels = c(0, 1),
                  labels = c("boys", "girls"))
  )

  x_write(df, "./boy_girl.csv", "./boy_girl.txt")
  read_return <- x_read("./boy_girl.csv", "./boy_girl.txt")

  expect_equal(levels(read_return$kids), levels(df$kids))
})

# 3
test_that("Error flag.", {
  df <- is.character(c("a", "b", "c","d"))
  expect_error(x_write(df, "./error.csv", ".error.txt"))
})
