corr <- function(directory, threshold=0) {
  #initialize coresult to 0 everytime fn corr runs
  coresult <- numeric(0)
  for (file in list.files(directory)) {
    data <- read.csv(file.path(directory, file), header=TRUE)
    completeCases <- data[complete.cases(data), ]
    if (nrow(completeCases) > threshold) {
      sulfate <- completeCases[, "sulfate"]
      nitrate <- completeCases[, "nitrate"]
      coresult <- c(coresult, cor(sulfate, nitrate))
    }
  }
  coresult
}

