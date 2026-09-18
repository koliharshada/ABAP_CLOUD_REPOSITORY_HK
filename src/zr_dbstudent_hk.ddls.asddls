@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDBSTUDENT_HK'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_DBSTUDENT_HK
  as select from ZDB_STUDENT_HK
{
  key rollnointernal as Rollnointernal,
  key student_id as StudentID,
  dept as Dept,
  firstname as Firstname,
  lastname as Lastname,
  age as Age,
  email as Email,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  lastchanged as Lastchanged,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.lastChangedBy: true
  changedby as Changedby
}
