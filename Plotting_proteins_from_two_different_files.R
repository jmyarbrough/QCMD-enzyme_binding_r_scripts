##Plotting two differen protines fromteh same file 

#opening data
getwd()
setwd("/Users/jyarbrou/Google Drive/Daily_work/Enzyme_binding")
## here you need to verify that the protein you are interesed in for the 1st  is on either sensor 3 or 4 or both
## Then you need to verify that the protein from the 2nd file is on either sensor 1 or 2 or both
raw_data_1st=read.csv(file.choose()) ## Protein #1  Sensors 3 and 4
raw_data_2nd=read.csv(file.choose()) ## Protein #2  Sensors 1 and 2
View(raw_data_1st)
# # make sure to load the mosaic and mosaic data package

##############################################################################################
## Frequency for sensor 3 set from first file
Sensor_3_Frequency_data_1st=raw_data_1st[ ,c("Time_3","F_3.3","F_3.5","F_3.7","F_3.9","F_3.11")]
Sensor_3_Frequency_data_1st$Time_3 <- round(Sensor_3_Frequency_data_1st$Time_3, 3)
Sensor_3_Frequency_data_1st$F_3.3 <- round(Sensor_3_Frequency_data_1st$F_3.3, 3)
Sensor_3_Frequency_data_1st$F_3.5 <- round(Sensor_3_Frequency_data_1st$F_3.5, 3)
Sensor_3_Frequency_data_1st$F_3.7 <- round(Sensor_3_Frequency_data_1st$F_3.7, 3)
Sensor_3_Frequency_data_1st$F_3.9 <- round(Sensor_3_Frequency_data_1st$F_3.9, 3)
Sensor_3_Frequency_data_1st$F_3.11 <- round(Sensor_3_Frequency_data_1st$F_3.11, 3)
Sensor_3_Frequency_data_1st$minutes_3<-Sensor_3_Frequency_data_1st$Time_3/60
Sensor_3_Frequency_data_1st$minutes_3 <- round(Sensor_3_Frequency_data_1st$minutes_3,5)
## Frequency for sensor 4 set
Sensor_4_Frequency_data_1st=raw_data_1st[ ,c("Time_4","F_4.3","F_4.5","F_4.7","F_4.9","F_4.11")]
Sensor_4_Frequency_data_1st$Time_4 <- round(Sensor_4_Frequency_data_1st$Time_4, 3)
Sensor_4_Frequency_data_1st$F_4.3 <- round(Sensor_4_Frequency_data_1st$F_4.3, 3)
Sensor_4_Frequency_data_1st$F_4.5 <- round(Sensor_4_Frequency_data_1st$F_4.5, 3)
Sensor_4_Frequency_data_1st$F_4.7 <- round(Sensor_4_Frequency_data_1st$F_4.7, 3)
Sensor_4_Frequency_data_1st$F_4_.9 <- round(Sensor_4_Frequency_data_1st$F_4.9, 3)
Sensor_4_Frequency_data_1st$F_4.11 <- round(Sensor_4_Frequency_data_1st$F_4.11, 3)
Sensor_4_Frequency_data_1st$minutes_4<-Sensor_4_Frequency_data_1st$Time_4/60
Sensor_4_Frequency_data_1st$minutes_4 <- round(Sensor_4_Frequency_data_1st$minutes_4,5)
## Frequency for sensor 3 set from 2nd data set C3
Sensor_1_Frequency_data_2nd=raw_data_2nd[ ,c("Time_1","F_1.1","F_1.3","F_1.5","F_1.7","F_1.9","F_1.11")]
Sensor_1_Frequency_data_2nd$Time_1 <- round(Sensor_1_Frequency_data_2nd$Time_1, 3)
Sensor_1_Frequency_data_2nd$F_1.1 <- round(Sensor_1_Frequency_data_2nd$F_1.1, 3)
Sensor_1_Frequency_data_2nd$F_1.3 <- round(Sensor_1_Frequency_data_2nd$F_1.3, 3)
Sensor_1_Frequency_data_2nd$F_1.5 <- round(Sensor_1_Frequency_data_2nd$F_1.5, 3)
Sensor_1_Frequency_data_2nd$F_1.7 <- round(Sensor_1_Frequency_data_2nd$F_1.7, 3)
Sensor_1_Frequency_data_2nd$F_1.9 <- round(Sensor_1_Frequency_data_2nd$F_1.9, 3)
Sensor_1_Frequency_data_2nd$F_1.11 <- round(Sensor_1_Frequency_data_2nd$F_1.11, 3)
Sensor_1_Frequency_data_2nd$minutes_1<-Sensor_1_Frequency_data_2nd$Time_1/60
Sensor_1_Frequency_data_2nd$minutes_1 <- round(Sensor_1_Frequency_data_2nd$minutes_1,5)
## Frequency for sensor 4 set from 2nd data set
Sensor_2_Frequency_data_2nd=raw_data_2nd[ ,c("Time_2","F_2.1","F_2.3","F_2.5","F_2.7","F_2.9","F_2.11")]
Sensor_2_Frequency_data_2nd$Time_2 <- round(Sensor_2_Frequency_data_2nd$Time_2, 3)
Sensor_2_Frequency_data_2nd$F_2.1 <- round(Sensor_2_Frequency_data_2nd$F_2.1, 3)
Sensor_2_Frequency_data_2nd$F_2.3 <- round(Sensor_2_Frequency_data_2nd$F_2.3, 3)
Sensor_2_Frequency_data_2nd$F_2.5 <- round(Sensor_2_Frequency_data_2nd$F_2.5, 3)
Sensor_2_Frequency_data_2nd$F_2.7 <- round(Sensor_2_Frequency_data_2nd$F_2.7, 3)
Sensor_2_Frequency_data_2nd$F_2.9 <- round(Sensor_2_Frequency_data_2nd$F_2.9, 3)
Sensor_2_Frequency_data_2nd$F_2.11 <- round(Sensor_2_Frequency_data_2nd$F_2.11, 3)
Sensor_2_Frequency_data_2nd$minutes_2<-Sensor_2_Frequency_data_2nd$Time_2/60
Sensor_2_Frequency_data_2nd$minutes_2 <- round(Sensor_2_Frequency_data_2nd$minutes_2,5)

