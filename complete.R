
complete <-function(directory, id =1:332) {
  result<-data.frame(id=id, nobs=numeric(length(id)))
  for (i in id) {
    location <-file.path(directory, paste(sprintf("%03d", i), ".csv", sep=""))
    data <-read.csv(location, header =TRUE)
    nobs <-nrow(data[complete.cases(data),  ])
    result[result["id"] == i,]["nobs"] <- nobs
  }
  result
} 
