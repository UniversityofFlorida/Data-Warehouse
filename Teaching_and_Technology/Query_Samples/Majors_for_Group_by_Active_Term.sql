/*
 * Breakdown for active academic program majors for an Academic group(College or School) by an active term
 * Filtered based on the academic group (of the academic  program) and term
 * Provides the College/School (Academic Group), the major/minor/certificate code (Academic plan), the specialization track (Academic Sub-plan)
 *
 */                         
SELECT A.EMPLID
      ,B.TERM_CD as EFFECTIVE_TERM
      ,C.TERM_CD AS END_TERM
      ,:2 AS TERM_CD
      ,D.ACAD_PLAN_TYPE_LD
      ,D.ACAD_PLAN_CD
      ,D.ACAD_PLAN_LD
      ,I.ACAD_SPLAN_CD
      ,I.ACAD_SPLAN_LD
      ,A.EFFDT_SID
      ,A.END_EFFDT_SID
      ,A.ACAD_PROG
      ,A.STDNT_DEGR
      ,A.PLAN_SEQUENCE
      ,H.ACAD_CAR_SD ACAD_CAR
      ,B.TERM_LD START_TERM
      ,B.TERM_BEGIN_DT
      ,C.TERM_LD END_TERM
      ,C.TERM_END_DT
  FROM CS.WH_F_CPPS A JOIN CS.WH_D_TERM B ON (A.EFF_TERM_SID = B.TERM_SID)
      JOIN CS.WH_D_TERM C ON (A.END_EFF_TERM_SID = C.TERM_SID)
      JOIN CS.WH_D_ACAD_PLAN D ON (A.ACAD_PLAN_SID = D.ACAD_PLAN_SID)
      JOIN CS.WH_D_PROG_STATUS E on (A.PROG_STATUS_SID = E.PROG_STATUS_SID)
      JOIN CS.WH_D_ACAD_PROG G ON (A.ACAD_PROG_SID = G.ACAD_PROG_SID)
      JOIN CS.WH_D_ACAD_CAR H ON (A.ACAD_CAR_SID = H.ACAD_CAR_SID)
      JOIN CS.WH_D_ACAD_SPLAN I ON (A.ACAD_SPLAN_SID = I.ACAD_SPLAN_SID)
      JOIN CS.WH_D_ACAD_GRP J on (A.ACAD_GRP_SID = J.ACAD_GRP_SID)
  WHERE E.PROG_STATUS_CD = 'AC'
     AND A.UF_MAX_CHG_TERM_FLG = 'Y'
     AND J.ACAD_GRP_CD = :1
     AND :2 BETWEEN B.TERM_CD AND C.TERM_CD
     order by EMPLID, ACAD_PLAN_TYPE_LD;
     
