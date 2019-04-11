Sys.setlocale("LC_CTYPE", "UTF-8")
r<-read.csv('//Users/chenrui/Desktop/project/hello.csv',header=T)
library(ggplot2)
r2016<-r[substr(r$trade_time,1,4)=='2016',]
monthes<-substr(r2016$trade_time,5,6)
r2016<-cbind(r2016,monthes)
ggplot(r2016,aes(x=monthes))+geom_histogram(stat='count',binwidth = 5,col=rainbow(7))+labs(y='Transaction volume',x='month',colour = "Cylinders")+
  ggtitle("Transaction volume from 2016.6 to 2016.12")+theme(plot.title = element_text(hjust = 0.5))

attach(r2016)
r2016$monthes<-as.character(r2016$monthes)
ave=c(mean(average_price[r2016$monthes=='06']))
ave=c(ave,mean(average_price[r2016$monthes=='07']))
ave=c(ave,mean(average_price[r2016$monthes=='08']))
ave=c(ave,mean(average_price[r2016$monthes=='09']))
ave=c(ave,mean(average_price[r2016$monthes=='10']))
ave=c(ave,mean(average_price[r2016$monthes=='11']))
ave=c(ave,mean(average_price[r2016$monthes=='12']))
ave<-cbind(c('06','07','08','09','10','11','12'),ave)
colnames(ave)<-c('month','ave')
ave<-as.data.frame(ave)
ave$ave<-substr(ave$ave,1,5)
ave$month<-as.numeric(ave$month)
ave$ave<-as.numeric(ave$ave)
ggplot(ave,aes(x=month,y=ave,group=factor(1)))+geom_point(shape=21,size=2)+geom_line()+ylim(0,10)+
  labs(y='Average price per m^2',colour='ave')+
  ggtitle("Average price for each month")+theme(plot.title = element_text(hjust = 0.5))


ggplot(r2016,aes(x=bankuai))+geom_histogram(stat='count',binwidth = 5,family = 'SimSun')





topbankuai<-sort(table(r2016$bankuai),decreasing = TRUE)
topbankuai<-as.data.frame(topbankuai)
best10<-topbankuai[1:10,]
colnames(best10)<-c('area','transaction volume')



table(r2016$floor)
lou<-as.data.frame(table(r2016$floor))
aaa=c('low floor(1-7)','mid floor(8-14)','high floor(15-)')
bbb=c(sum(lou$Freq[1:9]),sum(lou$Freq[10:20]),sum(lou$Freq[21:38]))







length(r2016$average_price[r2016$average_price<2])
length(r2016$average_price[2<r2016$average_price&r2016$average_price<4])
length(r2016$average_price[4<r2016$average_price&r2016$average_price<6])
length(r2016$average_price[6<r2016$average_price&r2016$average_price<8])
length(r2016$average_price[8<r2016$average_price&r2016$average_price<10])
length(r2016$average_price[r2016$average_price>10])




r$agent.id[order(table(r$agent.id),decreasing = TRUE)]
sort(table(r$house_type.id),decreasing = TRUE)
