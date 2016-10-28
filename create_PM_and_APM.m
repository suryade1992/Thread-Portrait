---------SE2_AGG_STANDARD_METRIC_VW---------------------
-------------101,137----find for 101,137-----------152(nrx-product_volume GNEVOYA)--------------
------highest metric value 164---------

-------------updated workflow---------
UNION ALL
SELECT 165 AS METRIC_SK,
       Epclusa_nrx_vol.PROF_SK,
       fact.PROD_SK,
       Epclusa_nrx_vol.TIME_BCKT_SK,
       Epclusa_nrx_vol.TIME_BCKT_TYPE,
       Epclusa_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'EPCLUSA'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) Epclusa_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = Epclusa_nrx_vol.prof_sk
             AND fact.time_bckt_sk = Epclusa_nrx_vol.time_bckt_sk
             AND Epclusa_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND Epclusa_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
UNION ALL
SELECT 166 AS METRIC_SK,
       Descovy_nrx_vol.PROF_SK,
       fact.PROD_SK,
       Descovy_nrx_vol.TIME_BCKT_SK,
       Descovy_nrx_vol.TIME_BCKT_TYPE,
       Descovy_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'DESCOVY'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) Descovy_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = Descovy_nrx_vol.prof_sk
             AND fact.time_bckt_sk = Descovy_nrx_vol.time_bckt_sk
             AND Descovy_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND Descovy_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
 
 UNION ALL
SELECT 167 AS METRIC_SK,
       Epclusa_nrx_chg.PROF_SK,
       fact.PROD_SK,
       Epclusa_nrx_chg.TIME_BCKT_SK,
       Epclusa_nrx_chg.TIME_BCKT_TYPE,
       Epclusa_nrx_chg.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (164) AND B.PRODUCT_NAME = 'EPCLUSA'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) Epclusa_nrx_chg
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = Epclusa_nrx_chg.prof_sk
             AND fact.time_bckt_sk = Epclusa_nrx_chg.time_bckt_sk
             AND Epclusa_nrx_chg.time_bckt_type = fact.time_bckt_type
             AND Epclusa_nrx_chg.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 164
 UNION ALL
SELECT 168 AS METRIC_SK,
       Genvoya_nrx_chg.PROF_SK,
       fact.PROD_SK,
       Genvoya_nrx_chg.TIME_BCKT_SK,
       Genvoya_nrx_chg.TIME_BCKT_TYPE,
       Genvoya_nrx_chg.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (164) AND B.PRODUCT_NAME = 'GENVOYA'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) Genvoya_nrx_chg
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = Genvoya_nrx_chg.prof_sk
             AND fact.time_bckt_sk = Genvoya_nrx_chg.time_bckt_sk
             AND Genvoya_nrx_chg.time_bckt_type = fact.time_bckt_type
             AND Genvoya_nrx_chg.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 164
 UNION ALL
SELECT 169 AS METRIC_SK,
       Descovy_nrx_chg.PROF_SK,
       fact.PROD_SK,
       Descovy_nrx_chg.TIME_BCKT_SK,
       Descovy_nrx_chg.TIME_BCKT_TYPE,
       Descovy_nrx_chg.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (164) AND B.PRODUCT_NAME = 'DESCOVY'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) Descovy_nrx_chg
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = Descovy_nrx_chg.prof_sk
             AND fact.time_bckt_sk = Descovy_nrx_chg.time_bckt_sk
             AND Descovy_nrx_chg.time_bckt_type = fact.time_bckt_type
             AND Descovy_nrx_chg.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 164
 ---------------------------------------

SELECT METRIC_SK,
       PROF_SK,
       PROD_SK,
       TIME_BCKT_SK,
       TIME_BCKT_TYPE,
       METRIC_VALUE
  FROM SE2_F_AGG_METRIC
 WHERE metric_sk IN (101,
                     106,
                     119,
                     103,
                     121,
                     116,
                     110,
                     118,
                     128,
                     129,
                     155,
                     156,
                     158,
                     159,
                     161,
                     162,
                     164,
                     301,
                     302,
                     303,
                     304,
                     305,
                     306)
UNION ALL
SELECT 104 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'TIVICAY'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
UNION ALL
SELECT 105 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'TRIUMEQ'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
UNION ALL
SELECT 124 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'HARVONI'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
UNION ALL
SELECT 125 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'VIEKIRA'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
UNION ALL
  SELECT METRIC_SK,
         PROF_SK,
         PROD_SK,
         TIME_BCKT_SK,
         TIME_BCKT_TYPE,
         1 AS metric_value
    FROM SE2_F_AGG_METRIC
   WHERE METRIC_SK IN (117,
                       154,
                       157,
                       160)
GROUP BY METRIC_SK,
         PROF_SK,
         PROD_SK,
         TIME_BCKT_SK,
         TIME_BCKT_TYPE,
         CYCLE_TIME_ID
UNION ALL
SELECT 102 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (103) AND B.PRODUCT_NAME = 'TIVICAY'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 103
UNION ALL
SELECT 122 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (103) AND B.PRODUCT_NAME = 'TRIUMEQ'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 103
UNION ALL
SELECT 123 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (103) AND B.PRODUCT_NAME = 'HARVONI'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 103
UNION ALL
SELECT 130 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (103) AND B.PRODUCT_NAME = 'VIEKIRA'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 103
UNION ALL
SELECT 137,
       F_AGG_METRIC.PROF_SK,
       F_AGG_METRIC.PROD_SK,
       F_AGG_METRIC.TIME_BCKT_SK,
       F_AGG_METRIC.TIME_BCKT_TYPE,
       CASE
          WHEN       F_AGG_METRIC.METRIC_VALUE
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) < 0
               AND   LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time))
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        2,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) < 0
          THEN
             -1
          WHEN       F_AGG_METRIC.METRIC_VALUE
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) > 0
               AND   LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time))
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        2,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) > 0
          THEN
             1
          ELSE
             0
       END
  FROM SE2_F_AGG_METRIC F_AGG_METRIC
       INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
          ON     F_AGG_METRIC.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
             AND F_AGG_METRIC.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
 WHERE metric_sk = 101
