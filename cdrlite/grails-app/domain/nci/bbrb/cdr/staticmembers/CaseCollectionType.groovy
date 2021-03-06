package nci.bbrb.cdr.staticmembers

class CaseCollectionType extends StaticMemberBaseClass{

    static constraints = {
    }
    
    
     def static searchable ={
         only= ['name', 'code']
        'name' name:'collectionTypeName'
        'code' name:'collectionTypeCode'
         root false
     }
    
     static mapping = {
      table 'st_case_collection_type'
      id generator:'sequence', params:[sequence:'st_case_collection_type_pk']
    }
}
