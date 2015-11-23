library("ggmap")
DCPSAddress <- read.csv("DCPSAddress.csv", stringsAsFactors=0) ## read csv of DC polling station info
df <- geocode(DCPSAddress$PSaddress, source="google") ## geocode
ggplot(df, aes(df$lon, df$lat)) + geom_point() + geom_text(aes(label=DCPSAddress$Code))