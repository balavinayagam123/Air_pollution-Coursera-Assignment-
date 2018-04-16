pollutantmean<-function(directory,pollutant,id=1:332)
{
  directory<-list.files(path = "D:/R Working directory/specdata",full.names = TRUE)
  dat<-data.frame()
  for(i in id)
  {
    dat<-rbind(dat,read.csv(directory[i]))
  }
  mean(dat[,pollutant],na.rm=TRUE)
}