###############################################################################################################
##Disipation for Sensor 3 from th 1st data set
Sensor_3_disipation_data_1st=raw_data_1st[ ,c("Time_3","D_3.3","D_3.5","D_3.7","D_3.9","D_3.11")]
Sensor_3_disipation_data_1st$Time_3 <- round(Sensor_3_disipation_data_1st$Time_3, 3)
Sensor_3_disipation_data_1st$D_3.3 <- round(Sensor_3_disipation_data_1st$D_3.3, 3)
Sensor_3_disipation_data_1st$D_3.5 <- round(Sensor_3_disipation_data_1st$D_3.5, 3)
Sensor_3_disipation_data_1st$D_3.7 <- round(Sensor_3_disipation_data_1st$D_3.7, 3)
Sensor_3_disipation_data_1st$D_3.9 <- round(Sensor_3_disipation_data_1st$D_3.9, 3)
Sensor_3_disipation_data_1st$D_3.11 <- round(Sensor_3_disipation_data_1st$D_3.11, 3)
##Disipation for Sensor 4 from th 1st data set
Sensor_4_disipation_data_1st=raw_data_1st[ ,c("Time_4","D_4.3","D_4.5","D_4.7","D_4.9","D_4.11")]
Sensor_4_disipation_data_1st$Time_4 <- round(Sensor_4_disipation_data_1st$Time_4, 3)
Sensor_4_disipation_data_1st$D_4.3 <- round(Sensor_4_disipation_data_1st$D_4.3, 3)
Sensor_4_disipation_data_1st$D_4.5 <- round(Sensor_4_disipation_data_1st$D_4.5, 3)
Sensor_4_disipation_data_1st$D_4.7 <- round(Sensor_4_disipation_data_1st$D_4.7, 3)
Sensor_4_disipation_data_1st$D_4.9 <- round(Sensor_4_disipation_data_1st$D_4.9, 3)
Sensor_4_disipation_data_1st$D_4.11 <- round(Sensor_4_disipation_data_1st$D_4.11, 3)
##Disipation for Sensor 3 from 2nd set
Sensor_1_disipation_data_2nd=raw_data_2nd[ ,c("Time_1","D_1.1","D_1.3","D_1.5","D_1.7","D_1.9","D_1.11")]
Sensor_1_disipation_data_2nd$Time_1 <- round(Sensor_1_disipation_data_2nd$Time_1, 3)
Sensor_1_disipation_data_2nd$D_1.1 <- round(Sensor_1_disipation_data_2nd$D_1.1, 3)
Sensor_1_disipation_data_2nd$D_1.3 <- round(Sensor_1_disipation_data_2nd$D_1.3, 3)
Sensor_1_disipation_data_2nd$D_1.5 <- round(Sensor_1_disipation_data_2nd$D_1.5, 3)
Sensor_1_disipation_data_2nd$D_1.7 <- round(Sensor_1_disipation_data_2nd$D_1.7, 3)
Sensor_1_disipation_data_2nd$D_1.9 <- round(Sensor_1_disipation_data_2nd$D_1.9, 3)
Sensor_1_disipation_data_2nd$D_1.11 <- round(Sensor_1_disipation_data_2nd$D_1.11, 3)
##Disipation for Sensor 4 from 2nd set
Sensor_2_disipation_data_2nd=raw_data_2nd[ ,c("Time_2","D_2.1","D_2.3","D_2.5","D_2.7","D_2.9","D_2.11")]
Sensor_2_disipation_data_2nd$Time_2 <- round(Sensor_2_disipation_data_2nd$Time_2, 3)
Sensor_2_disipation_data_2nd$D_2.1 <- round(Sensor_2_disipation_data_2nd$D_2.1, 3)
Sensor_2_disipation_data_2nd$D_2.3 <- round(Sensor_2_disipation_data_2nd$D_2.3, 3)
Sensor_2_disipation_data_2nd$D_2.5 <- round(Sensor_2_disipation_data_2nd$D_2.5, 3)
Sensor_2_disipation_data_2nd$D_2.7 <- round(Sensor_2_disipation_data_2nd$D_2.7, 3)
Sensor_2_disipation_data_2nd$D_2.9 <- round(Sensor_2_disipation_data_2nd$D_2.9, 3)
Sensor_2_disipation_data_2nd$D_2.11 <- round(Sensor_2_disipation_data_2nd$D_2.11, 3)