UNION ALL
SELECT 142,
       F_AGG_METRIC.PROF_SK,
       F_AGG_METRIC.PROD_SK,
       F_AGG_METRIC.TIME_BCKT_SK,
       F_AGG_METRIC.TIME_BCKT_TYPE,
       CASE
          WHEN       F_AGG_METRIC.METRIC_VALUE
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) < 0
               AND   LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time))
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        2,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) < 0
          THEN
             -1
          WHEN       F_AGG_METRIC.METRIC_VALUE
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) > 0
               AND   LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        1,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time))
                   - LAG (
                        F_AGG_METRIC.METRIC_VALUE,
                        2,
                        0)
                     OVER (PARTITION BY METRIC_SK, PROF_SK, PROD_SK
                           ORDER BY TO_DATE (TIME_BCKT.start_time)) > 0
          THEN
             1
          ELSE
             0
       END
  FROM SE2_F_AGG_METRIC F_AGG_METRIC
       INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
          ON     F_AGG_METRIC.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
             AND F_AGG_METRIC.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
 WHERE metric_sk = 121
UNION ALL
SELECT 120 AS METRIC_SK,
       PROF_SK,
       PROD_SK,
       TIME_BCKT_SK,
       TIME_BCKT_TYPE,
       1 AS metric_value
  FROM SE2_F_AGG_METRIC
 WHERE     METRIC_SK IN (129)
       AND UPPER (ATTRIBUTE_1_VALUE) = UPPER ('All products equal status')
UNION ALL
SELECT 132 AS METRIC_SK,
       PROF_SK,
       PROD_SK,
       TIME_BCKT_SK,
       TIME_BCKT_TYPE,
       1 AS metric_value
  FROM SE2_F_AGG_METRIC F_AGG_METRIC
 WHERE     METRIC_SK IN (129)
       AND UPPER (ATTRIBUTE_1_VALUE) =
              UPPER ('Zepatier 1 of 2 with Viekira Pak')
UNION ALL
SELECT 133 AS METRIC_SK,
       PROF_SK,
       PROD_SK,
       TIME_BCKT_SK,
       TIME_BCKT_TYPE,
       1 AS metric_value
  FROM SE2_F_AGG_METRIC F_AGG_METRIC
 WHERE     METRIC_SK IN (129)
       AND UPPER (ATTRIBUTE_1_VALUE) IN (UPPER (
                                            'Harvoni 1 of 2 with Viekira Pak'),
                                         UPPER (
                                            'Harvoni Preferred / exclusive'),
                                         UPPER (
                                            'Viekira Pak Preferred / exclusive'))
UNION ALL
SELECT 138 AS METRIC_SK,
       PROF_SK,
       PROD_SK,
       TIME_BCKT_SK,
       TIME_BCKT_TYPE,
       1 AS metric_value
  FROM SE2_F_AGG_METRIC F_AGG_METRIC
 WHERE     METRIC_SK IN (129)
       AND UPPER (ATTRIBUTE_1_VALUE) = UPPER ('Zepatier 1 of 2 with Harvoni')
UNION ALL
SELECT 139 AS METRIC_SK,
       PROF_SK,
       PROD_SK,
       TIME_BCKT_SK,
       TIME_BCKT_TYPE,
       1 AS metric_value
  FROM SE2_F_AGG_METRIC F_AGG_METRIC
 WHERE     METRIC_SK IN (129)
       AND UPPER (ATTRIBUTE_1_VALUE) IN (UPPER (
                                            'Harvoni 1 of 2 with Viekira Pak'),
                                         UPPER (
                                            'Harvoni Preferred / exclusive'),
                                         UPPER (
                                            'Viekira Pak Preferred / exclusive'))
UNION ALL
  SELECT 140 AS METRIC_SK,
         PROF_SK,
         PROD_SK,
         TIME_BCKT_SK,
         TIME_BCKT_TYPE,
         SUM (METRIC_VALUE) AS metric_value
    FROM SE2_F_AGG_METRIC F_AGG_METRIC
   WHERE     METRIC_SK IN (129)
         AND UPPER (ATTRIBUTE_1_VALUE) =
                UPPER ('Zepatier 1 of 2 with Viekira Pak')
GROUP BY PROF_SK,
         PROD_SK,
         TIME_BCKT_SK,
         TIME_BCKT_TYPE,
         CYCLE_TIME_ID
