CREATE OR REPLACE PIPE ETL.MIRAH_COVERAGE_PIPE auto_ingest=true integration = 'ECT_PRD_AZU_CENTRAL_NOTIFICATION_NI'
as COPY into ETL.MIRAH_COVERAGE(
ID,
PATIENTID,
BTCH_DESC)
FROM (
select
t.$1,
t.$2,
