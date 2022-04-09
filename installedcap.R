library(sqldf)
library(openxlsx)
library(readxl)

february2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2014/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2014l <- february2014la                         
colnames(february2014l) <- february2014la [2, ]         
february2014<- february2014l[-c(1,2, 3), ]

february2014<-february2014[-3]       
february2014<- february2014[-4]    
february2014<- february2014[-5]
february2014<- february2014[-6]
february2014<- february2014[-7]
february2014<- february2014[-8]
february2014<- february2014[-9]


february2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2015/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2015l <- february2015la                        
colnames(february2015l) <- february2015la [2, ]         
february2015<- february2015l[-c(1,2, 3), ]

february2015<-february2015[-3]       
february2015<- february2015[-4]    
february2015<- february2015[-5]
february2015<- february2015[-6]
february2015<- february2015[-7]
february2015<- february2015[-8]
february2015<- february2015[-9]


february2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2016/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2016l <- february2016la                         # Duplicate data frame
colnames(february2016l) <- february2016la [3, ]          # Convert first row to header
february2016<- february2016l[-c(1,2, 3,4), ]

february2016<-february2016[-3]       
february2016<- february2016[-4]    
february2016<- february2016[-5]
february2016<- february2016[-6]
february2016<- february2016[-7]
february2016<- february2016[-8]
february2016<- february2016[-9]
february2016<- february2016[-10]
february2016<- february2016[-9]
february2016<- february2016[-9]
february2016<- february2016[-9]
february2016<- february2016[-9]
february2016<- february2016[-9]


february2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2017/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2017l <- february2017la                         # Duplicate data frame
colnames(february2017l) <- february2017la [3, ]          # Convert first row to header
february2017<- february2017l[-c(1,2, 3,4), ]

february2017<-february2017[-3]       
february2017<- february2017[-4]    
february2017<- february2017[-5]
february2017<- february2017[-6]
february2017<- february2017[-7]
february2017<- february2017[-8]
february2017<- february2017[-9]
february2017<- february2017[-10]
february2017<- february2017[-9]
february2017<- february2017[-9]
february2017<- february2017[-9]
february2017<- february2017[-9]
february2017<- february2017[-9]

february2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2018/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2018l <- february2018la                         # Duplicate data frame
colnames(february2018l) <- february2018la [3, ]          # Convert first row to header
february2018<- february2018l[-c(1,2, 3,4), ]

february2018<-february2018[-3]       
february2018<- february2018[-4]    
february2018<- february2018[-5]
february2018<- february2018[-6]
february2018<- february2018[-7]
february2018<- february2018[-8]
february2018<- february2018[-9]
february2018<- february2018[-10]
february2018<- february2018[-9]
february2018<- february2018[-9]
february2018<- february2018[-9]
february2018<- february2018[-9]
february2018<- february2018[-9]


february2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2019/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2019l <- february2019la                         # Duplicate data frame
colnames(february2019l) <- february2019la [3, ]          # Convert first row to header
february2019<- february2019l[-c(1,2, 3,4), ]

february2019<-february2019[-3]       
february2019<- february2019[-4]    
february2019<- february2019[-5]
february2019<- february2019[-6]
february2019<- february2019[-7]
february2019<- february2019[-8]
february2019<- february2019[-9]
february2019<- february2019[-10]
february2019<- february2019[-9]
february2019<- february2019[-9]
february2019<- february2019[-9]
february2019<- february2019[-9]
february2019<- february2019[-9]


february2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2020/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2020l <- february2020la                         # Duplicate data frame
colnames(february2020l) <- february2020la [3, ]          # Convert first row to header
february2020<- february2020l[-c(1,2, 3,4), ]

february2020<-february2020[-3]       
february2020<- february2020[-4]    
february2020<- february2020[-5]
february2020<- february2020[-6]
february2020<- february2020[-7]
february2020<- february2020[-8]
february2020<- february2020[-9]
february2020<- february2020[-10]
february2020<- february2020[-9]
february2020<- february2020[-9]
february2020<- february2020[-9]
february2020<- february2020[-9]
february2020<- february2020[-9]

february2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2021/Table_6_02_B.xlsx", 
                            col_names = FALSE)
february2021l <- february2021la                         # Duplicate data frame
colnames(february2021l) <- february2021la [3, ]          # Convert first row to header
february2021<- february2021l[-c(1,2, 3,4), ]

february2021<-february2021[-3]       
february2021<- february2021[-4]    
february2021<- february2021[-5]
february2021<- february2021[-6]
february2021<- february2021[-7]
february2021<- february2021[-8]
february2021<- february2021[-9]
february2021<- february2021[-10]
february2021<- february2021[-9]
february2021<- february2021[-9]
february2021<- february2021[-9]
february2021<- february2021[-9]
february2021<- february2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="february2014R", february2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2015R", february2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2016R", february2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2017R", february2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2018R", february2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2019R", february2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2020R", february2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2021R", february2021,
             overwrite=TRUE, row.names=FALSE)


february2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2014/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2014l <- february2014la                         
colnames(february2014l) <- february2014la [2, ]         
february2014<- february2014l[-c(1,2, 3), ]

february2014<-february2014[-3]       
february2014<- february2014[-4]    
february2014<- february2014[-5]
february2014<- february2014[-6]
february2014<- february2014[-7]
february2014<- february2014[-8]
february2014<- february2014[-9]


february2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2015/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2015l <- february2015la                        
colnames(february2015l) <- february2015la [2, ]         
february2015<- february2015l[-c(1,2, 3), ]

february2015<-february2015[-3]       
february2015<- february2015[-4]    
february2015<- february2015[-5]
february2015<- february2015[-6]
february2015<- february2015[-7]
february2015<- february2015[-8]
february2015<- february2015[-9]


february2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2016/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2016l <- february2016la                         # Duplicate data frame
colnames(february2016l) <- february2016la [3, ]          # Convert first row to header
february2016<- february2016l[-c(1,2, 3,4), ]

february2016<-february2016[-3]       
february2016<- february2016[-4]    
february2016<- february2016[-5]
february2016<- february2016[-6]
february2016<- february2016[-7]
february2016<- february2016[-8]
february2016<- february2016[-9]
february2016<- february2016[-10]
february2016<- february2016[-9]
february2016<- february2016[-9]
february2016<- february2016[-9]
february2016<- february2016[-9]
february2016<- february2016[-9]


february2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2017/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2017l <- february2017la                         # Duplicate data frame
colnames(february2017l) <- february2017la [3, ]          # Convert first row to header
february2017<- february2017l[-c(1,2, 3,4), ]

february2017<-february2017[-3]       
february2017<- february2017[-4]    
february2017<- february2017[-5]
february2017<- february2017[-6]
february2017<- february2017[-7]
february2017<- february2017[-8]
february2017<- february2017[-9]
february2017<- february2017[-10]
february2017<- february2017[-9]
february2017<- february2017[-9]
february2017<- february2017[-9]
february2017<- february2017[-9]
february2017<- february2017[-9]

february2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2018/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2018l <- february2018la                         # Duplicate data frame
colnames(february2018l) <- february2018la [3, ]          # Convert first row to header
february2018<- february2018l[-c(1,2, 3,4), ]

february2018<-february2018[-3]       
february2018<- february2018[-4]    
february2018<- february2018[-5]
february2018<- february2018[-6]
february2018<- february2018[-7]
february2018<- february2018[-8]
february2018<- february2018[-9]
february2018<- february2018[-10]
february2018<- february2018[-9]
february2018<- february2018[-9]
february2018<- february2018[-9]
february2018<- february2018[-9]
february2018<- february2018[-9]