UNION ALL
SELECT 150 AS METRIC_SK,
       ADVNTG_OVER_HARVONI.PROF_SK,
       D_PROD.PROD_SK,
       ADVNTG_OVER_HARVONI.TIME_BCKT_SK,
       ADVNTG_OVER_HARVONI.TIME_BCKT_TYPE,
       ADVNTG_OVER_HARVONI.metric_value
  FROM (  SELECT F_AGG_METRIC.PROF_SK,
                 PROD_MKT.MARKET_NAME AS MARKET_NAME,
                 F_AGG_METRIC.TIME_BCKT_SK,
                 F_AGG_METRIC.TIME_BCKT_TYPE,
                 SUM (F_AGG_METRIC.METRIC_VALUE) AS metric_value
            FROM SE2_F_AGG_METRIC F_AGG_METRIC
                 INNER JOIN SE2_D_PROD D_PROD
                    ON F_AGG_METRIC.PROD_SK = D_PROD.PROD_SK
                 INNER JOIN SE2_LAND_XREF_PROD_MARKET PROD_MKT
                    ON TRIM (D_PROD.PRODUCT_ID) = TRIM (PROD_MKT.PRODUCT_NAME)
           WHERE     METRIC_SK IN (129)
                 AND UPPER (ATTRIBUTE_1_VALUE) =
                        UPPER ('Zepatier 1 of 2 with Viekira Pak')
                 AND PROD_MKT.ACTIVE_MARKET = 'Y'
                 AND PROD_MKT.ACTIVE_PRODUCT = 'Y'
        GROUP BY F_AGG_METRIC.PROF_SK,
                 PROD_MKT.MARKET_NAME,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) ADVNTG_OVER_HARVONI
       INNER JOIN SE2_LAND_XREF_PROD_MARKET PROD_MKT
          ON ADVNTG_OVER_HARVONI.MARKET_NAME = PROD_MKT.MARKET_NAME
       INNER JOIN SE2_D_PROD D_PROD
          ON D_PROD.PRODUCT_ID = PROD_MKT.PRODUCT_NAME
 WHERE PROD_MKT.ACTIVE_MARKET = 'Y' AND PROD_MKT.ACTIVE_PRODUCT = 'Y'
UNION ALL
  SELECT 141 AS METRIC_SK,
         PROF_SK,
         PROD_SK,
         TIME_BCKT_SK,
         TIME_BCKT_TYPE,
         SUM (METRIC_VALUE) AS metric_value
    FROM SE2_F_AGG_METRIC F_AGG_METRIC
   WHERE     METRIC_SK IN (129)
         AND UPPER (ATTRIBUTE_1_VALUE) = UPPER ('Zepatier 1 of 2 with Harvoni')
GROUP BY PROF_SK,
         PROD_SK,
         TIME_BCKT_SK,
         TIME_BCKT_TYPE,
         CYCLE_TIME_ID
UNION ALL
SELECT 151 AS METRIC_SK,
       ADVNTG_OVER_HARVONI.PROF_SK,
       D_PROD.PROD_SK,
       ADVNTG_OVER_HARVONI.TIME_BCKT_SK,
       ADVNTG_OVER_HARVONI.TIME_BCKT_TYPE,
       ADVNTG_OVER_HARVONI.metric_value
  FROM (  SELECT F_AGG_METRIC.PROF_SK,
                 PROD_MKT.MARKET_NAME AS MARKET_NAME,
                 F_AGG_METRIC.TIME_BCKT_SK,
                 F_AGG_METRIC.TIME_BCKT_TYPE,
                 SUM (F_AGG_METRIC.METRIC_VALUE) AS metric_value
            FROM SE2_F_AGG_METRIC F_AGG_METRIC
                 INNER JOIN SE2_D_PROD D_PROD
                    ON F_AGG_METRIC.PROD_SK = D_PROD.PROD_SK
                 INNER JOIN SE2_LAND_XREF_PROD_MARKET PROD_MKT
                    ON TRIM (D_PROD.PRODUCT_ID) = TRIM (PROD_MKT.PRODUCT_NAME)
           WHERE     METRIC_SK IN (129)
                 AND UPPER (ATTRIBUTE_1_VALUE) =
                        UPPER ('Zepatier 1 of 2 with Harvoni')
                 AND PROD_MKT.ACTIVE_MARKET = 'Y'
                 AND PROD_MKT.ACTIVE_PRODUCT = 'Y'
        GROUP BY F_AGG_METRIC.PROF_SK,
                 PROD_MKT.MARKET_NAME,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) ADVNTG_OVER_HARVONI
       INNER JOIN SE2_LAND_XREF_PROD_MARKET PROD_MKT
          ON ADVNTG_OVER_HARVONI.MARKET_NAME = PROD_MKT.MARKET_NAME
       INNER JOIN SE2_D_PROD D_PROD
          ON D_PROD.PRODUCT_ID = PROD_MKT.PRODUCT_NAME
 WHERE PROD_MKT.ACTIVE_MARKET = 'Y' AND PROD_MKT.ACTIVE_PRODUCT = 'Y'
UNION ALL
SELECT 152 AS METRIC_SK,
       tivicay_nrx_vol.PROF_SK,
       fact.PROD_SK,
       tivicay_nrx_vol.TIME_BCKT_SK,
       tivicay_nrx_vol.TIME_BCKT_TYPE,
       tivicay_nrx_vol.METRIC_VALUE
  FROM (  SELECT PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 SUM (METRIC_VALUE) AS metric_value,
                 CYCLE_TIME_ID
            FROM SE2_F_AGG_METRIC A
                 INNER JOIN SE2_D_PROD B ON A.PROD_SK = B.PROD_SK
           WHERE METRIC_SK IN (101) AND B.PRODUCT_NAME = 'GENVOYA'
        GROUP BY PROF_SK,
                 B.PROD_SK,
                 TIME_BCKT_SK,
                 TIME_BCKT_TYPE,
                 CYCLE_TIME_ID) tivicay_nrx_vol
       INNER JOIN SE2_F_AGG_METRIC fact
          ON     fact.prof_sk = tivicay_nrx_vol.prof_sk
             AND fact.time_bckt_sk = tivicay_nrx_vol.time_bckt_sk
             AND tivicay_nrx_vol.time_bckt_type = fact.time_bckt_type
             AND tivicay_nrx_vol.cycle_time_id = fact.cycle_time_id
 WHERE metric_sk = 101
