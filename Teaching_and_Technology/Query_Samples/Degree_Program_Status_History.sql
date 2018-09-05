/*
 * Breakdown of a degree and program status history
 * Filtered based on the degree code
 * Provides the entire history information for a degree, provides the Academic Program and Plan attached to the degree, and indicates if the degree was awarded.
 *
 */
  SELECT C.PROG_STATUS_LD,
         A.EMPLID,
         TO_DATE (A.EFFDT_SID, 'YYYYMMDD') AS EFFECTIVE_DATE,
         H.TERM_CD,
         I.ACAD_PROG_LD,
         E.ACAD_PLAN_LD,
         O.DEGR_CHKOUT_STAT_LD,
         L.DEGREE_CD,
         L.DEGREE_LD
    FROM CS.WH_F_CPPS            A,
         CS.WH_D_PROG_STATUS     C,
         CS.WH_D_MDM_PERSON      D,
         CS.WH_D_ACAD_PLAN       E,
         CS.WH_D_ACAD_GRP        F,
         CS.WH_D_ACAD_CAR        G,
         CS.WH_D_TERM            H,
         CS.WH_D_ACAD_PROG       I,
         CS.WH_D_ACAD_SPLAN      J,
         CS.WH_D_ACAD_ORG        K,
         CS.WH_D_DEGREE          L,
         CS.WH_D_PROG_ACTION     M,
         CS.WH_D_PROG_REASON     N,
         CS.WH_D_DEGR_CHKOUT_STAT O
   WHERE     A.PROG_STATUS_SID = C.PROG_STATUS_SID
         AND A.PERSON_SID = D.PERSON_SID
         AND A.ACAD_PLAN_SID = E.ACAD_PLAN_SID
         AND A.ACAD_GRP_SID = F.ACAD_GRP_SID
         AND A.ACAD_CAR_SID = G.ACAD_CAR_SID
         AND A.EFF_TERM_SID = H.TERM_SID
         AND A.ACAD_PROG_SID = I.ACAD_PROG_SID
         AND A.ACAD_SPLAN_SID = J.ACAD_SPLAN_SID
         AND A.ACAD_ORG_SID = K.ACAD_ORG_SID
         AND A.DEGREE_SID = L.DEGREE_SID
         AND A.PROG_ACTION_SID = M.PROG_ACTION_SID
         AND A.PROG_REASON_SID = N.PROG_REASON_SID
         AND A.DEGR_CHKOUT_STAT_SID = O.DEGR_CHKOUT_STAT_SID
         AND L.DEGREE_CD = :1
ORDER BY EMPLID, EFFDT_SID;  