february2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2019/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2019l <- february2019la                         # Duplicate data frame
colnames(february2019l) <- february2019la [3, ]          # Convert first row to header
february2019<- february2019l[-c(1,2, 3,4), ]

february2019<-february2019[-3]       
february2019<- february2019[-4]    
february2019<- february2019[-5]
february2019<- february2019[-6]
february2019<- february2019[-7]
february2019<- february2019[-8]
february2019<- february2019[-9]
february2019<- february2019[-10]
february2019<- february2019[-9]
february2019<- february2019[-9]
february2019<- february2019[-9]
february2019<- february2019[-9]
february2019<- february2019[-9]


february2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2020/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2020l <- february2020la                         # Duplicate data frame
colnames(february2020l) <- february2020la [3, ]          # Convert first row to header
february2020<- february2020l[-c(1,2, 3,4), ]

february2020<-february2020[-3]       
february2020<- february2020[-4]    
february2020<- february2020[-5]
february2020<- february2020[-6]
february2020<- february2020[-7]
february2020<- february2020[-8]
february2020<- february2020[-9]
february2020<- february2020[-10]
february2020<- february2020[-9]
february2020<- february2020[-9]
february2020<- february2020[-9]
february2020<- february2020[-9]
february2020<- february2020[-9]

february2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/february2021/Table_6_02_B.xlsx", 
                             col_names = FALSE)
february2021l <- february2021la                         # Duplicate data frame
colnames(february2021l) <- february2021la [3, ]          # Convert first row to header
february2021<- february2021l[-c(1,2, 3,4), ]

february2021<-february2021[-3]       
february2021<- february2021[-4]    
february2021<- february2021[-5]
february2021<- february2021[-6]
february2021<- february2021[-7]
february2021<- february2021[-8]
february2021<- february2021[-9]
february2021<- february2021[-10]
february2021<- february2021[-9]
february2021<- february2021[-9]
february2021<- february2021[-9]
february2021<- february2021[-9]
february2021<- february2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="february2014R", february2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2015R", february2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2016R", february2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2017R", february2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2018R", february2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2019R", february2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2020R", february2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="february2021R", february2021,
             overwrite=TRUE, row.names=FALSE)


march2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2014/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2014l <- march2014la                         
colnames(march2014l) <- march2014la [2, ]         
march2014<- march2014l[-c(1,2, 3), ]

march2014<-march2014[-3]       
march2014<- march2014[-4]    
march2014<- march2014[-5]
march2014<- march2014[-6]
march2014<- march2014[-7]
march2014<- march2014[-8]
march2014<- march2014[-9]


march2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2015/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2015l <- march2015la                        
colnames(march2015l) <- march2015la [2, ]         
march2015<- march2015l[-c(1,2, 3), ]

march2015<-march2015[-3]       
march2015<- march2015[-4]    
march2015<- march2015[-5]
march2015<- march2015[-6]
march2015<- march2015[-7]
march2015<- march2015[-8]
march2015<- march2015[-9]


march2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2016/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2016l <- march2016la                         # Duplicate data frame
colnames(march2016l) <- march2016la [3, ]          # Convert first row to header
march2016<- march2016l[-c(1,2, 3,4), ]

march2016<-march2016[-3]       
march2016<- march2016[-4]    
march2016<- march2016[-5]
march2016<- march2016[-6]
march2016<- march2016[-7]
march2016<- march2016[-8]
march2016<- march2016[-9]
march2016<- march2016[-10]
march2016<- march2016[-9]
march2016<- march2016[-9]
march2016<- march2016[-9]
march2016<- march2016[-9]
march2016<- march2016[-9]


march2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2017/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2017l <- march2017la                         # Duplicate data frame
colnames(march2017l) <- march2017la [3, ]          # Convert first row to header
march2017<- march2017l[-c(1,2, 3,4), ]

march2017<-march2017[-3]       
march2017<- march2017[-4]    
march2017<- march2017[-5]
march2017<- march2017[-6]
march2017<- march2017[-7]
march2017<- march2017[-8]
march2017<- march2017[-9]
march2017<- march2017[-10]
march2017<- march2017[-9]
march2017<- march2017[-9]
march2017<- march2017[-9]
march2017<- march2017[-9]
march2017<- march2017[-9]

march2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2018/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2018l <- march2018la                         # Duplicate data frame
colnames(march2018l) <- march2018la [3, ]          # Convert first row to header
march2018<- march2018l[-c(1,2, 3,4), ]

march2018<-march2018[-3]       
march2018<- march2018[-4]    
march2018<- march2018[-5]
march2018<- march2018[-6]
march2018<- march2018[-7]
march2018<- march2018[-8]
march2018<- march2018[-9]
march2018<- march2018[-10]
march2018<- march2018[-9]
march2018<- march2018[-9]
march2018<- march2018[-9]
march2018<- march2018[-9]
march2018<- march2018[-9]


march2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2019/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2019l <- march2019la                         # Duplicate data frame
colnames(march2019l) <- march2019la [3, ]          # Convert first row to header
march2019<- march2019l[-c(1,2, 3,4), ]

march2019<-march2019[-3]       
march2019<- march2019[-4]    
march2019<- march2019[-5]
march2019<- march2019[-6]
march2019<- march2019[-7]
march2019<- march2019[-8]
march2019<- march2019[-9]
march2019<- march2019[-10]
march2019<- march2019[-9]
march2019<- march2019[-9]
march2019<- march2019[-9]
march2019<- march2019[-9]
march2019<- march2019[-9]


march2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2020/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2020l <- march2020la                         # Duplicate data frame
colnames(march2020l) <- march2020la [3, ]          # Convert first row to header
march2020<- march2020l[-c(1,2, 3,4), ]

march2020<-march2020[-3]       
march2020<- march2020[-4]    
march2020<- march2020[-5]
march2020<- march2020[-6]
march2020<- march2020[-7]
march2020<- march2020[-8]
march2020<- march2020[-9]
march2020<- march2020[-10]
march2020<- march2020[-9]
march2020<- march2020[-9]
march2020<- march2020[-9]
march2020<- march2020[-9]
march2020<- march2020[-9]

march2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/march2021/Table_6_02_B.xlsx", 
                          col_names = FALSE)
march2021l <- march2021la                         # Duplicate data frame
colnames(march2021l) <- march2021la [3, ]          # Convert first row to header
march2021<- march2021l[-c(1,2, 3,4), ]

march2021<-march2021[-3]       
march2021<- march2021[-4]    
march2021<- march2021[-5]
march2021<- march2021[-6]
march2021<- march2021[-7]
march2021<- march2021[-8]
march2021<- march2021[-9]
march2021<- march2021[-10]
march2021<- march2021[-9]
march2021<- march2021[-9]
march2021<- march2021[-9]
march2021<- march2021[-9]
march2021<- march2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="march2014R", march2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2015R", march2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2016R", march2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2017R", march2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2018R", march2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2019R", march2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2020R", march2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="march2021R", march2021,
             overwrite=TRUE, row.names=FALSE)

april2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2014/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2014l <- april2014la                         
colnames(april2014l) <- april2014la [2, ]         
april2014<- april2014l[-c(1,2, 3), ]

april2014<-april2014[-3]       
april2014<- april2014[-4]    
april2014<- april2014[-5]
april2014<- april2014[-6]
april2014<- april2014[-7]
april2014<- april2014[-8]
april2014<- april2014[-9]


april2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2015/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2015l <- april2015la                        
colnames(april2015l) <- april2015la [2, ]         
april2015<- april2015l[-c(1,2, 3), ]

april2015<-april2015[-3]       
april2015<- april2015[-4]    
april2015<- april2015[-5]
april2015<- april2015[-6]
april2015<- april2015[-7]
april2015<- april2015[-8]
april2015<- april2015[-9]


