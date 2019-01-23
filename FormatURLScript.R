PageURL <- read.csv('PageURL.csv', header  = TRUE, row.names = FALSE )

head(PageURL)

library(reshape2)

Long <- melt(PageURL, id.vars=c("PageURL", "Type"))

write.csv(Long, 'FormattedPageURL.csv', row.names = FALSE)