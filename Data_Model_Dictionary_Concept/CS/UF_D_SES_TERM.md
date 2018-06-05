# UF_D_SES_TERM

 UF_D_SES_TERM is a type 1 (max effective change) dimension. This dimension contains information on the term's session for the Academic Career. This dimension drills into the term's modules such as Summer A and Summer B. The join between this dimension and the fact table should be with SES_TERM_SID.


| UF_D_SES_TERM | SES_TERM_SID      | NUMBER       | 22 | 10 | Term Session Surrogate Identification (Granular term sessions, i.e. Summer A, Summer B, Eight week sessions)                         |
|---------------|-------------------|--------------|----|----|--------------------------------------------------------------------------------------------------------------------------------------|
| UF_D_SES_TERM | INSTITUTION_SID   | NUMBER       | 22 | 10 | Institution surrogate identification                                                                                                 |
| UF_D_SES_TERM | INSTITUTION_CD    | VARCHAR2     | 5  |    | Institution Code - Currently all values contain UFLOR for University of Florida                                                      |
| UF_D_SES_TERM | INSTITUTION_SD    | VARCHAR2     | 10 |    | Institution Short Description of the Institution code                                                                                |
| UF_D_SES_TERM | INSTITUTION_LD    | VARCHAR2     | 30 |    | Institution Long Description of the Institution code                                                                                 |
| UF_D_SES_TERM | ACAD_CAR_SID      | NUMBER       | 22 | 10 | Academic Career surrogate identification                                                                                             |
| UF_D_SES_TERM | ACAD_CAR_CD       | VARCHAR2     | 4  |    | Academic Career Code - designates all course work undertaken by a student at an academic institution                                 |
| UF_D_SES_TERM | ACAD_CAR_SD       | VARCHAR2     | 10 |    | Academic Career Short Description for the Academic Career Code                                                                       |
| UF_D_SES_TERM | ACAD_CAR_LD       | VARCHAR2     | 30 |    | Academic Career Long Description for the Academic Career Code                                                                        |
| UF_D_SES_TERM | TERM_SID          | NUMBER       | 22 | 10 | Term surrogate identification                                                                                                        |
| UF_D_SES_TERM | TERM_CD           | VARCHAR2     | 4  |    | Term Identification Code                                                                                                             |
| UF_D_SES_TERM | TERM_SD           | VARCHAR2     | 10 |    | Term Short Description                                                                                                               |
| UF_D_SES_TERM | TERM_LD           | VARCHAR2     | 30 |    | Term Long Description                                                                                                                |
| UF_D_SES_TERM | ACAD_YR_SID       | NUMBER       | 22 | 10 | Academic Year Surrogate Identification - Corresponds to the same four digit year                                                     |
| UF_D_SES_TERM | SESSION_CODE      | VARCHAR2     | 3  |    | Session Code of the term  - Provides additional ranges within  the term (for example: Summer A)                                      |
| UF_D_SES_TERM | SESSION_CD        | VARCHAR2     | 3  |    | Session Code of the term  - Provides additional ranges within  the term (for example: Summer A)                                      |
| UF_D_SES_TERM | SESSION_SD        | VARCHAR2     | 10 |    | Session Code Short Description                                                                                                       |
| UF_D_SES_TERM | SESSION_LD        | VARCHAR2     | 30 |    | Session Code Long Description                                                                                                        |
| UF_D_SES_TERM | UF_ABC            | VARCHAR2     | 1  |    | Indicates if the session is Summer A, Summer B, or Summer C for the term                                                             |
| UF_D_SES_TERM | SESSION_BEGIN_DT  | DATE         | 7  |    | Begin date of the session                                                                                                            |
| UF_D_SES_TERM | SESSION_END_DT    | DATE         | 7  |    | End date of the session                                                                                                              |
| UF_D_SES_TERM | TERM_BEGIN_DT     | DATE         | 7  |    | Begin Date of the term                                                                                                               |
| UF_D_SES_TERM | TERM_END_DT       | DATE         | 7  |    | End Date of the term                                                                                                                 |
| UF_D_SES_TERM | TERM_CTGRY_CD     | VARCHAR2     | 1  |    | Category/Classification of the Term                                                                                                  |
| UF_D_SES_TERM | TERM_CTGRY_SD     | VARCHAR2     | 10 |    | Category/Classification Short Description                                                                                            |
| UF_D_SES_TERM | TERM_CTGRY_LD     | VARCHAR2     | 30 |    | Category/Classification Long Description                                                                                             |
| UF_D_SES_TERM | HOLIDAY_SCHED_CD  | VARCHAR2     | 6  |    | Term Holiday Schedule Code - Currently not utilized                                                                                  |
| UF_D_SES_TERM | HOLIDAY_SCHED_SD  | VARCHAR2     | 10 |    | Term Holiday Schedule Short Description                                                                                              |
| UF_D_SES_TERM | HOLIDAY_SCHED_LD  | VARCHAR2     | 30 |    | Term Holiday Schedule Long Description                                                                                               |
| UF_D_SES_TERM | INSTRCTN_WEEK_NUM | NUMBER       | 22 | 10 | Weeks in the term schedule                                                                                                           |
| UF_D_SES_TERM | SIXTY_PCT_DT      | DATE         | 7  |    | 60% percent date through the term                                                                                                    |
| UF_D_SES_TERM | SRC_SYS_ID        | VARCHAR2     | 5  |    | Source System ID - Warehousing column and identifies the source system this data originated from                                     |
| UF_D_SES_TERM | CREATED_EW_DTTM   | TIMESTAMP(6) | 11 |    | Created timestamp - Warehousing column and indicates when this row was created in the warehouse                                      |
| UF_D_SES_TERM | LASTUPD_EW_DTTM   | TIMESTAMP(6) | 11 |    | Last updated timestamp - Warehousing column and indicates when the row was last updated from a transaction commit time on the source |
 