april2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2016/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2016l <- april2016la                         # Duplicate data frame
colnames(april2016l) <- april2016la [3, ]          # Convert first row to header
april2016<- april2016l[-c(1,2, 3,4), ]

april2016<-april2016[-3]       
april2016<- april2016[-4]    
april2016<- april2016[-5]
april2016<- april2016[-6]
april2016<- april2016[-7]
april2016<- april2016[-8]
april2016<- april2016[-9]
april2016<- april2016[-10]
april2016<- april2016[-9]
april2016<- april2016[-9]
april2016<- april2016[-9]
april2016<- april2016[-9]
april2016<- april2016[-9]


april2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2017/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2017l <- april2017la                         # Duplicate data frame
colnames(april2017l) <- april2017la [3, ]          # Convert first row to header
april2017<- april2017l[-c(1,2, 3,4), ]

april2017<-april2017[-3]       
april2017<- april2017[-4]    
april2017<- april2017[-5]
april2017<- april2017[-6]
april2017<- april2017[-7]
april2017<- april2017[-8]
april2017<- april2017[-9]
april2017<- april2017[-10]
april2017<- april2017[-9]
april2017<- april2017[-9]
april2017<- april2017[-9]
april2017<- april2017[-9]
april2017<- april2017[-9]

april2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2018/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2018l <- april2018la                         # Duplicate data frame
colnames(april2018l) <- april2018la [3, ]          # Convert first row to header
april2018<- april2018l[-c(1,2, 3,4), ]

april2018<-april2018[-3]       
april2018<- april2018[-4]    
april2018<- april2018[-5]
april2018<- april2018[-6]
april2018<- april2018[-7]
april2018<- april2018[-8]
april2018<- april2018[-9]
april2018<- april2018[-10]
april2018<- april2018[-9]
april2018<- april2018[-9]
april2018<- april2018[-9]
april2018<- april2018[-9]
april2018<- april2018[-9]


april2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2019/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2019l <- april2019la                         # Duplicate data frame
colnames(april2019l) <- april2019la [3, ]          # Convert first row to header
april2019<- april2019l[-c(1,2, 3,4), ]

april2019<-april2019[-3]       
april2019<- april2019[-4]    
april2019<- april2019[-5]
april2019<- april2019[-6]
april2019<- april2019[-7]
april2019<- april2019[-8]
april2019<- april2019[-9]
april2019<- april2019[-10]
april2019<- april2019[-9]
april2019<- april2019[-9]
april2019<- april2019[-9]
april2019<- april2019[-9]
april2019<- april2019[-9]


april2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2020/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2020l <- april2020la                         # Duplicate data frame
colnames(april2020l) <- april2020la [3, ]          # Convert first row to header
april2020<- april2020l[-c(1,2, 3,4), ]

april2020<-april2020[-3]       
april2020<- april2020[-4]    
april2020<- april2020[-5]
april2020<- april2020[-6]
april2020<- april2020[-7]
april2020<- april2020[-8]
april2020<- april2020[-9]
april2020<- april2020[-10]
april2020<- april2020[-9]
april2020<- april2020[-9]
april2020<- april2020[-9]
april2020<- april2020[-9]
april2020<- april2020[-9]

april2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/april2021/Table_6_02_B.xlsx", 
                          col_names = FALSE)
april2021l <- april2021la                         # Duplicate data frame
colnames(april2021l) <- april2021la [3, ]          # Convert first row to header
april2021<- april2021l[-c(1,2, 3,4), ]

april2021<-april2021[-3]       
april2021<- april2021[-4]    
april2021<- april2021[-5]
april2021<- april2021[-6]
april2021<- april2021[-7]
april2021<- april2021[-8]
april2021<- april2021[-9]
april2021<- april2021[-10]
april2021<- april2021[-9]
april2021<- april2021[-9]
april2021<- april2021[-9]
april2021<- april2021[-9]
april2021<- april2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="april2014R", april2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2015R", april2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2016R", april2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2017R", april2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2018R", april2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2019R", april2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2020R", april2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="april2021R", april2021,
             overwrite=TRUE, row.names=FALSE)

may2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2014/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2014l <- may2014la                         
colnames(may2014l) <- may2014la [2, ]         
may2014<- may2014l[-c(1,2, 3), ]

may2014<-may2014[-3]       
may2014<- may2014[-4]    
may2014<- may2014[-5]
may2014<- may2014[-6]
may2014<- may2014[-7]
may2014<- may2014[-8]
may2014<- may2014[-9]


may2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2015/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2015l <- may2015la                        
colnames(may2015l) <- may2015la [2, ]         
may2015<- may2015l[-c(1,2, 3), ]

may2015<-may2015[-3]       
may2015<- may2015[-4]    
may2015<- may2015[-5]
may2015<- may2015[-6]
may2015<- may2015[-7]
may2015<- may2015[-8]
may2015<- may2015[-9]


may2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2016/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2016l <- may2016la                         # Duplicate data frame
colnames(may2016l) <- may2016la [3, ]          # Convert first row to header
may2016<- may2016l[-c(1,2, 3,4), ]

may2016<-may2016[-3]       
may2016<- may2016[-4]    
may2016<- may2016[-5]
may2016<- may2016[-6]
may2016<- may2016[-7]
may2016<- may2016[-8]
may2016<- may2016[-9]
may2016<- may2016[-10]
may2016<- may2016[-9]
may2016<- may2016[-9]
may2016<- may2016[-9]
may2016<- may2016[-9]
may2016<- may2016[-9]


may2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2017/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2017l <- may2017la                         # Duplicate data frame
colnames(may2017l) <- may2017la [3, ]          # Convert first row to header
may2017<- may2017l[-c(1,2, 3,4), ]

may2017<-may2017[-3]       
may2017<- may2017[-4]    
may2017<- may2017[-5]
may2017<- may2017[-6]
may2017<- may2017[-7]
may2017<- may2017[-8]
may2017<- may2017[-9]
may2017<- may2017[-10]
may2017<- may2017[-9]
may2017<- may2017[-9]
may2017<- may2017[-9]
may2017<- may2017[-9]
may2017<- may2017[-9]

may2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2018/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2018l <- may2018la                         # Duplicate data frame
colnames(may2018l) <- may2018la [3, ]          # Convert first row to header
may2018<- may2018l[-c(1,2, 3,4), ]

may2018<-may2018[-3]       
may2018<- may2018[-4]    
may2018<- may2018[-5]
may2018<- may2018[-6]
may2018<- may2018[-7]
may2018<- may2018[-8]
may2018<- may2018[-9]
may2018<- may2018[-10]
may2018<- may2018[-9]
may2018<- may2018[-9]
may2018<- may2018[-9]
may2018<- may2018[-9]
may2018<- may2018[-9]


may2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2019/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2019l <- may2019la                         # Duplicate data frame
colnames(may2019l) <- may2019la [3, ]          # Convert first row to header
may2019<- may2019l[-c(1,2, 3,4), ]

may2019<-may2019[-3]       
may2019<- may2019[-4]    
may2019<- may2019[-5]
may2019<- may2019[-6]
may2019<- may2019[-7]
may2019<- may2019[-8]
may2019<- may2019[-9]
may2019<- may2019[-10]
may2019<- may2019[-9]
may2019<- may2019[-9]
may2019<- may2019[-9]
may2019<- may2019[-9]
may2019<- may2019[-9]


may2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2020/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2020l <- may2020la                         # Duplicate data frame
colnames(may2020l) <- may2020la [3, ]          # Convert first row to header
may2020<- may2020l[-c(1,2, 3,4), ]

