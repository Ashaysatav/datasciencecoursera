corr <- function(directory, threshold = 0) 
{
        id=1:332
        source("submitscript1.R")
        numberofcases=numeric()
        total_corr=vector()
        directory="..//ashaysatav/Desktop/workspace/datasciencecoursera//specdata"
        for (i in id) 
        { 
                files = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = "")) 
                numberofcases = c(numberofcases, sum(complete.cases(files)))
                subdata <- subset(files, numberofcases > threshold)
                subdata <- na.omit(subdata)
                
                if(nrow(subdata) > 1)
                {
                        for (i in 1:nrow(subdata))
                        {
                                files_final = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = "")) 
                                subset <- na.omit(files_final)
                                newrow <- cor(subset$sulfate,subset$nitrate)
                                total_corr <- c(total_corr,newrow)
                        }
                }
                return(total_corr)
        }   
}