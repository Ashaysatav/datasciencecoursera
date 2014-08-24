pollutantmean <- function(directory, pollutant, id = 1:332) {
        readingdata = numeric() 
        directory=("../ashaysatav/Desktop/workspace/datasciencecoursera/specdata")
        for (i in id) 
        { 
                filename = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = "")) 
                readfile = c(readingdata, filename[[pollutant]]) 
        } 
        return(mean(readfile, na.rm = TRUE)) 
}