may2020<-may2020[-3]       
may2020<- may2020[-4]    
may2020<- may2020[-5]
may2020<- may2020[-6]
may2020<- may2020[-7]
may2020<- may2020[-8]
may2020<- may2020[-9]
may2020<- may2020[-10]
may2020<- may2020[-9]
may2020<- may2020[-9]
may2020<- may2020[-9]
may2020<- may2020[-9]
may2020<- may2020[-9]

may2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/may2021/Table_6_02_B.xlsx", 
                        col_names = FALSE)
may2021l <- may2021la                         # Duplicate data frame
colnames(may2021l) <- may2021la [3, ]          # Convert first row to header
may2021<- may2021l[-c(1,2, 3,4), ]

may2021<-may2021[-3]       
may2021<- may2021[-4]    
may2021<- may2021[-5]
may2021<- may2021[-6]
may2021<- may2021[-7]
may2021<- may2021[-8]
may2021<- may2021[-9]
may2021<- may2021[-10]
may2021<- may2021[-9]
may2021<- may2021[-9]
may2021<- may2021[-9]
may2021<- may2021[-9]
may2021<- may2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="may2014R", may2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2015R", may2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2016R", may2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2017R", may2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2018R", may2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2019R", may2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2020R", may2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="may2021R", may2021,
             overwrite=TRUE, row.names=FALSE)

june2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2014/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2014l <- june2014la                         
colnames(june2014l) <- june2014la [2, ]         
june2014<- june2014l[-c(1,2, 3), ]

june2014<-june2014[-3]       
june2014<- june2014[-4]    
june2014<- june2014[-5]
june2014<- june2014[-6]
june2014<- june2014[-7]
june2014<- june2014[-8]
june2014<- june2014[-9]


june2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2015/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2015l <- june2015la                        
colnames(june2015l) <- june2015la [2, ]         
june2015<- june2015l[-c(1,2, 3), ]

june2015<-june2015[-3]       
june2015<- june2015[-4]    
june2015<- june2015[-5]
june2015<- june2015[-6]
june2015<- june2015[-7]
june2015<- june2015[-8]
june2015<- june2015[-9]


june2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2016/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2016l <- june2016la                         # Duplicate data frame
colnames(june2016l) <- june2016la [3, ]          # Convert first row to header
june2016<- june2016l[-c(1,2, 3,4), ]

june2016<-june2016[-3]       
june2016<- june2016[-4]    
june2016<- june2016[-5]
june2016<- june2016[-6]
june2016<- june2016[-7]
june2016<- june2016[-8]
june2016<- june2016[-9]
june2016<- june2016[-10]
june2016<- june2016[-9]
june2016<- june2016[-9]
june2016<- june2016[-9]
june2016<- june2016[-9]
june2016<- june2016[-9]


june2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2017/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2017l <- june2017la                         # Duplicate data frame
colnames(june2017l) <- june2017la [3, ]          # Convert first row to header
june2017<- june2017l[-c(1,2, 3,4), ]

june2017<-june2017[-3]       
june2017<- june2017[-4]    
june2017<- june2017[-5]
june2017<- june2017[-6]
june2017<- june2017[-7]
june2017<- june2017[-8]
june2017<- june2017[-9]
june2017<- june2017[-10]
june2017<- june2017[-9]
june2017<- june2017[-9]
june2017<- june2017[-9]
june2017<- june2017[-9]
june2017<- june2017[-9]

june2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2018/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2018l <- june2018la                         # Duplicate data frame
colnames(june2018l) <- june2018la [3, ]          # Convert first row to header
june2018<- june2018l[-c(1,2, 3,4), ]

june2018<-june2018[-3]       
june2018<- june2018[-4]    
june2018<- june2018[-5]
june2018<- june2018[-6]
june2018<- june2018[-7]
june2018<- june2018[-8]
june2018<- june2018[-9]
june2018<- june2018[-10]
june2018<- june2018[-9]
june2018<- june2018[-9]
june2018<- june2018[-9]
june2018<- june2018[-9]
june2018<- june2018[-9]


june2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2019/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2019l <- june2019la                         # Duplicate data frame
colnames(june2019l) <- june2019la [3, ]          # Convert first row to header
june2019<- june2019l[-c(1,2, 3,4), ]

june2019<-june2019[-3]       
june2019<- june2019[-4]    
june2019<- june2019[-5]
june2019<- june2019[-6]
june2019<- june2019[-7]
june2019<- june2019[-8]
june2019<- june2019[-9]
june2019<- june2019[-10]
june2019<- june2019[-9]
june2019<- june2019[-9]
june2019<- june2019[-9]
june2019<- june2019[-9]
june2019<- june2019[-9]


june2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2020/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2020l <- june2020la                         # Duplicate data frame
colnames(june2020l) <- june2020la [3, ]          # Convert first row to header
june2020<- june2020l[-c(1,2, 3,4), ]

june2020<-june2020[-3]       
june2020<- june2020[-4]    
june2020<- june2020[-5]
june2020<- june2020[-6]
june2020<- june2020[-7]
june2020<- june2020[-8]
june2020<- june2020[-9]
june2020<- june2020[-10]
june2020<- june2020[-9]
june2020<- june2020[-9]
june2020<- june2020[-9]
june2020<- june2020[-9]
june2020<- june2020[-9]

june2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/june2021/Table_6_02_B.xlsx", 
                         col_names = FALSE)
june2021l <- june2021la                         # Duplicate data frame
colnames(june2021l) <- june2021la [3, ]          # Convert first row to header
june2021<- june2021l[-c(1,2, 3,4), ]

june2021<-june2021[-3]       
june2021<- june2021[-4]    
june2021<- june2021[-5]
june2021<- june2021[-6]
june2021<- june2021[-7]
june2021<- june2021[-8]
june2021<- june2021[-9]
june2021<- june2021[-10]
june2021<- june2021[-9]
june2021<- june2021[-9]
june2021<- june2021[-9]
june2021<- june2021[-9]
june2021<- june2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="june2014R", june2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2015R", june2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2016R", june2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2017R", june2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2018R", june2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2019R", june2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2020R", june2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="june2021R", june2021,
             overwrite=TRUE, row.names=FALSE)

july2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2014/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2014l <- july2014la                         
colnames(july2014l) <- july2014la [2, ]         
july2014<- july2014l[-c(1,2, 3), ]

july2014<-july2014[-3]       
july2014<- july2014[-4]    
july2014<- july2014[-5]
july2014<- july2014[-6]
july2014<- july2014[-7]
july2014<- july2014[-8]
july2014<- july2014[-9]


july2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2015/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2015l <- july2015la                        
colnames(july2015l) <- july2015la [2, ]         
july2015<- july2015l[-c(1,2, 3), ]

july2015<-july2015[-3]       
july2015<- july2015[-4]    
july2015<- july2015[-5]
july2015<- july2015[-6]
july2015<- july2015[-7]
july2015<- july2015[-8]
july2015<- july2015[-9]


july2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2016/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2016l <- july2016la                         # Duplicate data frame
colnames(july2016l) <- july2016la [3, ]          # Convert first row to header
july2016<- july2016l[-c(1,2, 3,4), ]

july2016<-july2016[-3]       
july2016<- july2016[-4]    
july2016<- july2016[-5]
july2016<- july2016[-6]
july2016<- july2016[-7]
july2016<- july2016[-8]
july2016<- july2016[-9]
july2016<- july2016[-10]
july2016<- july2016[-9]
july2016<- july2016[-9]
july2016<- july2016[-9]
july2016<- july2016[-9]
july2016<- july2016[-9]


july2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2017/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2017l <- july2017la                         # Duplicate data frame
colnames(july2017l) <- july2017la [3, ]          # Convert first row to header
july2017<- july2017l[-c(1,2, 3,4), ]

