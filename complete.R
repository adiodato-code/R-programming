complete<- function(directory, id=1:322){
	mylist<-list.files(path=directory, pattern = ".csv", full.names=TRUE )
	nobs<- numeric()

	for (i in id){
		mydata<- read.csv(mylist[i])
		nobs<- c(nobs, sum(complete.cases(mydata)))}
	data.frame(id, nobs)

}