UNION ALL
SELECT 109,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROD_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE,
       CASE
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE >
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             1
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE <
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             -1
          ELSE
             0
       END
  FROM (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
         WHERE PROD_VOL.METRIC_SK = 101 AND MARKET_VOL.METRIC_SK = 106)
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS
       INNER JOIN
       (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
               INNER JOIN SE2_D_PROD D_PROD
                  ON D_PROD.PROD_SK = PROD_VOL.PROD_SK
         WHERE     PROD_VOL.METRIC_SK = 101
               AND MARKET_VOL.METRIC_SK = 106
               AND D_PROD.PRODUCT_NAME = 'TRIUMEQ')
       MARKET_SHARE_FOR_3_MONTHS_TIVICAY
          ON     MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_SK
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_TYPE
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.PROF_SK
UNION ALL
SELECT 108,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROD_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE,
       CASE
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE >
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             1
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE <
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             -1
          ELSE
             0
       END
  FROM (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
         WHERE PROD_VOL.METRIC_SK = 101 AND MARKET_VOL.METRIC_SK = 106)
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS
       INNER JOIN
       (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
               INNER JOIN SE2_D_PROD D_PROD
                  ON D_PROD.PROD_SK = PROD_VOL.PROD_SK
         WHERE     PROD_VOL.METRIC_SK = 101
               AND MARKET_VOL.METRIC_SK = 106
               AND D_PROD.PRODUCT_NAME = 'TIVICAY')
       MARKET_SHARE_FOR_3_MONTHS_TIVICAY
          ON     MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_SK
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_TYPE
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.PROF_SK
UNION ALL
SELECT 143,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROD_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE,
       CASE
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE >
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             1
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE <
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             -1
          ELSE
             0
       END
  FROM (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
         WHERE PROD_VOL.METRIC_SK = 101 AND MARKET_VOL.METRIC_SK = 106)
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS
       INNER JOIN
       (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
               INNER JOIN SE2_D_PROD D_PROD
                  ON D_PROD.PROD_SK = PROD_VOL.PROD_SK
         WHERE     PROD_VOL.METRIC_SK = 101
               AND MARKET_VOL.METRIC_SK = 106
               AND D_PROD.PRODUCT_NAME = 'HARVONI')
       MARKET_SHARE_FOR_3_MONTHS_TIVICAY
          ON     MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_SK
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_TYPE
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.PROF_SK
UNION ALL
SELECT 144,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROD_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK,
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE,
       CASE
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE >
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             1
          WHEN MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.MARKET_SHARE_FOR_3_MONTHS_VALUE <
                  MARKET_SHARE_FOR_3_MONTHS_TIVICAY.MARKET_SHARE_FOR_3_MONTHS_VALUE
          THEN
             -1
          ELSE
             0
       END
  FROM (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
         WHERE PROD_VOL.METRIC_SK = 101 AND MARKET_VOL.METRIC_SK = 106)
       MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS
       INNER JOIN
       (SELECT PROD_VOL.PROF_SK,
               PROD_VOL.PROD_SK,
               PROD_VOL.TIME_BCKT_SK,
               PROD_VOL.TIME_BCKT_TYPE,
                 (  PROD_VOL.METRIC_VALUE
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       PROD_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY PROD_VOL.METRIC_SK,
                                    PROD_VOL.PROF_SK,
                                    PROD_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
               / (  MARKET_VOL.METRIC_VALUE
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       1,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time))
                  + LAG (
                       MARKET_VOL.METRIC_VALUE,
                       2,
                       0)
                    OVER (
                       PARTITION BY MARKET_VOL.METRIC_SK,
                                    MARKET_VOL.PROF_SK,
                                    MARKET_VOL.PROD_SK
                       ORDER BY TO_DATE (TIME_BCKT.start_time)))
                  AS MARKET_SHARE_FOR_3_MONTHS_VALUE
          FROM SE2_F_AGG_METRIC PROD_VOL
               INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
                  ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
                     AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
                     AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
               INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
                  ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
                     AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
               INNER JOIN SE2_D_PROD D_PROD
                  ON D_PROD.PROD_SK = PROD_VOL.PROD_SK
         WHERE     PROD_VOL.METRIC_SK = 101
               AND MARKET_VOL.METRIC_SK = 106
               AND D_PROD.PRODUCT_NAME = 'VIEKIRA')
       MARKET_SHARE_FOR_3_MONTHS_TIVICAY
          ON     MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_SK
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.TIME_BCKT_TYPE =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.TIME_BCKT_TYPE
             AND MARKET_SHARE_FOR_3_MONTHS_ALL_PRODS.PROF_SK =
                    MARKET_SHARE_FOR_3_MONTHS_TIVICAY.PROF_SK