july2017<-july2017[-3]       
july2017<- july2017[-4]    
july2017<- july2017[-5]
july2017<- july2017[-6]
july2017<- july2017[-7]
july2017<- july2017[-8]
july2017<- july2017[-9]
july2017<- july2017[-10]
july2017<- july2017[-9]
july2017<- july2017[-9]
july2017<- july2017[-9]
july2017<- july2017[-9]
july2017<- july2017[-9]

july2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2018/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2018l <- july2018la                         # Duplicate data frame
colnames(july2018l) <- july2018la [3, ]          # Convert first row to header
july2018<- july2018l[-c(1,2, 3,4), ]

july2018<-july2018[-3]       
july2018<- july2018[-4]    
july2018<- july2018[-5]
july2018<- july2018[-6]
july2018<- july2018[-7]
july2018<- july2018[-8]
july2018<- july2018[-9]
july2018<- july2018[-10]
july2018<- july2018[-9]
july2018<- july2018[-9]
july2018<- july2018[-9]
july2018<- july2018[-9]
july2018<- july2018[-9]


july2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2019/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2019l <- july2019la                         # Duplicate data frame
colnames(july2019l) <- july2019la [3, ]          # Convert first row to header
july2019<- july2019l[-c(1,2, 3,4), ]

july2019<-july2019[-3]       
july2019<- july2019[-4]    
july2019<- july2019[-5]
july2019<- july2019[-6]
july2019<- july2019[-7]
july2019<- july2019[-8]
july2019<- july2019[-9]
july2019<- july2019[-10]
july2019<- july2019[-9]
july2019<- july2019[-9]
july2019<- july2019[-9]
july2019<- july2019[-9]
july2019<- july2019[-9]


july2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2020/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2020l <- july2020la                         # Duplicate data frame
colnames(july2020l) <- july2020la [3, ]          # Convert first row to header
july2020<- july2020l[-c(1,2, 3,4), ]

july2020<-july2020[-3]       
july2020<- july2020[-4]    
july2020<- july2020[-5]
july2020<- july2020[-6]
july2020<- july2020[-7]
july2020<- july2020[-8]
july2020<- july2020[-9]
july2020<- july2020[-10]
july2020<- july2020[-9]
july2020<- july2020[-9]
july2020<- july2020[-9]
july2020<- july2020[-9]
july2020<- july2020[-9]

july2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/july2021/Table_6_02_B.xlsx", 
                         col_names = FALSE)
july2021l <- july2021la                         # Duplicate data frame
colnames(july2021l) <- july2021la [3, ]          # Convert first row to header
july2021<- july2021l[-c(1,2, 3,4), ]

july2021<-july2021[-3]       
july2021<- july2021[-4]    
july2021<- july2021[-5]
july2021<- july2021[-6]
july2021<- july2021[-7]
july2021<- july2021[-8]
july2021<- july2021[-9]
july2021<- july2021[-10]
july2021<- july2021[-9]
july2021<- july2021[-9]
july2021<- july2021[-9]
july2021<- july2021[-9]
july2021<- july2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="july2014R", july2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2015R", july2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2016R", july2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2017R", july2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2018R", july2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2019R", july2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2020R", july2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="july2021R", july2021,
             overwrite=TRUE, row.names=FALSE)

august2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2014/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2014l <- august2014la                         
colnames(august2014l) <- august2014la [2, ]         
august2014<- august2014l[-c(1,2, 3), ]

august2014<-august2014[-3]       
august2014<- august2014[-4]    
august2014<- august2014[-5]
august2014<- august2014[-6]
august2014<- august2014[-7]
august2014<- august2014[-8]
august2014<- august2014[-9]


august2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2015/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2015l <- august2015la                        
colnames(august2015l) <- august2015la [2, ]         
august2015<- august2015l[-c(1,2, 3), ]

august2015<-august2015[-3]       
august2015<- august2015[-4]    
august2015<- august2015[-5]
august2015<- august2015[-6]
august2015<- august2015[-7]
august2015<- august2015[-8]
august2015<- august2015[-9]


august2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2016/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2016l <- august2016la                         # Duplicate data frame
colnames(august2016l) <- august2016la [3, ]          # Convert first row to header
august2016<- august2016l[-c(1,2, 3,4), ]

august2016<-august2016[-3]       
august2016<- august2016[-4]    
august2016<- august2016[-5]
august2016<- august2016[-6]
august2016<- august2016[-7]
august2016<- august2016[-8]
august2016<- august2016[-9]
august2016<- august2016[-10]
august2016<- august2016[-9]
august2016<- august2016[-9]
august2016<- august2016[-9]
august2016<- august2016[-9]
august2016<- august2016[-9]


august2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2017/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2017l <- august2017la                         # Duplicate data frame
colnames(august2017l) <- august2017la [3, ]          # Convert first row to header
august2017<- august2017l[-c(1,2, 3,4), ]

august2017<-august2017[-3]       
august2017<- august2017[-4]    
august2017<- august2017[-5]
august2017<- august2017[-6]
august2017<- august2017[-7]
august2017<- august2017[-8]
august2017<- august2017[-9]
august2017<- august2017[-10]
august2017<- august2017[-9]
august2017<- august2017[-9]
august2017<- august2017[-9]
august2017<- august2017[-9]
august2017<- august2017[-9]

august2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2018/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2018l <- august2018la                         # Duplicate data frame
colnames(august2018l) <- august2018la [3, ]          # Convert first row to header
august2018<- august2018l[-c(1,2, 3,4), ]

august2018<-august2018[-3]       
august2018<- august2018[-4]    
august2018<- august2018[-5]
august2018<- august2018[-6]
august2018<- august2018[-7]
august2018<- august2018[-8]
august2018<- august2018[-9]
august2018<- august2018[-10]
august2018<- august2018[-9]
august2018<- august2018[-9]
august2018<- august2018[-9]
august2018<- august2018[-9]
august2018<- august2018[-9]


august2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2019/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2019l <- august2019la                         # Duplicate data frame
colnames(august2019l) <- august2019la [3, ]          # Convert first row to header
august2019<- august2019l[-c(1,2, 3,4), ]

august2019<-august2019[-3]       
august2019<- august2019[-4]    
august2019<- august2019[-5]
august2019<- august2019[-6]
august2019<- august2019[-7]
august2019<- august2019[-8]
august2019<- august2019[-9]
august2019<- august2019[-10]
august2019<- august2019[-9]
august2019<- august2019[-9]
august2019<- august2019[-9]
august2019<- august2019[-9]
august2019<- august2019[-9]


august2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2020/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2020l <- august2020la                         # Duplicate data frame
colnames(august2020l) <- august2020la [3, ]          # Convert first row to header
august2020<- august2020l[-c(1,2, 3,4), ]

august2020<-august2020[-3]       
august2020<- august2020[-4]    
august2020<- august2020[-5]
august2020<- august2020[-6]
august2020<- august2020[-7]
august2020<- august2020[-8]
august2020<- august2020[-9]
august2020<- august2020[-10]
august2020<- august2020[-9]
august2020<- august2020[-9]
august2020<- august2020[-9]
august2020<- august2020[-9]
august2020<- august2020[-9]

august2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/august2021/Table_6_02_B.xlsx", 
                           col_names = FALSE)
august2021l <- august2021la                         # Duplicate data frame
colnames(august2021l) <- august2021la [3, ]          # Convert first row to header
august2021<- august2021l[-c(1,2, 3,4), ]

