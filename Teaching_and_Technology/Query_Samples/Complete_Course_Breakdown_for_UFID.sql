/*
 * Complete Course Breakdown for a UFID
 * Filtered by UFID   
 * Displays the Primary activated academic career information, course information, technology indicator, section component, grade, and GPA information
 *
 */                         

select B.UFID, E.TERM_CD, C.ACAD_CAR_LD AS PRIMARY_STDNT_ACAD_CAREER, F.ACAD_ORG_CD AS CLASS_DEPT, F.UF_COURSE_NUMBER, F.CLASS_NBR as SECTION, F.CRSE_LD, F.SSR_COMP_LD, H.INSTRCTN_MODE_LD,  A.GRADE_PTS , A.TAKEN_UNIT, G.GRADE_CD
from CS.WH_F_ENROLLMENT_COURSE A, CS.WH_D_MDM_PERSON B, CS.WH_D_ACAD_CAR C, CS.WH_D_TERM E, CS.WH_D_CLASS F, CS.WH_D_GRADE G, CS.WH_D_INSTRCTN_MODE H 
WHERE A.PERSON_SID = B.PERSON_SID
  AND A.ACAD_CAR_SID = C.ACAD_CAR_SID
  AND A.TERM_SID = E.TERM_SID
  AND A.GRADE_SID = G.GRADE_SID
  AND A.CLASS_SID = F.CLASS_SID
  AND A.INSTRCTN_MODE_SID = H.INSTRCTN_MODE_SID
  AND B.UFID = :1
  order by TERM_CD, UF_COURSE_NUMBER;