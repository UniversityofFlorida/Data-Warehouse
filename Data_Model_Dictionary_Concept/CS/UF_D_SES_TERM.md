# UF_D_SES_TERM

 UF_D_SES_TERM is a type 1 (max effective change) dimension. This dimension contains information on the term's session for the Academic Career. This dimension drills into the term's modules such as Summer A and Summer B. The join between this dimension and the fact table should be with SES_TERM_SID.


SES_TERM_SID      | NUMBER       | 22 | 10 | Term Session Surrogate Identification (Granular term sessions, i.e. Summer A, Summer B, Eight week sessions)                         |
------------------|--------------|----|----|--------------------------------------------------------------------------------------------------------------------------------------|
INSTITUTION_SID   | NUMBER       | 22 | 10 | Institution surrogate identification                                                                                                 |
INSTITUTION_CD    | VARCHAR2     | 5  |    | Institution Code - Currently all values contain UFLOR for University of Florida                                                      |
INSTITUTION_SD    | VARCHAR2     | 10 |    | Institution Short Description of the Institution code                                                                                |
INSTITUTION_LD    | VARCHAR2     | 30 |    | Institution Long Description of the Institution code                                                                                 |
ACAD_CAR_SID      | NUMBER       | 22 | 10 | Academic Career surrogate identification                                                                                             |
ACAD_CAR_CD       | VARCHAR2     | 4  |    | Academic Career Code - designates all course work undertaken by a student at an academic institution                                 |
ACAD_CAR_SD       | VARCHAR2     | 10 |    | Academic Career Short Description for the Academic Career Code                                                                       |
ACAD_CAR_LD       | VARCHAR2     | 30 |    | Academic Career Long Description for the Academic Career Code                                                                        |
TERM_SID          | NUMBER       | 22 | 10 | Term surrogate identification                                                                                                        |
TERM_CD           | VARCHAR2     | 4  |    | Term Identification Code                                                                                                        |
TERM_SD           | VARCHAR2     | 10 |    | Term Short Description                                                                                                               |
TERM_LD           | VARCHAR2     | 30 |    | Term Long Description                                                                                                                |
ACAD_YR_SID       | NUMBER       | 22 | 10 | Academic Year Surrogate Identification - Corresponds to the same four digit year                                                     |
SESSION_CODE      | VARCHAR2     | 3  |    | Session Code of the term  - Provides additional ranges within  the term (for example: Summer A)                                      |
SESSION_CD        | VARCHAR2     | 3  |    | Session Code of the term  - Provides additional ranges within  the term (for example: Summer A)                                      |
SESSION_SD        | VARCHAR2     | 10 |    | Session Code Short Description                                                                                                       |
SESSION_LD        | VARCHAR2     | 30 |    | Session Code Long Description                                                                                                        |
UF_ABC            | VARCHAR2     | 1  |    | Indicates if the session is Summer A, Summer B, or Summer C for the term                                                             |
SESSION_BEGIN_DT  | DATE         | 7  |    | Begin date of the session                                                                                                            |
SESSION_END_DT    | DATE         | 7  |    | End date of the session                                                                                                              |
TERM_BEGIN_DT     | DATE         | 7  |    | Begin Date of the term                                                                                                               |
TERM_END_DT       | DATE         | 7  |    | End Date of the term                                                                                                                 |
TERM_CTGRY_CD     | VARCHAR2     | 1  |    | Category/Classification of the Term                                                                                                  |
TERM_CTGRY_SD     | VARCHAR2     | 10 |    | Category/Classification Short Description                                                                                            |
TERM_CTGRY_LD     | VARCHAR2     | 30 |    | Category/Classification Long Description                                                                                             |
HOLIDAY_SCHED_CD  | VARCHAR2     | 6  |    | Term Holiday Schedule Code - Currently not utilized                                                                                  |
HOLIDAY_SCHED_SD  | VARCHAR2     | 10 |    | Term Holiday Schedule Short Description                                                                                              |
HOLIDAY_SCHED_LD  | VARCHAR2     | 30 |    | Term Holiday Schedule Long Description                                                                                               |
INSTRCTN_WEEK_NUM | NUMBER       | 22 | 10 | Weeks in the term schedule                                                                                                           |
SIXTY_PCT_DT      | DATE         | 7  |    | 60% percent date through the term                                                                                                    |
SRC_SYS_ID        | VARCHAR2     | 5  |    | Source System ID - Warehousing column and identifies the source system this data originated from                                     |
CREATED_EW_DTTM   | TIMESTAMP(6) | 11 |    | Created timestamp - Warehousing column and indicates when this row was created in the warehouse                                      |
LASTUPD_EW_DTTM   | TIMESTAMP(6) | 11 |    | Last updated timestamp - Warehousing column and indicates when the row was last updated from a transaction commit time on the source |
 
