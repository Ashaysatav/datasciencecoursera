

Pollutantmean<- function(directory, pollutant, id=1:332)
        {
        

                directory=("../ashaysatav/Desktop/workspace/datasciencecoursera/specdata")
                
                Finalmean=numeric()
                for(i in id)
{
        
        filename = paste(directory,"/",formatC(i, width = 3, flag = "0"),".csv",sep="")
        readfile = read.csv(filename, head= TRUE, sep="")
      Finalmean<- c(Finalmean, readfile[[pollutant]])
}
 return (mean(Finalmean, na.rm = TRUE))

}

