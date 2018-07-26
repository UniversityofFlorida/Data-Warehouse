-- Oracle Query

SELECT 
	sections.UF_TERM,
	classes.TERM_CD,
	sections.UF_SECTION,
	classes.CLASS_SECTION,
	sections.UF_HEAD_CNT,
	classes.TOT_ENRLMT,
	sections.UF_DEP_NAME,
	classes.ACAD_ORG_FD,
	sections.UF_DEP_CD,
	classes.ACAD_ORG_CD
FROM 
	(
		SELECT
			sect.UF_TERM,
			sect.UF_DEP_NAME,
			sect.UF_DEP_CD,
			sect.UF_SECTION,
			sect.UF_HEAD_CNT	
		FROM
			SYSADM.WH_SECTION sect	
		WHERE
			sect.UF_TERM = '20181'
			AND sect.UF_DEP_CD LIKE '0117%'
			AND sect.UF_SECT_CAN <> 'Y'
			AND sect.UF_HEAD_CNT > 0	
	) sections
FULL OUTER JOIN
	(
		SELECT
			cls.CLASS_SECTION,
			cls.TOT_ENRLMT,
			cls.TERM_CD,
			aorg.ACAD_ORG_FD,
			aorg.ACAD_ORG_CD
		FROM
			CS.WH_D_CLASS cls
		JOIN
			CS.WH_D_ACAD_ORG aorg
		ON
			aorg.ACAD_ORG_SID = cls.ACAD_ORG_SID
		WHERE
			cls.TERM_CD = '2181'
			AND aorg.ACAD_ORG_CD LIKE '17%' -- cls.DepartmentCode LIKE '0117%'
			AND cls.CLASS_STATUS_CD <> 'X' -- cls.Cancelled <> 'Y'
			AND cls.TOT_ENRLMT > 0		
	) classes
ON
	sections.UF_SECTION = classes.CLASS_SECTION
ORDER BY
	sections.UF_SECTION;


-- Local Warrington SQL Server Query

WITH sections AS
(
	SELECT
		sect.Term6,
		sect.DepartmentName,
		sect.DepartmentCode,
		sect.Section,
		sect.Enrollment	
	FROM
		BaseViews.dbo.bv_UFSections AS sect	
	WHERE
		sect.Term6 = '201801'
		AND sect.DepartmentCode LIKE '0117%'
		AND sect.Cancelled <> 'Y'
		AND sect.Enrollment > 0
), classes AS
(
	SELECT
		cls.CLASS_SECTION,
		cls.TOT_ENRLMT,
		cls.TERM_CD,
		aorg.ACAD_ORG_FD,
		aorg.ACAD_ORG_CD
	FROM
		BaseData.bd.bt_CS_WH_D_CLASS AS cls
	JOIN
		BaseData.bd.bt_CS_WH_D_ACAD_ORG AS aorg
	ON
		aorg.ACAD_ORG_SID = cls.ACAD_ORG_SID
	WHERE
		cls.TERM_CD = '2181'
		AND aorg.ACAD_ORG_CD LIKE '17%' -- cls.DepartmentCode LIKE '0117%'
		AND cls.CLASS_STATUS_CD <> 'X' -- cls.Cancelled <> 'Y'
		AND cls.TOT_ENRLMT > 0		
)
SELECT 
	sections.Term6,
	classes.TERM_CD,
	sections.Section,
	classes.CLASS_SECTION,
	sections.Enrollment,
	classes.TOT_ENRLMT,
	sections.DepartmentName,
	classes.ACAD_ORG_FD,
	sections.DepartmentCode,
	classes.ACAD_ORG_CD
FROM 
	sections
FULL OUTER JOIN
	classes
ON
	sections.Section = classes.CLASS_SECTION
ORDER BY
	sections.Section;