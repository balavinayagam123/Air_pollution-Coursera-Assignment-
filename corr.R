corr<-function(directory, threshold=0) {
  csv_files <- list.files(directory, full.names = TRUE)
  z <- c()
  for (i in 1:length(csv_files)) {
    
    x <- read.csv(csv_files[i])
    nobs <- sum(complete.cases(x))
    if(nobs>threshold)
    {
      y<-cor(x$sulfate,x$nitrate,use = "complete.obs")
      z<-c(z,y)
    }
    else{NA}
  }
  return(z)
}