library(sqldf)

HPG_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 221111 Hydroelectric power generation.csv")
NEPG_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 221113 Nuclear electric power generation.csv")
#SEPG_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 221114 Solar electric power generation.csv")
#WPG_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 221115 Wind power generation.csv")

#GEPG_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 221116 Geothermal electric power generation.csv")
#BEPG_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 221117 Biomass electric power generation.csv")
PEM_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 325110 Petrochemical manufacturing.csv")
IGM_1990<-read.csv("~/Documents/Data/1990.q1-q4.by_industry/1990.q1-q4 325120 Industrial gas manufacturing.csv")



# Create new database
db.RewE <- dbConnect(SQLite(), dbname="RewE.sqlite")
db.sales <- dbConnect(SQLite(), dbname="sales.sqlite")

# Add a new table
dbWriteTable(conn=db.RewE, name="HPG_1990R", HPG_1990,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.RewE, name="NEPG_1990R", NEPG_1990,
             overwrite=TRUE, row.names=FALSE)
# dbWriteTable(conn=db.RewE, name="SEPG_1990R", SEPG_1990,
#             overwrite=TRUE, row.names=FALSE)
# dbWriteTable(conn=db.RewE, name="WPG_1990R", WPG_1990,
#             overwrite=TRUE, row.names=FALSE)
# dbWriteTable(conn=db.RewE, name="GEPG_1990R", GEPG_1990,
#            overwrite=TRUE, row.names=FALSE)
# dbWriteTable(conn=db.RewE, name="BEPG_1990R", BEPG_1990,
#            overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.RewE, name="PEM_1990R", PEM_1990,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.RewE, name="IGM_1990R", IGM_1990,
             overwrite=TRUE, row.names=FALSE)


# Query returns data frame that is held in R
HPG_1990RE<- dbGetQuery(db.RewE, "select year, qtr,  sum(month1_emplvl) as HPG_1990RE1, sum(month2_emplvl) as HPG_1990RE2, sum(month3_emplvl) as HPG_1990RE3
                from HPG_1990R where area_fips='US000' group by qtr ")
NEPG_1990RE<- dbGetQuery(db.RewE, "select qtr, sum(month1_emplvl) NEPG_1990RE1, sum(month2_emplvl) NEPG_1990RE2, sum(month3_emplvl) as NEPG_1990RE3
                from NEPG_1990R where area_fips='US000' group by qtr ")
# SEPG_1990RE<- dbGetQuery(db.RewE, "select  qtr,  sum(month1_emplvl) as SEPG_1990RE1, sum(month2_emplvl) as SEPG_1990RE2, sum(month3_emplvl as SEPG_1990RE3
#               from SEPG_1990R where area_fips='US000' group by qtr ")
#WPG_1990RE<- dbGetQuery(db.RewE, "select  qtr, sum(month1_emplvl)as WPG_1990RE1, sum(month2_emplvl) as WPG_1990RE2, sum(month3_emplvl) as WPG_1990RE3
#               from WPG_1990R where area_fips='US000' group by qtr ")
#GEPG_1990RE<- dbGetQuery(db.RewE, "select  qtr, sum(month1_emplvl) GEPG_1990RE1, sum(month2_emplvl) GEPG_1990RE2, sum(month3_emplvl) as GEPG_1990RE3
#               from GEPG_1990R where area_fips='US000' group by qtr ")
#BEPG_1990RE<- dbGetQuery(db.RewE, "select  qtr, sum(month1_emplvl) BEPG_1990RE1, sum(month2_emplvl) BEPG_1990RE1, sum(month3_emplvl) as BEPG_1990RE3
#               from BEPG_1990R where area_fips='US000' group by qtr ")
PEM_1990RE<- dbGetQuery(db.RewE, "select  qtr, sum(month1_emplvl) as PEM_1990RE1, sum(month2_emplvl) as PEM_1990RE2, sum(month3_emplvl) as PEM_1990RE3
                from PEM_1990R where area_fips='US000' group by qtr ")
IGM_1990RE<- dbGetQuery(db.RewE, "select qtr,  sum(month1_emplvl) as IGM_1990RE1, sum(month2_emplvl)  as IGM_1990RE2, sum(month3_emplvl) as IGM_1990RE3
                from IGM_1990R where area_fips='US000' group by qtr")

dbWriteTable(conn=db.RewE, name="HPG_1990REW", HPG_1990RE,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.RewE, name="NEPG_1990REW", NEPG_1990RE,
             overwrite=TRUE, row.names=FALSE)
#dbWriteTable(conn=db.RewE, name="SEPG_1990REW", SEPG_1990RE,
#           overwrite=TRUE, row.names=FALSE)
#dbWriteTable(conn=db.RewE, name="WPG_1990REW", WPG_1990RE,
#            overwrite=TRUE, row.names=FALSE)
#dbWriteTable(conn=db.RewE, name="GEPG_1990REW", GEPG_1990RE<,
#            overwrite=TRUE, row.names=FALSE)
#dbWriteTable(conn=db.RewE, name="BEPG_1990REW", BEPG_1990RE,
#            overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.RewE, name="PEM_1990REW", PEM_1990RE,
             overwrite=TRUE, row.names=FALSE)
dbWriteTable(conn=db.RewE, name="IGM_1990REW", IGM_1990RE,
             overwrite=TRUE, row.names=FALSE)


R1990_RE<- dbGetQuery(db.RewE, "select distinct * from HPG_1990REW
                       join NEPG_1990REW,PEM_1990REW,IGM_1990REW on
                       HPG_1990REW.qtr=NEPG_1990REW.qtr
                      and HPG_1990REW.qtr=PEM_1990REW.qtr 
                      and HPG_1990REW.qtr=IGM_1990REW.qtr")    

R1990_REW<- R1990_RE[-6]       
R1990_REW<- R1990_REW[-9]    
R1990_REW<- R1990_REW[-12]

dbWriteTable(conn=db.RewE, name="R1990_REWN", R1990_REW,
             overwrite=TRUE, row.names=FALSE)

R1990_REWNE<-dbGetQuery(db.RewE, "select year, qtr,
(HPG_1990RE1 + NEPG_1990RE1 + PEM_1990RE1 + IGM_1990RE1) as rempm1,
(HPG_1990RE2 + NEPG_1990RE2 + PEM_1990RE2 + IGM_1990RE2) as rempm2,
(HPG_1990RE3 + NEPG_1990RE3 + PEM_1990RE3 + IGM_1990RE3) as rempm3
                        from  R1990_REWN")

View(R1990_REWNE)