UNION ALL
SELECT 153,
       PROD_VOL.PROF_SK,
       PROD_VOL.PROD_SK,
       PROD_VOL.TIME_BCKT_SK,
       PROD_VOL.TIME_BCKT_TYPE,
       CASE
          WHEN       (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE)
                   - LAG (
                        (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE),
                        1,
                        0)
                     OVER (
                        PARTITION BY PROD_VOL.METRIC_SK,
                                     PROD_VOL.PROF_SK,
                                     PROD_VOL.PROD_SK
                        ORDER BY TO_DATE (TIME_BCKT.start_time)) < 0
               AND   LAG (
                        (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE),
                        1,
                        0)
                     OVER (
                        PARTITION BY PROD_VOL.METRIC_SK,
                                     PROD_VOL.PROF_SK,
                                     PROD_VOL.PROD_SK
                        ORDER BY TO_DATE (TIME_BCKT.start_time))
                   - LAG (
                        (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE),
                        2,
                        0)
                     OVER (
                        PARTITION BY PROD_VOL.METRIC_SK,
                                     PROD_VOL.PROF_SK,
                                     PROD_VOL.PROD_SK
                        ORDER BY TO_DATE (TIME_BCKT.start_time)) < 0
          THEN
             -1
          WHEN       (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE)
                   - LAG (
                        (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE),
                        1,
                        0)
                     OVER (
                        PARTITION BY PROD_VOL.METRIC_SK,
                                     PROD_VOL.PROF_SK,
                                     PROD_VOL.PROD_SK
                        ORDER BY TO_DATE (TIME_BCKT.start_time)) > 0
               AND   LAG (
                        (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE),
                        1,
                        0)
                     OVER (
                        PARTITION BY PROD_VOL.METRIC_SK,
                                     PROD_VOL.PROF_SK,
                                     PROD_VOL.PROD_SK
                        ORDER BY TO_DATE (TIME_BCKT.start_time))
                   - LAG (
                        (PROD_VOL.METRIC_VALUE / MARKET_VOL.METRIC_VALUE),
                        2,
                        0)
                     OVER (
                        PARTITION BY PROD_VOL.METRIC_SK,
                                     PROD_VOL.PROF_SK,
                                     PROD_VOL.PROD_SK
                        ORDER BY TO_DATE (TIME_BCKT.start_time)) > 0
          THEN
             1
          ELSE
             0
       END
          AS MARKET_SHARE_TREND_VALUE
  FROM SE2_F_AGG_METRIC PROD_VOL
       INNER JOIN SE2_F_AGG_METRIC MARKET_VOL
          ON     PROD_VOL.PROF_SK = MARKET_VOL.PROF_SK
             AND PROD_VOL.PROD_SK = MARKET_VOL.PROD_SK
             AND PROD_VOL.TIME_BCKT_SK = MARKET_VOL.TIME_BCKT_SK
             AND PROD_VOL.TIME_BCKT_TYPE = MARKET_VOL.TIME_BCKT_TYPE
       INNER JOIN SE2_D_TIME_BUCKET TIME_BCKT
          ON     PROD_VOL.TIME_BCKT_SK = TIME_BCKT.TIME_BCKT_SK
             AND PROD_VOL.TIME_BCKT_TYPE = TIME_BCKT.TIME_BCKT_TYPE
 WHERE PROD_VOL.METRIC_SK = 101 AND MARKET_VOL.METRIC_SK = 106