#############################################################
##Plotting
##Plotting for Sensor 1 from 1st set
x_3_1st=Sensor_3_Frequency_data_1st$minutes_3
F_3_1_1st=Sensor_3_Frequency_data_1st$F_3.1 
F_3_3_1st=Sensor_3_Frequency_data_1st$F_3.3 
F_3_5_1st=Sensor_3_Frequency_data_1st$F_3.5 
F_3_7_1st=Sensor_3_Frequency_data_1st$F_3.7 
F_3_9_1st=Sensor_3_Frequency_data_1st$F_3.9 
F_3_11_1st=Sensor_3_Frequency_data_1st$F_3.11 
 
D_3_1_1st=Sensor_3_disipation_data_1st$D_3.1 
D_3_3_1st=Sensor_3_disipation_data_1st$D_3.3 
D_3_5_1st=Sensor_3_disipation_data_1st$D_3.5 
D_3_7_1st=Sensor_3_disipation_data_1st$D_3.7 
D_3_9_1st=Sensor_3_disipation_data_1st$D_3.9 
D_3_11_1st=Sensor_3_disipation_data_1st$D_3.11 
## Plotting for sensor 4 from 1st set
x_4_1st=Sensor_4_Frequency_data_1st$minutes_4
F_4_1_1st=Sensor_4_Frequency_data_1st$F_4.1 
F_4_3_1st=Sensor_4_Frequency_data_1st$F_4.3 
F_4_5_1st=Sensor_4_Frequency_data_1st$F_4.5 
F_4_7_1st=Sensor_4_Frequency_data_1st$F_4.7 
F_4_9_1st=Sensor_4_Frequency_data_1st$F_4.9 
F_4_11_1st=Sensor_4_Frequency_data_1st$F_4.11 

