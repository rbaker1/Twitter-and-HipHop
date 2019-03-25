

require(tidyverse)

files <- list.files(path = "Data\\", pattern ="SNOO", full.names = T)

df_ss <- do.call(rbind, 
                 lapply(files, 
                        function(file){
  #extraction of report date
  file.date <- read.csv(file, skip = 1, nrows = 1, header = F) 
  file.date <- as.character(file.date[1,1])
  file.date <- unlist(strsplit(file.date, ": "))[2]
  
  ss.table <- read.csv(file, skip = 2, nrows = 200, header = T, stringsAsFactors =  F) #loading rest of soundscan file
  ss.table$reportDate <- file.date
  
  if(as.Date(file.date, format = '%m/%d/%Y') < '2018/02/02') data.frame() else ss.table
                                      }
                        )
                  )
df_ss <- df_ss %>% arrange(desc(reportDate), TW.Rank, LW.Rank)