UNION ALL
SELECT 163 AS METRIC_SK,
       PROF_SK,
       PROD_SK,
       BUCK.TIME_BCKT_SK,
       BUCK.TIME_BCKT_TYPE,
       METRIC_VALUE
  FROM (SELECT METRIC_103.PROF_SK,
               METRIC_103.PROD_SK,
               METRIC_103.TIME_ID,
               CASE
                  WHEN     METRIC_103.METRIC_VALUE >
                              METRIC_TRIVICAY.METRIC_VALUE
                       AND METRIC_103.METRIC_VALUE >
                              METRIC_TRIUMEQ.METRIC_VALUE
                  THEN
                     1
                  WHEN     METRIC_103.METRIC_VALUE <
                              METRIC_TRIVICAY.METRIC_VALUE
                       AND METRIC_103.METRIC_VALUE <
                              METRIC_TRIUMEQ.METRIC_VALUE
                  THEN
                     -1
                  ELSE
                     0
               END
                  METRIC_VALUE,
               METRIC_103.TIME_BCKT_TYPE,
               METRIC_103.CYCLE_TIME_ID
          FROM (SELECT DISTINCT FULL_REC.PROF_SK,
                                FULL_REC.PROD_SK,
                                FULL_REC.TIME_ID,
                                FULL_REC.METRIC_VALUE,
                                FULL_REC.TIME_BCKT_TYPE,
                                FULL_REC.CYCLE_TIME_ID
                  FROM (SELECT ALL_REC.PROF_SK,
                               ALL_REC.PROD_SK,
                               ALL_REC.TIME_ID,
                               ALL_REC.TIME_BCKT_TYPE,
                               ALL_REC.CYCLE_TIME_ID,
                               ROW_NUMBER ()
                                  OVER (PARTITION BY ALL_REC.PROF_SK,
                                                     ALL_REC.PROD_SK,
                                                     ALL_REC.TIME_BCKT_TYPE,
                                                     ALL_REC.CYCLE_TIME_ID
                                        ORDER BY ALL_REC.TIME_ID DESC)
                                  AS NUM_REC,
                               ALL_REC.METRIC_VALUE
                          FROM (SELECT PROF_SK,
                                       PROD_SK,
                                       TO_DATE (START_TIME) AS TIME_ID,
                                         NVL (METRIC_VALUE, 0)
                                       + NVL (
                                            LAG (
                                               METRIC_VALUE,
                                               1)
                                            OVER (
                                               PARTITION BY PROF_SK, PROD_SK
                                               ORDER BY
                                                  TO_DATE (START_TIME) DESC),
                                            0)
                                       + NVL (
                                            LAG (
                                               METRIC_VALUE,
                                               2)
                                            OVER (
                                               PARTITION BY PROF_SK, PROD_SK
                                               ORDER BY
                                                  TO_DATE (START_TIME) DESC),
                                            0)
                                          AS METRIC_VALUE,
                                       AGG.TIME_BCKT_TYPE,
                                       CYCLE_TIME_ID
                                  FROM SE2_F_AGG_METRIC AGG
                                       INNER JOIN SE2_D_TIME_BUCKET BUCK
                                          ON AGG.TIME_BCKT_SK =
                                                BUCK.TIME_BCKT_SK
                                 WHERE METRIC_SK = 103) ALL_REC) FULL_REC
                 WHERE FULL_REC.NUM_REC = 1) METRIC_103
               LEFT JOIN
               (SELECT DISTINCT FULL_REC.PROF_SK,
                                FULL_REC.PROD_SK,
                                FULL_REC.TIME_ID,
                                FULL_REC.METRIC_VALUE,
                                FULL_REC.TIME_BCKT_TYPE,
                                FULL_REC.CYCLE_TIME_ID
                  FROM (SELECT ALL_REC.PROF_SK,
                               ALL_REC.PROD_SK,
                               ALL_REC.TIME_ID,
                               ALL_REC.TIME_BCKT_TYPE,
                               ALL_REC.CYCLE_TIME_ID,
                               ROW_NUMBER ()
                                  OVER (PARTITION BY ALL_REC.PROF_SK,
                                                     ALL_REC.PROD_SK,
                                                     ALL_REC.TIME_BCKT_TYPE,
                                                     ALL_REC.CYCLE_TIME_ID
                                        ORDER BY ALL_REC.TIME_ID DESC)
                                  AS NUM_REC,
                               ALL_REC.METRIC_VALUE
                          FROM (SELECT PROF_SK,
                                       PROD_SK,
                                       TO_DATE (START_TIME) AS TIME_ID,
                                         NVL (METRIC_VALUE, 0)
                                       + NVL (
                                            LAG (
                                               METRIC_VALUE,
                                               1)
                                            OVER (
                                               PARTITION BY PROF_SK, PROD_SK
                                               ORDER BY
                                                  TO_DATE (START_TIME) DESC),
                                            0)
                                       + NVL (
                                            LAG (
                                               METRIC_VALUE,
                                               2)
                                            OVER (
                                               PARTITION BY PROF_SK, PROD_SK
                                               ORDER BY
                                                  TO_DATE (START_TIME) DESC),
                                            0)
                                          AS METRIC_VALUE,
                                       AGG.TIME_BCKT_TYPE,
                                       CYCLE_TIME_ID
                                  FROM SE2_F_AGG_METRIC AGG
                                       INNER JOIN SE2_D_TIME_BUCKET BUCK
                                          ON AGG.TIME_BCKT_SK =
                                                BUCK.TIME_BCKT_SK
                                 WHERE METRIC_SK = 122) ALL_REC) FULL_REC
                 WHERE FULL_REC.NUM_REC = 1) METRIC_TRIUMEQ
                  ON     METRIC_103.PROF_SK = METRIC_TRIUMEQ.PROF_SK
                     AND METRIC_103.PROD_SK = METRIC_TRIUMEQ.PROD_SK
                     AND METRIC_103.TIME_ID = METRIC_TRIUMEQ.TIME_ID
               LEFT JOIN
               (SELECT DISTINCT FULL_REC.PROF_SK,
                                FULL_REC.PROD_SK,
                                FULL_REC.TIME_ID,
                                FULL_REC.METRIC_VALUE,
                                FULL_REC.TIME_BCKT_TYPE,
                                FULL_REC.CYCLE_TIME_ID
                  FROM (SELECT ALL_REC.PROF_SK,
                               ALL_REC.PROD_SK,
                               ALL_REC.TIME_ID,
                               ALL_REC.TIME_BCKT_TYPE,
                               ALL_REC.CYCLE_TIME_ID,
                               ROW_NUMBER ()
                                  OVER (PARTITION BY ALL_REC.PROF_SK,
                                                     ALL_REC.PROD_SK,
                                                     ALL_REC.TIME_BCKT_TYPE,
                                                     ALL_REC.CYCLE_TIME_ID
                                        ORDER BY ALL_REC.TIME_ID DESC)
                                  AS NUM_REC,
                               ALL_REC.METRIC_VALUE
                          FROM (SELECT PROF_SK,
                                       PROD_SK,
                                       TO_DATE (START_TIME) AS TIME_ID,
                                         NVL (METRIC_VALUE, 0)
                                       + NVL (
                                            LAG (
                                               METRIC_VALUE,
                                               1)
                                            OVER (
                                               PARTITION BY PROF_SK, PROD_SK
                                               ORDER BY
                                                  TO_DATE (START_TIME) DESC),
                                            0)
                                       + NVL (
                                            LAG (
                                               METRIC_VALUE,
                                               2)
                                            OVER (
                                               PARTITION BY PROF_SK, PROD_SK
                                               ORDER BY
                                                  TO_DATE (START_TIME) DESC),
                                            0)
                                          AS METRIC_VALUE,
                                       AGG.TIME_BCKT_TYPE,
                                       CYCLE_TIME_ID
                                  FROM SE2_F_AGG_METRIC AGG
                                       INNER JOIN SE2_D_TIME_BUCKET BUCK
                                          ON AGG.TIME_BCKT_SK =
                                                BUCK.TIME_BCKT_SK
                                 WHERE METRIC_SK = 102) ALL_REC) FULL_REC
                 WHERE FULL_REC.NUM_REC = 1) METRIC_TRIVICAY
                  ON     METRIC_103.PROF_SK = METRIC_TRIVICAY.PROF_SK
                     AND METRIC_103.PROD_SK = METRIC_TRIVICAY.PROD_SK
                     AND METRIC_103.TIME_ID = METRIC_TRIVICAY.TIME_ID)
       ALL_TIME_REC
       INNER JOIN SE2_D_TIME_BUCKET BUCK
          ON     TO_DATE (ALL_TIME_REC.TIME_ID) = TO_DATE (BUCK.START_TIME)
             AND ALL_TIME_REC.TIME_BCKT_TYPE = BUCK.TIME_BCKT_TYPE;
			 
			 
			 
