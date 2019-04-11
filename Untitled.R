Sys.setlocale("LC_CTYPE", "UTF-8")
r<-read.csv('//Users/chenrui/Desktop/project/hello.csv',header=T)
jingli<-read.csv('//Users/chenrui/Desktop/project/jingli.csv',header=T)
agent<-read.csv('//Users/chenrui/Desktop/project/agent.csv',header=T)
r2017<-r[substr(r$trade_time,1,4)=='2017',]
r2016<-r[substr(r$trade_time,1,4)='2016',]
jingli2017<-cbind(as.character(r2017$mendian),as.character(r2017$xingming),as.character(r2017$bankuia),as.character(r2017$agent.id))
jingli2017<-jingli2017[!duplicated(jingli2017),]

r$elevator[r$floor>5]<-1
write.csv(r,'/Users/chenrui/Desktop/project/hello.csv',fileEncoding = 'UTF-8',row.names=FALSE)


#transaction<-cbind(r$transaction.id,r$trade_time,r$total_price,r$house.id,r$agent.id)
#colnames(transaction)<-c('transaction.id','trade_time','total_price','house_id','agent_id')
#write.csv(transaction,'/Users/chenrui/Desktop/project/transaction.csv',fileEncoding = 'UTF-8',row.names=FALSE)

#house<-cbind(r$house.id,r$square,r[,11:16],as.character(r$cjxiaoqu))
#write.csv(house,'/Users/chenrui/Desktop/project/house.csv',fileEncoding = 'UTF-8',row.names=FALSE)

#community<-cbind(as.character(r$cjxiaoqu),r$constructionTime,
#                 as.character(r$bankuai),r$communityAverage,r[,17:21])
#colnames(community)<-c('cjxiaoqu','constructionTime','bankuai','communityAverage','elevator','subway','school','hospital','supermarket')
#community<-as.data.frame(community)
#community<-community[!duplicated(community$cjxiaoqu),]
#write.csv(community,'/Users/chenrui/Desktop/project/community.csv',fileEncoding = 'UTF-8',row.names=FALSE)


house<-read.csv('//Users/chenrui/Desktop/project/house.csv',header=T)





