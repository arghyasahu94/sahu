pollutantmean <-function(pollutant,id){
temp=list.files("C:/Users/Arghya/Desktop/coursera/specdata")
alldata = data.frame()
i=0
while(i< length(id)){
i=i+1
data=read.csv(temp[i])
alldata = rbind(alldata,data)
}
#alldata
z=as.matrix(alldata)
#print(z)
x=z[,2]
c=complete.cases(z[,id[2]])
x1=x[c]
#x1
y=z[,3]
c1=complete.cases(z[,id[3]])
y1=y[c1]
#y1
if(pollutant=="sulfate"){
m=mean(as.numeric(x1))
print(m)
}else{
m=mean(as.numeric(y1))
print(m)
}
}
pollutantmean("nitrate",id=1:110)

#id=numeric()
#pollutant=""
#length(temp)
#data=read.csv(temp[331])
#length(temp)