D_4_1_1st=Sensor_4_disipation_data_1st$D_4.1 
D_4_3_1st=Sensor_4_disipation_data_1st$D_4.3 
D_4_5_1st=Sensor_4_disipation_data_1st$D_4.5 
D_4_7_1st=Sensor_4_disipation_data_1st$D_4.7 
D_4_9_1st=Sensor_4_disipation_data_1st$D_4.9 
D_4_11_1st=Sensor_4_disipation_data_1st$D_4.11 
######################################################################

##Plotting for Sensor 1 from 2nd set
x_1_1_2nd=Sensor_1_Frequency_data_2nd$minutes_1
F_1_1_2nd=Sensor_1_Frequency_data_2nd$F_1.1 
F_1_3_2nd=Sensor_1_Frequency_data_2nd$F_1.3 
F_1_5_2nd=Sensor_1_Frequency_data_2nd$F_1.5 
F_1_7_2nd=Sensor_1_Frequency_data_2nd$F_1.7 
F_1_9_2nd=Sensor_1_Frequency_data_2nd$F_1.9 
F_1_11_2nd=Sensor_1_Frequency_data_2nd$F_1.11 

D_1_1_2nd=Sensor_1_disipation_data_2nd$D_1.1 
D_1_3_2nd=Sensor_1_disipation_data_2nd$D_1.3 
D_1_5_2nd=Sensor_1_disipation_data_2nd$D_1.5 
D_1_7_2nd=Sensor_1_disipation_data_2nd$D_1.7 
D_1_9_2nd=Sensor_1_disipation_data_2nd$D_1.9 
D_1_11_2nd=Sensor_1_disipation_data_2nd$D_1.11 
## Plotting for sensor 2 from 2ns set
x_2_2nd=Sensor_2_Frequency_data_2nd$minutes_2
F_2_1_2nd=Sensor_2_Frequency_data_2nd$F_2.1
F_2_3_2nd=Sensor_2_Frequency_data_2nd$F_2.3 
F_2_5_2nd=Sensor_2_Frequency_data_2nd$F_2.5 
F_2_7_2nd=Sensor_2_Frequency_data_2nd$F_2.7 
F_2_9_2nd=Sensor_2_Frequency_data_2nd$F_2.9 
F_2_11_2nd=Sensor_2_Frequency_data_2nd$F_2.11 

D_2_1_2nd=Sensor_2_disipation_data_2nd$D_2.1 
D_2_3_2nd=Sensor_2_disipation_data_2nd$D_2.3 
D_2_5_2nd=Sensor_2_disipation_data_2nd$D_2.5 
D_2_7_2nd=Sensor_2_disipation_data_2nd$D_2.7 
D_2_9_2nd=Sensor_2_disipation_data_2nd$D_2.9 
D_2_11_2nd=Sensor_2_disipation_data_2nd$D_2.11 


##########################################
##Plotting Frequeny
plot(x_1_1_2nd,F_1_3_2nd,type="l",col="red",xlab="Time (minutes)",
     ylab="Change in Frequency (Hz)",
     main=expression(Protein~1~and~Protein~2~on~Substrate~of~choice), 
     ylim=c(-110,110),xlim=c(0,120))
par(new=TRUE)
plot(x_1_1_2nd,F_1_5_2nd,type="l",col="red3",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_1_1_2nd,F_1_7_2nd,type="l",col="red4",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_1_1_2nd,F_1_9_2nd,type="l",col="maroon",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_1_1_2nd,F_1_11_2nd,type="l",col="maroon4",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)