------highest metric value 164---------

------------------SE2_F_AGG_METRIC---------------
SELECT METRIC_SK,PROF_SK,PROD_SK,TIME_BCKT_SK,TIME_BCKT_TYPE,METRIC_VALUE,ATTRIBUTE_1_NAME,ATTRIBUTE_1_VALUE,ATTRIBUTE_2_NAME,ATTRIBUTE_2_VALUE,
ATTRIBUTE_3_NAME,ATTRIBUTE_3_VALUE,ATTRIBUTE_4_NAME,ATTRIBUTE_4_VALUE,ATTRIBUTE_5_NAME,ATTRIBUTE_5_VALUE,CYCLE_TIME_ID,LAST_LOAD_TS,UPDATED_BY FROM 
(SELECT M_METRIC.METRIC_SK,
       D_PROF.PROF_SK,
       D_PROD.PROD_SK,
       D_TIME.TIME_BCKT_SK,
       D_TIME.TIME_BCKT_TYPE,
       LAND.METRIC_VALUE,
       LAND.ATTRIBUTE_1_NAME,
       LAND.ATTRIBUTE_1_VALUE,
       LAND.ATTRIBUTE_2_NAME,
       LAND.ATTRIBUTE_2_VALUE,
       LAND.ATTRIBUTE_3_NAME,
       LAND.ATTRIBUTE_3_VALUE,
       LAND.ATTRIBUTE_4_NAME,
       LAND.ATTRIBUTE_4_VALUE,
       LAND.ATTRIBUTE_5_NAME,
       LAND.ATTRIBUTE_5_VALUE,
       GEN_CONFIG.CONFIG_VALUE AS CYCLE_TIME_ID,
       NOW () AS LAST_LOAD_TS,
       'RS11738' AS UPDATED_BY
  FROM MERCK_SE_AGG_METRIC LAND
       INNER JOIN SE2_D_PROF D_PROF ON LAND.PARTY_ID = D_PROF.PROF_ID
       INNER JOIN SE2_D_PROD D_PROD ON LAND.PRODUCT_ID = D_PROD.PRODUCT_ID
       INNER JOIN SE2_M_METRIC M_METRIC
          ON LAND.METRIC_ID = M_METRIC.METRIC_ID
       INNER JOIN SE2_D_TIME_BUCKET D_TIME
          ON     TO_DATE (D_TIME.START_TIME) <= TO_DATE (LAND.TIME_ID)
             AND TO_DATE (D_TIME.END_TIME) >= TO_DATE (LAND.TIME_ID)
             AND D_TIME.TIME_BCKT_TYPE = LAND.TIME_LEVEL
       INNER JOIN SE2_M_GENERIC_CONFIG GEN_CONFIG
          ON GEN_CONFIG.CONFIG_TYPE = 'CYCLE_TIME_ID') AGG_METRIC GROUP BY METRIC_SK,PROF_SK,PROD_SK,TIME_BCKT_SK,TIME_BCKT_TYPE,METRIC_VALUE,ATTRIBUTE_1_NAME,ATTRIBUTE_1_VALUE,
		  ATTRIBUTE_2_NAME,ATTRIBUTE_2_VALUE,ATTRIBUTE_3_NAME,ATTRIBUTE_3_VALUE,ATTRIBUTE_4_NAME,ATTRIBUTE_4_VALUE,
		  ATTRIBUTE_5_NAME,ATTRIBUTE_5_VALUE,CYCLE_TIME_ID,LAST_LOAD_TS,UPDATED_BY HAVING COUNT(*)=1;
		  
