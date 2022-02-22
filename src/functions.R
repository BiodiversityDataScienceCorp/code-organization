# Jeremy McWilliams
# functions for species distribution modeling
# winter/spring 2022
# jeremym@lclark.edu

# list reusable functions below


queryGbif<-function(species, options, limit){
  
  query<-occ(query=species, from="gbif", gbifopts = options, limit=limit)
  obj<-query$gbif$data
  prop<-attributes(obj)
  data<-obj$attributes(prop)
  
  
  
  # return is super important it - it sends the result back to the code that called the function
  return (data)

}

# data cleaning functions

removeAbsent<- function(data){
  # get subset of data in which occurrenceStatus isn't PRESENT
  absent<-subset(x=data, occurrenceStatus !="PRESENT")
  # Now we use "anti_join" to redefine our data set by subtracting the "absent" rows from it.
  data<-anti_join(data, absent)
  
  return(data)


}




