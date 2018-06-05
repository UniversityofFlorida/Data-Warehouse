# UF_D_ACAD_CAR

UF_D_ACAD_CAR is a type 1 (max effective change) dimension. This dimension contains information about Academic Careers. Academic Careers designate all course work undertaken by a student at an academic institution. The join between this dimension and fact table should be with  the ACAD_CAR_SID.


| Column Name     | Data Type    | Data Length | Precision | Description                                                                                                                          | 
|-----------------|--------------|-------------|-----------|--------------------------------------------------------------------------------------------------------------------------------------| 
| ACAD_CAR_SID    | NUMBER       | 10 | 0 | Academic Career surrogate identification                                                                                                                        |
| INSTITUTION_SID | NUMBER       | 10 | 0 | Institution surrogate identification                                                                                                                            |
| INSTITUTION_CD  | VARCHAR2     | 5  |   | Institution Code - Currently all values contain UFLOR for University of Florida                                                                                 |
| INSTITUTION_SD  | VARCHAR2     | 10 |   | Institution Short Description of the Institution code                                                                                                           |
| INSTITUTION_LD  | VARCHAR2     | 30 |   | Institution Long Description of the Institution code                                                                                                            |
| ACAD_CAR_CD     | VARCHAR2     | 4  |   | Academic Career Code - designates all course work undertaken by a student at an academic institution                                                            |
| EFFDT           | DATE         | 7  |   | An effective date is when a table row becomes effective, or the date that an action begins. The PeopleSoft system supports the concept of effective-dated rows. |
| EFF_STAT_CD     | VARCHAR2     | 1  |   | Effective Status Code (A- Active, I- Inactive)                                                                                                                  |
| ACAD_CAR_SD     | VARCHAR2     | 10 |   | Academic Career Short Description for the Academic Career Code                                                                                                  |
| ACAD_CAR_LD     | VARCHAR2     | 30 |   | Academic Career Long Description for the Academic Career Code                                                                                                   |
| TERM_TYPE_CD    | VARCHAR2     | 1  |   | Term Type indicator (i.e. S for Semester) to describe the term definition                                                                                       |
| TERM_TYPE_SD    | VARCHAR2     | 10 |   | Term Type Short Description for the Term Type indicator                                                                                                         |
| TERM_TYPE_LD    | VARCHAR2     | 30 |   | Term Type Long Description for the Term Type indicator                                                                                                          |
| SRC_SYS_ID      | VARCHAR2     | 5  |   | Source System ID - Warehousing column and identifies the source system this data originated from                                                                |
| CREATED_EW_DTTM | TIMESTAMP(6) | 11 | 6 | Created timestamp - Warehousing column and indicates when this row was created in the warehouse                                                                 |
| LASTUPD_EW_DTTM | TIMESTAMP(6) | 11 | 6 | Last updated timestamp - Warehousing column and indicates when the row was last updated from a transaction commit time on the source                            |