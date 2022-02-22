# Jeremy McWilliams
# functions for species distribution modeling
# winter/spring 2022
# jeremym@lclark.edu

# list reusable functions below


basicGbifQuery<-function(species, limit){
  #make query
  data<-occ(query=species, from="gbif", limit=limit)
  
  #traverse object
  obj<-data$gbif$data
  
  #return to calling code
  return (obj)

}