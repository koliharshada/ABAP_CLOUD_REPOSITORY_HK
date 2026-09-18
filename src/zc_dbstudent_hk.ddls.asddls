@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZDBSTUDENT_HK'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_DBSTUDENT_HK
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_DBSTUDENT_HK
  association [1..1] to ZR_DBSTUDENT_HK as _BaseEntity on $projection.ROLLNOINTERNAL = _BaseEntity.ROLLNOINTERNAL and $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key Rollnointernal,
  key StudentID,
  Dept,
  Firstname,
  Lastname,
  Age,
  Email,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Lastchanged,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    User.Lastchangedby: true
  }
  Changedby,
  _BaseEntity
}
