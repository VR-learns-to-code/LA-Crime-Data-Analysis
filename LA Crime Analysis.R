getwd()

setwd("C:/Users/vray/OneDrive - TraceLink, Inc/Documents/Data Analytics")
#Read file

crimedata <- read.csv(file = "Crime_Data_from_2020_to_Present.csv")

str(crimedata)
#Clean up the Date Fields
crimedata$Date.Rptd <- as.POSIXct(crimedata$Date.Rptd, format = "%m/%d/%Y %H:%M:%S", tz = "UTC")
crimedata$Date.Rptd <- as.Date(crimedata$Date.Rptd)

crimedata$DATE.OCC <- as.POSIXct(crimedata$DATE.OCC, format = "%m/%d/%Y %H:%M:%S", tz = "UTC")
crimedata$DATE.OCC <- as.Date(crimedata$DATE.OCC)


#Added 2 Columns Country and State and updated them with USA & CA values
crimedata$Country <- "USA"
crimedata$State <- "CA"
#crimedata$Country <- replace(crimedata$Country, crimedata$Country == "", "USA") 
#crimedata$State <- replace(crimedata$State, crimedata$State == "", "CA") 

#Updating Empty Cells with NA
crimedata$Vict.Sex <- replace(crimedata$Vict.Sex, crimedata$Vict.Sex == "", "NA")
crimedata$Vict.Descent <- replace(crimedata$Vict.Descent, crimedata$Vict.Descent == "", "NA")
crimedata$Mocodes <- replace(crimedata$Mocodes, crimedata$Mocodes == "", "NA")
crimedata$Weapon.Used.Cd <- replace(crimedata$Weapon.Used.Cd, crimedata$Weapon.Used.Cd == "", "NA")
crimedata$Weapon.Desc <- replace(crimedata$Weapon.Desc, crimedata$Weapon.Desc == "", "NA")

#Exporting the new file to personal folder. This will be used for Tableau data analysis
write.csv(crimedata, file = "crimedata.csv")