august2021<-august2021[-3]       
august2021<- august2021[-4]    
august2021<- august2021[-5]
august2021<- august2021[-6]
august2021<- august2021[-7]
august2021<- august2021[-8]
august2021<- august2021[-9]
august2021<- august2021[-10]
august2021<- august2021[-9]
august2021<- august2021[-9]
august2021<- august2021[-9]
august2021<- august2021[-9]
august2021<- august2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="august2014R", august2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2015R", august2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2016R", august2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2017R", august2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2018R", august2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2019R", august2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2020R", august2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="august2021R", august2021,
             overwrite=TRUE, row.names=FALSE)


september2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2014/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2014l <- september2014la                         
colnames(september2014l) <- september2014la [2, ]         
september2014<- september2014l[-c(1,2, 3), ]

september2014<-september2014[-3]       
september2014<- september2014[-4]    
september2014<- september2014[-5]
september2014<- september2014[-6]
september2014<- september2014[-7]
september2014<- september2014[-8]
september2014<- september2014[-9]


september2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2015/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2015l <- september2015la                        
colnames(september2015l) <- september2015la [2, ]         
september2015<- september2015l[-c(1,2, 3), ]

september2015<-september2015[-3]       
september2015<- september2015[-4]    
september2015<- september2015[-5]
september2015<- september2015[-6]
september2015<- september2015[-7]
september2015<- september2015[-8]
september2015<- september2015[-9]


september2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2016/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2016l <- september2016la                         # Duplicate data frame
colnames(september2016l) <- september2016la [3, ]          # Convert first row to header
september2016<- september2016l[-c(1,2, 3,4), ]

september2016<-september2016[-3]       
september2016<- september2016[-4]    
september2016<- september2016[-5]
september2016<- september2016[-6]
september2016<- september2016[-7]
september2016<- september2016[-8]
september2016<- september2016[-9]
september2016<- september2016[-10]
september2016<- september2016[-9]
september2016<- september2016[-9]
september2016<- september2016[-9]
september2016<- september2016[-9]
september2016<- september2016[-9]


september2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2017/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2017l <- september2017la                         # Duplicate data frame
colnames(september2017l) <- september2017la [3, ]          # Convert first row to header
september2017<- september2017l[-c(1,2, 3,4), ]

september2017<-september2017[-3]       
september2017<- september2017[-4]    
september2017<- september2017[-5]
september2017<- september2017[-6]
september2017<- september2017[-7]
september2017<- september2017[-8]
september2017<- september2017[-9]
september2017<- september2017[-10]
september2017<- september2017[-9]
september2017<- september2017[-9]
september2017<- september2017[-9]
september2017<- september2017[-9]
september2017<- september2017[-9]

september2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2018/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2018l <- september2018la                         # Duplicate data frame
colnames(september2018l) <- september2018la [3, ]          # Convert first row to header
september2018<- september2018l[-c(1,2, 3,4), ]

september2018<-september2018[-3]       
september2018<- september2018[-4]    
september2018<- september2018[-5]
september2018<- september2018[-6]
september2018<- september2018[-7]
september2018<- september2018[-8]
september2018<- september2018[-9]
september2018<- september2018[-10]
september2018<- september2018[-9]
september2018<- september2018[-9]
september2018<- september2018[-9]
september2018<- september2018[-9]
september2018<- september2018[-9]


september2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2019/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2019l <- september2019la                         # Duplicate data frame
colnames(september2019l) <- september2019la [3, ]          # Convert first row to header
september2019<- september2019l[-c(1,2, 3,4), ]

september2019<-september2019[-3]       
september2019<- september2019[-4]    
september2019<- september2019[-5]
september2019<- september2019[-6]
september2019<- september2019[-7]
september2019<- september2019[-8]
september2019<- september2019[-9]
september2019<- september2019[-10]
september2019<- september2019[-9]
september2019<- september2019[-9]
september2019<- september2019[-9]
september2019<- september2019[-9]
september2019<- september2019[-9]


september2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2020/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2020l <- september2020la                         # Duplicate data frame
colnames(september2020l) <- september2020la [3, ]          # Convert first row to header
september2020<- september2020l[-c(1,2, 3,4), ]

september2020<-september2020[-3]       
september2020<- september2020[-4]    
september2020<- september2020[-5]
september2020<- september2020[-6]
september2020<- september2020[-7]
september2020<- september2020[-8]
september2020<- september2020[-9]
september2020<- september2020[-10]
september2020<- september2020[-9]
september2020<- september2020[-9]
september2020<- september2020[-9]
september2020<- september2020[-9]
september2020<- september2020[-9]

september2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/september2021/Table_6_02_B.xlsx", 
                              col_names = FALSE)
september2021l <- september2021la                         # Duplicate data frame
colnames(september2021l) <- september2021la [3, ]          # Convert first row to header
september2021<- september2021l[-c(1,2, 3,4), ]

september2021<-september2021[-3]       
september2021<- september2021[-4]    
september2021<- september2021[-5]
september2021<- september2021[-6]
september2021<- september2021[-7]
september2021<- september2021[-8]
september2021<- september2021[-9]
september2021<- september2021[-10]
september2021<- september2021[-9]
september2021<- september2021[-9]
september2021<- september2021[-9]
september2021<- september2021[-9]
september2021<- september2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="september2014R", september2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2015R", september2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2016R", september2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2017R", september2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2018R", september2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2019R", september2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2020R", september2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="september2021R", september2021,
             overwrite=TRUE, row.names=FALSE)

october2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2014/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2014l <- october2014la                         
colnames(october2014l) <- october2014la [2, ]         
october2014<- october2014l[-c(1,2, 3), ]

october2014<-october2014[-3]       
october2014<- october2014[-4]    
october2014<- october2014[-5]
october2014<- october2014[-6]
october2014<- october2014[-7]
october2014<- october2014[-8]
october2014<- october2014[-9]


october2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2015/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2015l <- october2015la                        
colnames(october2015l) <- october2015la [2, ]         
october2015<- october2015l[-c(1,2, 3), ]

october2015<-october2015[-3]       
october2015<- october2015[-4]    
october2015<- october2015[-5]
october2015<- october2015[-6]
october2015<- october2015[-7]
october2015<- october2015[-8]
october2015<- october2015[-9]


october2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2016/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2016l <- october2016la                         # Duplicate data frame
colnames(october2016l) <- october2016la [3, ]          # Convert first row to header
october2016<- october2016l[-c(1,2, 3,4), ]

october2016<-october2016[-3]       
october2016<- october2016[-4]    
october2016<- october2016[-5]
october2016<- october2016[-6]
october2016<- october2016[-7]
october2016<- october2016[-8]
october2016<- october2016[-9]
october2016<- october2016[-10]
october2016<- october2016[-9]
october2016<- october2016[-9]
october2016<- october2016[-9]
october2016<- october2016[-9]
october2016<- october2016[-9]


october2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2017/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2017l <- october2017la                         # Duplicate data frame
colnames(october2017l) <- october2017la [3, ]          # Convert first row to header
october2017<- october2017l[-c(1,2, 3,4), ]

october2017<-october2017[-3]       
october2017<- october2017[-4]    
october2017<- october2017[-5]
october2017<- october2017[-6]
october2017<- october2017[-7]
october2017<- october2017[-8]
october2017<- october2017[-9]
october2017<- october2017[-10]
october2017<- october2017[-9]
october2017<- october2017[-9]
october2017<- october2017[-9]
october2017<- october2017[-9]
october2017<- october2017[-9]

october2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2018/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2018l <- october2018la                         # Duplicate data frame
colnames(october2018l) <- october2018la [3, ]          # Convert first row to header
october2018<- october2018l[-c(1,2, 3,4), ]

