##########################################################################
## R script to extract the TeX codes enclosed within "$$" in R Markdown ##
##########################################################################

file = file.choose() # choose an Rmd file
txt <- readLines(file) # read the contents line by line
data_str <- txt[grepl("\\$\\$", txt)] # find the line containing "$$" 
print(data_str) # Output the TeX codes on the screen (in Console)
write(data_str, file="./equations.txt") # write the TeX code to equations.txt