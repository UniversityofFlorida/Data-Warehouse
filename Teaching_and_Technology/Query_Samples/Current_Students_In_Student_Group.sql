/*
 * List Students within a Student Group as of today (Cohort (UFO), Special Program, etc)
 * Filtered by Student Group Code  
 * Displays the UFIDS that are current in the student group
 *
 */ 

 select D.UFID from CS.WH_B_PERSON_STDNT_GRP A, CS.WH_D_STDNT_GROUP  B, SYSADM.WH_D_UF_DAY C, CS.WH_D_MDM_PERSON D
  WHERE A.STDNT_GROUP_SID  = B.STDNT_GROUP_SID
  AND B.STDNT_GROUP_CD = :1
  AND A.PERSON_SID = D.PERSON_SID
  AND C.DAY_SID BETWEEN A.EFFDT_SID AND END_EFFDT_SID
  AND C.UF_DAY_CUR_FLG = 'Y';
     
     