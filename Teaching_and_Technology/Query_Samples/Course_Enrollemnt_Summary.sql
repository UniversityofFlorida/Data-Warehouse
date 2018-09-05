/*
 * Course Section Enrollment Summary
 * Filtered by TERM
 * Displays course number, section department, course description, technology indicator, enrollment status, section type, enrollment capacity, reserved capacity, total enrollment
 *
 */     
 select UF_COURSE_NUMBER, ACAD_ORG_CD, CRSE_LD, INSTRCTN_MODE_LD, ENRL_STAT_LD, SSR_COMP_LD, ENRL_CAP, RSRV_CAP, ENRL_TOT   from CS.WH_D_CLASS WHERE TERM_CD = :1;       