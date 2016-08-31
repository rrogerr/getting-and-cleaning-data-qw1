# con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
# 
# htmlCode <- readLines(con)
# htmlCode
# 
# sapply(htmlCode[c(10, 20, 30, 100)], nchar)
# close(con)

A <- read.fwf("/home/rogelio/Desktop/datasciencecoursera/fixed_width.for", 
              widths = c(15, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4), skip = 4)
str(A)
length(names(A))