october2018<-october2018[-3]       
october2018<- october2018[-4]    
october2018<- october2018[-5]
october2018<- october2018[-6]
october2018<- october2018[-7]
october2018<- october2018[-8]
october2018<- october2018[-9]
october2018<- october2018[-10]
october2018<- october2018[-9]
october2018<- october2018[-9]
october2018<- october2018[-9]
october2018<- october2018[-9]
october2018<- october2018[-9]


october2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2019/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2019l <- october2019la                         # Duplicate data frame
colnames(october2019l) <- october2019la [3, ]          # Convert first row to header
october2019<- october2019l[-c(1,2, 3,4), ]

october2019<-october2019[-3]       
october2019<- october2019[-4]    
october2019<- october2019[-5]
october2019<- october2019[-6]
october2019<- october2019[-7]
october2019<- october2019[-8]
october2019<- october2019[-9]
october2019<- october2019[-10]
october2019<- october2019[-9]
october2019<- october2019[-9]
october2019<- october2019[-9]
october2019<- october2019[-9]
october2019<- october2019[-9]


october2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2020/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2020l <- october2020la                         # Duplicate data frame
colnames(october2020l) <- october2020la [3, ]          # Convert first row to header
october2020<- october2020l[-c(1,2, 3,4), ]

october2020<-october2020[-3]       
october2020<- october2020[-4]    
october2020<- october2020[-5]
october2020<- october2020[-6]
october2020<- october2020[-7]
october2020<- october2020[-8]
october2020<- october2020[-9]
october2020<- october2020[-10]
october2020<- october2020[-9]
october2020<- october2020[-9]
october2020<- october2020[-9]
october2020<- october2020[-9]
october2020<- october2020[-9]

october2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/october2021/Table_6_02_B.xlsx", 
                            col_names = FALSE)
october2021l <- october2021la                         # Duplicate data frame
colnames(october2021l) <- october2021la [3, ]          # Convert first row to header
october2021<- october2021l[-c(1,2, 3,4), ]

october2021<-october2021[-3]       
october2021<- october2021[-4]    
october2021<- october2021[-5]
october2021<- october2021[-6]
october2021<- october2021[-7]
october2021<- october2021[-8]
october2021<- october2021[-9]
october2021<- october2021[-10]
october2021<- october2021[-9]
october2021<- october2021[-9]
october2021<- october2021[-9]
october2021<- october2021[-9]
october2021<- october2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="october2014R", october2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2015R", october2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2016R", october2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2017R", october2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2018R", october2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2019R", october2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2020R", october2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="october2021R", october2021,
             overwrite=TRUE, row.names=FALSE)

november2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2014/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2014l <- november2014la                         
colnames(november2014l) <- november2014la [2, ]         
november2014<- november2014l[-c(1,2, 3), ]

november2014<-november2014[-3]       
november2014<- november2014[-4]    
november2014<- november2014[-5]
november2014<- november2014[-6]
november2014<- november2014[-7]
november2014<- november2014[-8]
november2014<- november2014[-9]


november2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2015/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2015l <- november2015la                        
colnames(november2015l) <- november2015la [3, ]         
november2015<- november2015l[-c(1,2, 3,4), ]

november2015<-november2015[-3]       
november2015<- november2015[-4]    
november2015<- november2015[-5]
november2015<- november2015[-6]
november2015<- november2015[-7]
november2015<- november2015[-8]
november2015<- november2015[-9]
november2015<- november2015[-10]
november2015<- november2015[-9]
november2015<- november2015[-9]
november2015<- november2015[-9]
november2015<- november2015[-9]
november2015<- november2015[-9]


november2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2016/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2016l <- november2016la                         # Duplicate data frame
colnames(november2016l) <- november2016la [3, ]          # Convert first row to header
november2016<- november2016l[-c(1,2, 3,4), ]

november2016<-november2016[-3]       
november2016<- november2016[-4]    
november2016<- november2016[-5]
november2016<- november2016[-6]
november2016<- november2016[-7]
november2016<- november2016[-8]
november2016<- november2016[-9]
november2016<- november2016[-10]
november2016<- november2016[-9]
november2016<- november2016[-9]
november2016<- november2016[-9]
november2016<- november2016[-9]
november2016<- november2016[-9]


november2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2017/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2017l <- november2017la                         # Duplicate data frame
colnames(november2017l) <- november2017la [3, ]          # Convert first row to header
november2017<- november2017l[-c(1,2, 3,4), ]

november2017<-november2017[-3]       
november2017<- november2017[-4]    
november2017<- november2017[-5]
november2017<- november2017[-6]
november2017<- november2017[-7]
november2017<- november2017[-8]
november2017<- november2017[-9]
november2017<- november2017[-10]
november2017<- november2017[-9]
november2017<- november2017[-9]
november2017<- november2017[-9]
november2017<- november2017[-9]
november2017<- november2017[-9]

november2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2018/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2018l <- november2018la                         # Duplicate data frame
colnames(november2018l) <- november2018la [3, ]          # Convert first row to header
november2018<- november2018l[-c(1,2, 3,4), ]

november2018<-november2018[-3]       
november2018<- november2018[-4]    
november2018<- november2018[-5]
november2018<- november2018[-6]
november2018<- november2018[-7]
november2018<- november2018[-8]
november2018<- november2018[-9]
november2018<- november2018[-10]
november2018<- november2018[-9]
november2018<- november2018[-9]
november2018<- november2018[-9]
november2018<- november2018[-9]
november2018<- november2018[-9]


november2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2019/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2019l <- november2019la                         # Duplicate data frame
colnames(november2019l) <- november2019la [3, ]          # Convert first row to header
november2019<- november2019l[-c(1,2, 3,4), ]

november2019<-november2019[-3]       
november2019<- november2019[-4]    
november2019<- november2019[-5]
november2019<- november2019[-6]
november2019<- november2019[-7]
november2019<- november2019[-8]
november2019<- november2019[-9]
november2019<- november2019[-10]
november2019<- november2019[-9]
november2019<- november2019[-9]
november2019<- november2019[-9]
november2019<- november2019[-9]
november2019<- november2019[-9]


november2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2020/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2020l <- november2020la                         # Duplicate data frame
colnames(november2020l) <- november2020la [3, ]          # Convert first row to header
november2020<- november2020l[-c(1,2, 3,4), ]

november2020<-november2020[-3]       
november2020<- november2020[-4]    
november2020<- november2020[-5]
november2020<- november2020[-6]
november2020<- november2020[-7]
november2020<- november2020[-8]
november2020<- november2020[-9]
november2020<- november2020[-10]
november2020<- november2020[-9]
november2020<- november2020[-9]
november2020<- november2020[-9]
november2020<- november2020[-9]
november2020<- november2020[-9]

november2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/november2021/Table_6_02_B.xlsx", 
                             col_names = FALSE)
november2021l <- november2021la                         # Duplicate data frame
colnames(november2021l) <- november2021la [3, ]          # Convert first row to header
november2021<- november2021l[-c(1,2, 3,4), ]

november2021<-november2021[-3]       
november2021<- november2021[-4]    
november2021<- november2021[-5]
november2021<- november2021[-6]
november2021<- november2021[-7]
november2021<- november2021[-8]
november2021<- november2021[-9]
november2021<- november2021[-10]
november2021<- november2021[-9]
november2021<- november2021[-9]
november2021<- november2021[-9]
november2021<- november2021[-9]
november2021<- november2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="november2014R", november2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2015R", november2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2016R", november2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2017R", november2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2018R", november2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2019R", november2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2020R", november2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="november2021R", november2021,
             overwrite=TRUE, row.names=FALSE)

december2014la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2014/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2014l <- december2014la                         
colnames(december2014l) <- december2014la [2, ]         
december2014<- december2014l[-c(1,2, 3), ]