plot(x_3_1st,F_3_3_1st,type="l",col="deepskyblue2",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,F_3_5_1st,type="l",col="dodgerblue2",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,F_3_7_1st,type="l",col="dodgerblue4",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,F_3_9_1st,type="l",col="blue",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,F_3_11_1st,type="l",col="darkslateblue",ylim=c(-110,110),xlim=c(0,120),xlab="",ylab="")
legend("topleft",c("Protein 1 F-3", "Protein 1 F-5","Protein 1 F-7","Protein 1 F-9", "Protein 1 F-11", 
                   "Protein 2 F-3", "Protein 2 F-5","Protein 2 F-7","Protein 2 F-9", "Protein 2 F-11"), 
       col = c("red","red3","red4","maroon","maroon4",
      "deepskyblue2","dodgerblue2","dodgerblue4","blue","darkslateblue"),bty="n",y.intersp=1,
       lty=c(1,1,1,1,1,1,1,1,1,1),lwd=c(2,2,2,2,2,2,2,2,2,2),ncol=2,cex=0.75)

#######################################################################################
## Plotting Dissipation
plot(x_1_1_2nd,D_1_3_2nd,type="l",col="red",xlab="Time (minutes)",
     ylab="Change in Dissipation",
   main=expression(Protein~1~and~Protein~2~on~Substrate~of~choice), 
     ylim=c(-5,50),xlim=c(0,120))
par(new=TRUE)
plot(x_1_1_2nd,D_1_5_2nd,type="l",col="red3",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_1_1_2nd,D_1_7_2nd,type="l",col="red4",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_1_1_2nd,D_1_9_2nd,type="l",col="maroon",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_1_1_2nd,D_1_11_2nd,type="l",col="maroon4",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)

