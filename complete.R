Complete_cases <- function(directory,id = 1:332) {
        nobs = numeric() 
        directory= ("..//ashaysatav/Desktop/workspace/datasciencecoursera//specdata")
        for (i in id) 
        { 
                files = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = "")) 
                nobs = c(nobs, sum(complete.cases(files))) 
        } 
        return(data.frame(id,nobs)) 
}