december2014<-december2014[-3]       
december2014<- december2014[-4]    
december2014<- december2014[-5]
december2014<- december2014[-6]
december2014<- december2014[-7]
december2014<- december2014[-8]
december2014<- december2014[-9]


december2015la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2015/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2015l <- december2015la                        
colnames(december2015l) <- december2015la [3, ]         
december2015<- december2015l[-c(1,2, 3,4), ]

december2015<-december2015[-3]       
december2015<- december2015[-4]    
december2015<- december2015[-5]
december2015<- december2015[-6]
december2015<- december2015[-7]
december2015<- december2015[-8]
december2015<- december2015[-9]
december2015<- december2015[-10]
december2015<- december2015[-9]
december2015<- december2015[-9]
december2015<- december2015[-9]
december2015<- december2015[-9]
december2015<- december2015[-9]


december2016la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2016/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2016l <- december2016la                         # Duplicate data frame
colnames(december2016l) <- december2016la [3, ]          # Convert first row to header
december2016<- december2016l[-c(1,2, 3,4), ]

december2016<-december2016[-3]       
december2016<- december2016[-4]    
december2016<- december2016[-5]
december2016<- december2016[-6]
december2016<- december2016[-7]
december2016<- december2016[-8]
december2016<- december2016[-9]
december2016<- december2016[-10]
december2016<- december2016[-9]
december2016<- december2016[-9]
december2016<- december2016[-9]
december2016<- december2016[-9]
december2016<- december2016[-9]


december2017la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2017/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2017l <- december2017la                         # Duplicate data frame
colnames(december2017l) <- december2017la [3, ]          # Convert first row to header
december2017<- december2017l[-c(1,2, 3,4), ]

december2017<-december2017[-3]       
december2017<- december2017[-4]    
december2017<- december2017[-5]
december2017<- december2017[-6]
december2017<- december2017[-7]
december2017<- december2017[-8]
december2017<- december2017[-9]
december2017<- december2017[-10]
december2017<- december2017[-9]
december2017<- december2017[-9]
december2017<- december2017[-9]
december2017<- december2017[-9]
december2017<- december2017[-9]

december2018la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2018/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2018l <- december2018la                         # Duplicate data frame
colnames(december2018l) <- december2018la [3, ]          # Convert first row to header
december2018<- december2018l[-c(1,2, 3,4), ]

december2018<-december2018[-3]       
december2018<- december2018[-4]    
december2018<- december2018[-5]
december2018<- december2018[-6]
december2018<- december2018[-7]
december2018<- december2018[-8]
december2018<- december2018[-9]
december2018<- december2018[-10]
december2018<- december2018[-9]
december2018<- december2018[-9]
december2018<- december2018[-9]
december2018<- december2018[-9]
december2018<- december2018[-9]


december2019la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2019/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2019l <- december2019la                         # Duplicate data frame
colnames(december2019l) <- december2019la [3, ]          # Convert first row to header
december2019<- december2019l[-c(1,2, 3,4), ]

december2019<-december2019[-3]       
december2019<- december2019[-4]    
december2019<- december2019[-5]
december2019<- december2019[-6]
december2019<- december2019[-7]
december2019<- december2019[-8]
december2019<- december2019[-9]
december2019<- december2019[-10]
december2019<- december2019[-9]
december2019<- december2019[-9]
december2019<- december2019[-9]
december2019<- december2019[-9]
december2019<- december2019[-9]


december2020la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2020/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2020l <- december2020la                         # Duplicate data frame
colnames(december2020l) <- december2020la [3, ]          # Convert first row to header
december2020<- december2020l[-c(1,2, 3,4), ]

december2020<-december2020[-3]       
december2020<- december2020[-4]    
december2020<- december2020[-5]
december2020<- december2020[-6]
december2020<- december2020[-7]
december2020<- december2020[-8]
december2020<- december2020[-9]
december2020<- december2020[-10]
december2020<- december2020[-9]
december2020<- december2020[-9]
december2020<- december2020[-9]
december2020<- december2020[-9]
december2020<- december2020[-9]

december2021la <- read_excel("~/Documents/InstalledCapacity/installed capacity/december2021/Table_6_02_B.xlsx", 
                             col_names = FALSE)
december2021l <- december2021la                         # Duplicate data frame
colnames(december2021l) <- december2021la [3, ]          # Convert first row to header
december2021<- december2021l[-c(1,2, 3,4), ]

december2021<-december2021[-3]       
december2021<- december2021[-4]    
december2021<- december2021[-5]
december2021<- december2021[-6]
december2021<- december2021[-7]
december2021<- december2021[-8]
december2021<- december2021[-9]
december2021<- december2021[-10]
december2021<- december2021[-9]
december2021<- december2021[-9]
december2021<- december2021[-9]
december2021<- december2021[-9]
december2021<- december2021[-9]


db.rewcap <- dbConnect(SQLite(), dbname="rewcap.sqlite")

dbWriteTable(conn=db.rewcap, name="december2014R", december2014,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2015R", december2015,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2016R", december2016,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2017R", december2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2018R", december2018,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2019R", december2019,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2020R", december2020,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.rewcap, name="december2021R", december2021,
             overwrite=TRUE, row.names=FALSE)





installedcapacity_2017_2021<-rbind(february2017,february2018,february2019,february2020,february2021,
                          february2017,february2018,february2019,february2020,february2021,
                         march2017,march2018,march2019,march2020,march2021,
                         april2017,april2018,april2019,april2020,april2021,
                         may2017,may2018,may2019,may2020,may2021,
                         june2017,june2018,june2019,june2020,june2021,
                         july2017,july2018,july2019,july2020,july2021,
                         august2017,august2018,august2019,august2020,august2021,
                         september2017,september2018,september2019,september2020,september2021,
                         october2017,october2018,october2019,october2020,october2021,
                         november2017,november2018,november2019,november2020,november2021,
                         december2017,december2018,december2019,december2020,december2021)

installedcapacity_2014jan_2015oct<-rbind(february2014,february2015,
                                   february2014,february2015,
                                   march2014,march2015,
                                   april2014,april2015,
                                   may2014,may2015,
                                   june2014,june2015,
                                   july2014,july2015,
                                   august2014,august2015,
                                   september2014,september2015,
                                   october2014,october2015)

installedcapacity_2014nov_2014dec<-rbind(november2014,
                                         december2014)

installedcapacity_2015nov_2015dec<-rbind(november2015,
                                        december2015)
              


installedcapacity_2016jan_2016oct<-rbind(february2016,
                                         february2016,
                                         march2016,
                                         april2016,
                                         may2016,
                                         june2016,
                                         july2016,
                                         august2016,
                                         september2016,
                                         october2016)

installedcapacity_2016nov_2016dec<-rbind(november2016,
                                         december2016)
    


write.csv(installedcapacity_2017_2021, "~/Documents/InstalledCapacity/installedcapacity_2017_2021.csv", row.names=FALSE)
write.csv(installedcapacity_2014jan_2015oct, "~/Documents/InstalledCapacity/installedcapacity_2014jan_2015oct.csv", row.names=FALSE)


write.csv(installedcapacity_2014nov_2014dec, "~/Documents/InstalledCapacity/installedcapacity_2014nov_2014dec.csv", row.names=FALSE)
write.csv(installedcapacity_2015nov_2015dec, "~/Documents/InstalledCapacity/installedcapacity_2015nov_2015dec.csv", row.names=FALSE)


write.csv(installedcapacity_2016jan_2016oct, "~/Documents/InstalledCapacity/installedcapacity_2016jan_2016oct.csv", row.names=FALSE)
write.csv(installedcapacity_2016nov_2016dec, "~/Documents/InstalledCapacity/installedcapacity_2016nov_2016dec.csv", row.names=FALSE)