plot(x_3_1st,D_3_3_1st,type="l",col="deepskyblue2",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,D_3_5_1st,type="l",col="dodgerblue2",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,D_3_7_1st,type="l",col="dodgerblue4",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,D_3_9_1st,type="l",col="blue",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
par(new=TRUE)
plot(x_3_1st,D_3_11_1st,type="l",col="darkslateblue",ylim=c(-5,50),xlim=c(0,120),xlab="",ylab="")
legend("bottomright",c("Protein 1 D-3","Protein 1 D-5","Protein 1 D-7","Protein 1 D-9","Protein 1 D-11", 
                       "Protein 2 D-3","Protein 2 D-5","Protein 2 D-7","Protein 2 D-9", "Protein 2 D-11"), 
       col = c("red","red3","red4","maroon","maroon4",
        "deepskyblue2","dodgerblue2","dodgerblue4","blue","darkslateblue"),bty="n",y.intersp=1,
       lty=c(1,1,1,1,1,1,1,1,1,1),lwd=c(2,2,2,2,2,2,2,2,2,2),ncol=2,cex=0.75)


###########################################################
##################################################
#Now plotting mass and number of molecules
####################################### Sensor 3 1st data set mass 
######################################
### Data from the 1st data set
Sensor_3_mass_data_1st=raw_data_1st[ ,c("Time_3","mass_sensor_3")]
Sensor_3_mass_data_1st$Time_3 <- round(Sensor_3_mass_data_1st$Time_3, 3)
Sensor_3_mass_data_1st$mass_sensor_3 <- round(Sensor_3_mass_data_1st$mass_sensor_3, 3)
Sensor_3_mass_data_1st$minutes_3<-Sensor_3_mass_data_1st$Time_3/60
##Here you will need to know the molecular weight of the protein
Sensor_3_mass_data_1st$molecules_3<-Sensor_3_mass_data_1st$mass_sensor_3*(10^-9)/(8.742946647*(10^-20))/(10^12)
Sensor_3_mass_data_1st$minutes_3 <- round(Sensor_3_mass_data_1st$minutes_3,5)
################################ Sensor 4 1st data set mass
######
Sensor_4_mass_data_1st=raw_data_1st[ ,c("Time_4","mass_sensor_4")]
Sensor_4_mass_data_1st$Time_4 <- round(Sensor_4_mass_data_1st$Time_4, 3)
Sensor_4_mass_data_1st$mass_sensor_4 <- round(Sensor_4_mass_data_1st$mass_sensor_4, 3)
Sensor_4_mass_data_1st$minutes_4<-Sensor_4_mass_data_1st$Time_4/60
##Here you will need to know the molecular weight of the protein
Sensor_4_mass_data_1st$molecules_4<-Sensor_4_mass_data_1st$mass_sensor_4*(10^-9)/(8.742946647*(10^-20))/(10^12)
Sensor_4_mass_data_1st$minutes_4 <- round(Sensor_4_mass_data_1st$minutes_4,5)


################################ Sensor 3 2nd data set mass 
#####
### Data from the 2nd data set
Sensor_1_mass_data_2nd=raw_data_2nd[ ,c("Time_1","mass_sensor_1")]
Sensor_1_mass_data_2nd$Time_1 <- round(Sensor_1_mass_data_2nd$Time_1, 3)
Sensor_1_mass_data_2nd$mass_sensor_1 <- round(Sensor_1_mass_data_2nd$mass_sensor_1, 3)
Sensor_1_mass_data_2nd$minutes_1<-Sensor_1_mass_data_2nd$Time_1/60
##Here you will need to know the molecular weight of the protein
Sensor_1_mass_data_2nd$molecules_1<-Sensor_1_mass_data_2nd$mass_sensor_1*(10^-9)/(8.742946647*(10^-20))/(10^12)
Sensor_1_mass_data_2nd$minutes_1 <- round(Sensor_1_mass_data_2nd$minutes_1,5)

################################ Sensor 4 2nd data set mass 
#####
Sensor_2_mass_data_2nd=raw_data_2nd[ ,c("Time_2","mass_sensor_2")]
Sensor_2_mass_data_2nd$Time_2 <- round(Sensor_2_mass_data_2nd$Time_2, 3)
Sensor_2_mass_data_2nd$mass_sensor_2 <- round(Sensor_2_mass_data_2nd$mass_sensor_2, 3)
Sensor_2_mass_data_2nd$minutes_2<-Sensor_2_mass_data_2nd$Time_2/60
##Here you will need to know the molecular weight of the protein
Sensor_2_mass_data_2nd$molecules_2<-Sensor_2_mass_data_2nd$mass_sensor_2*(10^-9)/(8.742946647*(10^-20))/(10^12)
Sensor_2_mass_data_2nd$minutes_2 <- round(Sensor_2_mass_data_2nd$minutes_2,5)
###Sensor 3

################################ Plotting mass
################################ Redefinig mass and molecules
#####
#x_1=Sensor_3_mass_data$minutes_1
M_3_3_1st=Sensor_3_mass_data_1st$mass_sensor_3
mol_3_3_1st=Sensor_3_mass_data_1st$molecules_3
#x_3=Sensor_3_mass_data$minutes_3
M_1_3_2nd=Sensor_1_mass_data_2nd$mass_sensor_1
mol_1_3_2nd=Sensor_1_mass_data_2nd$molecules_1
################################  Plotting the amount of mass deposited onto the surface of the sensor
#####
##Plotting protien 2
plot(x_1_1_2nd,M_1_3_2nd,type="l",col="red",xlab="Time (minutes)",
     ylab="Change in mass (ng)",
     main=expression(Protein~2~and~Protein~1), 
     ylim=c(-5,1500),xlim=c(0,120))
par(new=TRUE)
##Plotting Protein 1
plot(x_3_1st,M_3_3_1st,type="l",col="blue",ylim=c(-5,1500),xlim=c(0,120),xlab="",ylab="")
legend("topright",c("Protein 2","Protein 1"), 
       col = c("red","blue"),bty="n",y.intersp=1,
       lty=c(1,1),lwd=c(3,3))
#######
## Plotting the number of molecuels that have adsorbed/bound to ethe surface of the sensor
## For Protein 2
plot(x_1_1_2nd,mol_1_3_2nd,type="l",col="red",xlab="Time (minutes)",
     ylab="Change in Number of Molecules (10^12)",
     main=expression(Protein~2~and~Protein~1), 
     ylim=c(0,15),xlim=c(0,120))
par(new=TRUE)
##Plotting protein 1
plot(x_3_1st,mol_3_3_1st,type="l",col="blue",ylim=c(0,15),xlim=c(0,120),xlab="",ylab="")
legend("topleft",c("Protein 2","Protein 1"), 
       col = c("red","blue"),bty="n",y.intersp=1,
       lty=c(1,1),lwd=c(3,3))


##### Needing to normaize the data, basially I am taking the number of proteins and dividing it with 
## the dissipation, this way we can see the dissipation/molecule
Sensor_3_mass_data_1st$dis_per_mol_3<-(Sensor_3_disipation_data_1st$D_3.3)/(Sensor_3_mass_data_1st$molecules_3)
Sensor_1_mass_data_2nd$dis_per_mol_1<-(Sensor_1_disipation_data_2nd$D_1.3)/(Sensor_1_mass_data_2nd$molecules_1)
##Plotting
##Plotting for Sensor 1
x_3_t_1st=Sensor_3_mass_data_1st$minutes_3
D_M_3_3_1st=Sensor_3_mass_data_1st$dis_per_mol_3
x_1_t_2nd=Sensor_1_mass_data_2nd$minutes_1
D_M_1_3_2nd=Sensor_1_mass_data_2nd$dis_per_mol_1

##Plotting normalized data just to see what it looks like
## Plotting Protein 2
plot(x_1_t_2nd,D_M_1_3_2nd,type="l",lwd=3,col="red",xlab="Time (minutes)",
     ylab="Change in Dissipation",
     main=expression(Protein~2~and~Protein~1~on~Substrate~of~choice), 
     ylim=c(0,15),xlim=c(10,90))
par(new=TRUE)
##Plotting Protein 1
plot(x_3_t_1st,D_M_3_3_1st,type="l",lty=1,lwd=3,col="blue", 
     ylim=c(0,15),xlim=c(10,90),xlab="",ylab="")
legend("topleft",c("Protein 2","Protein 1"), 
       col = c("red","blue"),bty="n",y.intersp=1,
       lty=c(1,1),lwd=c(3,3))

#################################################################
## Plotting the dissipation from a very specific region because the timeing is off between the two files
## this is important to remember because you truely are not looking at the difference.
## So here I had to create a new spreadsheet with the dissipation data from D_3.3  if you view
## this data, you will see 3 columns, Time_3, D_3.3, and minutes_3
## For Protein 1
Sensor_3_diss_data_1st=raw_data_1st[200:4500 ,c("Time_3","D_3.3")]
Sensor_3_diss_data_1st$Time_3a <- round(Sensor_3_diss_data_1st$Time_3, 3)
Sensor_3_diss_data_1st$D_3.3a <- round(Sensor_3_diss_data_1st$D_3.3, 3)
Sensor_3_diss_data_1st$minutes_3a<-Sensor_3_diss_data_1st$Time_3/60
Sensor_3_diss_data_1st$minutes_3a<- round(Sensor_3_diss_data_1st$minutes_3,5)
xd_t_1st=Sensor_3_diss_data_1st$minutes_3a
D3_1st=Sensor_3_diss_data_1st$D_3.3a 

Sensor_3_mass_data_1st=raw_data_1st[200:4500 ,c("Time_3","mass_sensor_3")]
Sensor_3_mass_data_1st$Time_3a <- round(Sensor_3_mass_data_1st$Time_3, 3)
Sensor_3_mass_data_1st$mass_sensor_3a <- round(Sensor_3_mass_data_1st$mass_sensor_3, 3)
Sensor_3_mass_data_1st$minutes_3a<-Sensor_3_mass_data_1st$Time_3/60
## need to know the molecular weight of Protein 1
Sensor_3_mass_data_1st$molecules_3a<-Sensor_3_mass_data_1st$mass_sensor_3*(10^-9)/(8.742946647*(10^-20))/(10^12)
Sensor_3_mass_data_1st$minutes_3a <- round(Sensor_3_mass_data_1st$minutes_3,5)
################################ Sensor 4 1st data set mass

## For Protein 2
Sensor_1_diss_data_2nd=raw_data_2nd[200:4500 ,c("Time_1","D_1.3")]
Sensor_1_diss_data_2nd$Time_1a <- round(Sensor_1_diss_data_2nd$Time_1, 3)
Sensor_1_diss_data_2nd$D_1.3a <- round(Sensor_1_diss_data_2nd$D_1.3, 3)
Sensor_1_diss_data_2nd$minutes_1a<-Sensor_1_diss_data_2nd$Time_1/60
Sensor_1_diss_data_2nd$minutes_1a<- round(Sensor_1_diss_data_2nd$minutes_1,5)
xd_t_2nd=Sensor_1_diss_data_2nd$minutes_1a
D1_2nd=Sensor_1_diss_data_2nd$D_1.3a 

Sensor_1_mass_data_2nd=raw_data_2nd[ 200:4500,c("Time_1","mass_sensor_1")]
Sensor_1_mass_data_2nd$Time_1a <- round(Sensor_1_mass_data_2nd$Time_1, 3)
Sensor_1_mass_data_2nd$mass_sensor_1a <- round(Sensor_1_mass_data_2nd$mass_sensor_1, 3)
Sensor_1_mass_data_2nd$minutes_1a<-Sensor_1_mass_data_2nd$Time_1/60
## Need to know the moleculare weight of the protein
Sensor_1_mass_data_2nd$molecules_1a<-Sensor_1_mass_data_2nd$mass_sensor_1*(10^-9)/(8.742946647*(10^-20))/(10^12)
Sensor_1_mass_data_2nd$minutes_1a <- round(Sensor_1_mass_data_2nd$minutes_1,5)


Sensor_3_mass_data_1st$dis_per_mol_3a<-(Sensor_3_diss_data_1st$D_3.3a)/(Sensor_3_mass_data_1st$molecules_3a)
Sensor_1_mass_data_2nd$dis_per_mol_1a<-(Sensor_1_diss_data_2nd$D_1.3a)/(Sensor_1_mass_data_2nd$molecules_1a)
##Plotting
##Plotting for Sensor 1
x_3_t_1st_a=Sensor_3_diss_data_1st$minutes_3a
D_M_3_3_1st_a=Sensor_3_mass_data_1st$dis_per_mol_3a
x_1_t_2nd_a=Sensor_1_mass_data_2nd$minutes_1a
D_M_1_3_2nd_a=Sensor_1_mass_data_2nd$dis_per_mol_1a


################################  
### Here I am looking at actually subtracting the dissipation from both normalized dissipatioin
subtract_data=D_M_1_3_2nd_a-D_M_3_3_1st_a

plot(x_1_t_2nd_a,D_M_1_3_2nd_a,type="l",col="red",xlab="Time (minutes)",
     ylab="Dissipation (10^-12)",
     main=expression(Protein~2~and~Prorein~1), 
     ylim=c(-5,20),xlim=c(10,80))
par(new=TRUE)
plot(x_3_t_1st_a,D_M_3_3_1st_a,type="l",col="blue",ylim=c(-5,20),xlim=c(10,80),xlab="",ylab="")
par(new=TRUE)
plot(x_3_t_1st_a,subtract_data,type="l",col="black",ylim=c(-5,20),xlim=c(10,80),xlab="",ylab="")
legend("topleft",c("Protein 2","Protein 1","Difference Protein 2 - Protein 1"), 
       col = c("red","blue","black"),bty="n",y.intersp=1,
       lty=c(1,1,1),lwd=c(3,3,3))

