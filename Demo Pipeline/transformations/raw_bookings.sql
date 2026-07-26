-- ============================================================
-- RAW: read all the column from the CSV.
-- ============================================================
CREATE OR REFRESH MATERIALIZED VIEW raw_bookings
AS
SELECT
*
FROM read_files(
  "/Volumes/workspace/default/sample_wanderbricks_bookings_demo",
  format => "csv",
  header => true
);