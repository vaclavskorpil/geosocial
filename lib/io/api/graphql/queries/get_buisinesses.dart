const String getBusinessesQuery = r"""
    query SearchBusinesses($location : String){ 
      search(location : $location){
        total
        business{
          name
          id
          url
        }
      }
    }
""";