-------------------MERCK_SE_AGG_METRIC----------
SELECT 
MERCK_AGG_MET.METRIC_ID,
MERCK_AGG_MET.METRIC_VERSION_NUMBER,
MERCK_AGG_MET.SUBJECT_AREA,
MERCK_AGG_MET.METRIC_NAME,
MERCK_AGG_MET.METRIC_VALUE,
MERCK_AGG_MET.METRIC_DATATYPE,
MERCK_AGG_MET.PARTY_ID,
MERCK_AGG_MET.PROF_TYPE,
MERCK_AGG_MET.PRODUCT_ID,
MERCK_AGG_MET.TIME_ID,
MERCK_AGG_MET.TIME_LEVEL,
MERCK_AGG_MET.ATTRIBUTE_1_NAME,
MERCK_AGG_MET.ATTRIBUTE_1_VALUE,
MERCK_AGG_MET.ATTRIBUTE_2_NAME,
MERCK_AGG_MET.ATTRIBUTE_2_VALUE,
MERCK_AGG_MET.ATTRIBUTE_3_NAME,
MERCK_AGG_MET.ATTRIBUTE_3_VALUE,
MERCK_AGG_MET.ATTRIBUTE_4_NAME,
MERCK_AGG_MET.ATTRIBUTE_4_VALUE,
MERCK_AGG_MET.ATTRIBUTE_5_NAME,
MERCK_AGG_MET.ATTRIBUTE_5_VALUE,
MERCK_AGG_MET.BATCH_ID,
MERCK_AGG_MET.PROCESS_ID,
MERCK_AGG_MET.LOAD_TIME,
MERCK_AGG_MET.MODIFIED_DATE,
MERCK_AGG_MET.MODIFIED_FLAG,
MERCK_AGG_MET.SOURCE_ROW_ID,
MERCK_AGG_MET.SOURCE_FILE_NAME 
FROM
(
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PARTY_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M119
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PROF_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M121
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PARTY_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M101
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PROF_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M103
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PARTY_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_ILINKS
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PARTY_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M110
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PROF_ID AS PARTY_ID,
       PARTY_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M116
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PARTY_ID AS PARTY_ID,
       PROF_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M129
UNION
SELECT METRIC_ID,
       METRIC_VERSION_NUMBER,
       SUBJECT_AREA,
       METRIC_NAME,
       METRIC_VALUE,
       METRIC_DATATYPE,
       PARTY_ID AS PARTY_ID,
       PROF_TYPE AS PROF_TYPE,
       PRODUCT_ID,
       TIME_ID,
       TIME_LEVEL,
       ATTRIBUTE_1_NAME,
       ATTRIBUTE_1_VALUE,
       ATTRIBUTE_2_NAME,
       ATTRIBUTE_2_VALUE,
       ATTRIBUTE_3_NAME,
       ATTRIBUTE_3_VALUE,
       ATTRIBUTE_4_NAME,
       ATTRIBUTE_4_VALUE,
       ATTRIBUTE_5_NAME,
       ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM MERCK_SE_AGG_METRIC_M106
UNION
SELECT 'M164' AS METRIC_ID,
       1 AS METRIC_VERSION_NUMBER,
       'NRX_CHANGE' AS SUBJECT_AREA,
       'NRX_CHANGE' AS METRIC_NAME,
       ALL_REC.NRX_CHANGE AS METRIC_VALUE,
       NULL AS METRIC_DATATYPE,
       ALL_REC.PROF_ID AS PARTY_ID,
       'HCP' AS PROF_TYPE,
       ALL_REC.PRODUCT_ID,
       ALL_REC.TIME_ID,
       'MONTH' AS TIME_LEVEL,
       NULL AS ATTRIBUTE_1_NAME,
       NULL AS ATTRIBUTE_1_VALUE,
       NULL AS ATTRIBUTE_2_NAME,
       NULL AS ATTRIBUTE_2_VALUE,
       NULL AS ATTRIBUTE_3_NAME,
       NULL AS ATTRIBUTE_3_VALUE,
       NULL AS ATTRIBUTE_4_NAME,
       NULL AS ATTRIBUTE_4_VALUE,
       NULL AS ATTRIBUTE_5_NAME,
       NULL AS ATTRIBUTE_5_VALUE,
       '1' AS BATCH_ID,
       '1' AS PROCESS_ID,
       '1' AS LOAD_TIME,
       '1' AS MODIFIED_DATE,
       '1' AS MODIFIED_FLAG,
       '1' AS SOURCE_ROW_ID,
       '1' AS SOURCE_FILE_NAME
  FROM (SELECT FULL_REC.PROF_ID,
               FULL_REC.PRODUCT_ID,
               ROW_NUMBER ()
               OVER (PARTITION BY FULL_REC.PROF_ID, FULL_REC.PRODUCT_ID
                     ORDER BY FULL_REC.TIME_ID DESC)
                  NUM_REC,
               FULL_REC.TIME_ID AS TIME_ID,
               FULL_REC.NRX_CHANGE
          FROM (SELECT PROF_ID AS PROF_ID,
                       PRODUCT_ID,
                       TIME_ID,
                       ABS (
                            (  METRIC_VALUE
                             + NVL (
                                  (LAG (
                                      METRIC_VALUE,
                                      1)
                                   OVER (PARTITION BY PROF_ID, PRODUCT_ID
                                         ORDER BY TIME_ID)),
                                  0)
                             + NVL (
                                  (LAG (
                                      METRIC_VALUE,
                                      2)
                                   OVER (PARTITION BY PROF_ID, PRODUCT_ID
                                         ORDER BY TIME_ID)),
                                  0))
                          - (  NVL (
                                  (LAG (
                                      METRIC_VALUE,
                                      3)
                                   OVER (PARTITION BY PROF_ID, PRODUCT_ID
                                         ORDER BY TIME_ID)),
                                  0)
                             + NVL (
                                  (LAG (
                                      METRIC_VALUE,
                                      4)
                                   OVER (PARTITION BY PROF_ID, PRODUCT_ID
                                         ORDER BY TIME_ID)),
                                  0)
                             + NVL (
                                  (LAG (
                                      METRIC_VALUE,
                                      5)
                                   OVER (PARTITION BY PROF_ID, PRODUCT_ID
                                         ORDER BY TIME_ID)),
                                  0)))
                          AS NRX_CHANGE
                  FROM MERCK_SE_AGG_METRIC_M101) FULL_REC) ALL_REC
 WHERE ALL_REC.NUM_REC = 1
 ) MERCK_AGG_MET WHERE MERCK_AGG_MET.METRIC_VALUE IS NOT NULL;
 
 
V_INDVDL_GROUP_WTRX_WK_F.txt
V_INDVDL_MARKET_WTRX_WK_F.txt
