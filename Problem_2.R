
## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.
## Do not leave blanks before paranthesis, e.g.
## BAD: data.frame (x, y)
## GOOTD: data.frame(x, y)

#a)
xmin<-c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax<-c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
#b)
xmax - xmin
#c)
avgmin<-mean(xmin)
avgmax<-mean(xmax)
#d)
xmin[xmin<avgmin]
#e)
xmin[xmax>avgmax]
#f)

## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin)<-c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmax)<-c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')

#g)
temperatures<-data.frame(xmin,xmax)

#h)
## Improve readability
temperatures<-within(temperatures, {
	xminFahrenheit=xmin*9/5+32
})

#i)
temperaturesFahrenheit <- data.frame(
  Max_temp_Fahr = xmax*9/5 + 32,
  Min_temp_Fahr = xmin*9/5 + 32
)
#j)
MonFri_temperaturesFahrenheit<-data.frame(
  Max_temp_Fahr=xmax[seq(1:5)]*9/5+32, 
  Min_temp_Fahr=xmin[seq(1:5)]*9/5+32
)
MonFri_temperaturesFahrenheit<-data.frame(
  Max_temp_Fahr = xmax[seq(length(xmax)-2)]*9/5 + 32,
  Min_temp_Fahr = xmin[seq(length(xmin)-2)]*9/5 + 32
)

## Easier

MonFri_temperaturesFahrenheit[1:5, ]
MonFri_temperaturesFahrenheit[-(6:7), ]

