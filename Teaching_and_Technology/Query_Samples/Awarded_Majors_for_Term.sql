/*
 * Majors awarded for a term 
 * Disclaimer:  These are for degrees that are stored in PeopleSoft. i.e. some degrees from 1915 are not recorded in PeopleSoft, but are stored in a summary object. The degree summary object will be brought over in conversion.
 *
 */
 
  SELECT M.ACAD_YR_SID,
         M.TERM_CD,
         D.UFID,
         E.ACAD_GRP_LD,
         E.ACAD_PLAN_LD,
         J.ACAD_SPLAN_LD,
         L.DEGREE_CD,
         L.DEGREE_LD
    FROM CS.WH_F_CPPS            A,
         CS.WH_D_ACAD_ORG        B,
         CS.WH_D_MDM_PERSON      D,
         CS.WH_D_ACAD_PLAN       E,
         CS.WH_D_ACAD_GRP        F,
         CS.WH_D_TERM            H,
         CS.WH_D_ACAD_PROG       I,
         CS.WH_D_ACAD_SPLAN      J,
         CS.WH_D_DEGREE          L,
         CS.WH_D_DEGR_CHKOUT_STAT O,
         CS.WH_D_TERM            M
   WHERE     A.PERSON_SID = D.PERSON_SID
         AND A.ACAD_PLAN_SID = E.ACAD_PLAN_SID
         AND A.ACAD_GRP_SID = F.ACAD_GRP_SID
         AND A.EFF_TERM_SID = H.TERM_SID
         AND A.ACAD_PROG_SID = I.ACAD_PROG_SID
         AND A.ACAD_SPLAN_SID = J.ACAD_SPLAN_SID
         AND A.DEGREE_SID = L.DEGREE_SID
         AND A.ACAD_ORG_SID = B.ACAD_ORG_SID
         AND A.DEGR_CHKOUT_STAT_SID = O.DEGR_CHKOUT_STAT_SID
         AND O.DEGR_CHKOUT_STAT_CD = 'AW'
         AND E.ACAD_PLAN_TYPE_CD = 'MAJ'
         AND A.PROG_COMPLETION_TERM_SID = M.TERM_SID
         AND M.TERM_CD = :1
ORDER BY ACAD_YR_SID,TERM_CD,UFID, ACAD_PLAN_TYPE_LD; 