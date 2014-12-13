pollutantmean1 <-function(directory, pol, id =001:332) {
  #initialize initial data to empty everytime it starts
  alldata=c()
  for (i in id) {
    location <-file.path(directory, paste(sprintf("%03d", i), ".csv", sep=""))
    data <-read.csv(location, header =TRUE)
    alldata <-c(alldata, data[ ,pol])
  }
  mean(alldata, na.rm=TRUE)
} 
