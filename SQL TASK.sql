/* fIND MEAN*/
use task;
SELECT 
    AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean_Coal_RB_4800,
    AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean_Coal_RB_5500,
    AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean_Coal_RB_5700,
    AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS mean_Coal_RB_6000,
    AVG(Coal_India_5500_CFR_London_Close_USD) AS mean_Coal_India_5500,
    AVG(Price_WTI) AS mean_Price_WTI,
    AVG(Price_Brent_Oil) AS mean_Price_Brent_Oil,
    AVG(Price_Dubai_Brent_Oil) AS mean_Price_Dubai_Brent_Oil,
    AVG(Price_ExxonMobil) AS mean_Price_ExxonMobil,
    AVG(Price_Shenhua) AS mean_Price_Shenhua,
    AVG(Price_All_Share) AS mean_Price_All_Share,
    AVG(Price_Mining) AS mean_Price_Mining,
    AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS mean_Price_LNG_Japan_Korea,
    AVG(Price_ZAR_USD) AS mean_Price_ZAR_USD,
    AVG(Price_Natural_Gas) AS mean_Price_Natural_Gas,
    AVG(Price_ICE) AS mean_Price_ICE,
    AVG(Price_Dutch_TTF) AS mean_Price_Dutch_TTF,
    AVG(Price_Indian_en_exg_rate) AS mean_Price_Indian_en_exg_rate
FROM csv;

/*FIND MEDIAN*/
WITH ordered_data AS (
    SELECT 
        Coal_RB_4800_FOB_London_Close_USD,
        Coal_RB_5500_FOB_London_Close_USD,
        Coal_RB_5700_FOB_London_Close_USD,
        Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
        Coal_India_5500_CFR_London_Close_USD,
        Price_WTI,
        Price_Brent_Oil,
        Price_Dubai_Brent_Oil,
        Price_ExxonMobil,
        Price_Shenhua,
        Price_All_Share,
        Price_Mining,
        Price_LNG_Japan_Korea_Marker_PLATTS,
        Price_ZAR_USD,
        Price_Natural_Gas,
        Price_ICE,
        Price_Dutch_TTF,
        Price_Indian_en_exg_rate,
        ROW_NUMBER() OVER (ORDER BY Coal_RB_4800_FOB_London_Close_USD) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM csv
)
SELECT
    -- Median for Coal_RB_4800_FOB_London_Close_USD
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Coal_RB_4800_FOB_London_Close_USD END) AS median_Coal_RB_4800,

    -- Median for Coal_RB_5500_FOB_London_Close_USD
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Coal_RB_5500_FOB_London_Close_USD END) AS median_Coal_RB_5500,

    -- Median for Coal_RB_5700_FOB_London_Close_USD
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Coal_RB_5700_FOB_London_Close_USD END) AS median_Coal_RB_5700,

    -- Median for Coal_RB_6000_FOB_CurrentWeek_Avg_USD
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Coal_RB_6000_FOB_CurrentWeek_Avg_USD END) AS median_Coal_RB_6000,

    -- Median for Coal_India_5500_CFR_London_Close_USD
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Coal_India_5500_CFR_London_Close_USD END) AS median_Coal_India_5500,

    -- Median for Price_WTI
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_WTI END) AS median_Price_WTI,

    -- Median for Price_Brent_Oil
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Brent_Oil END) AS median_Price_Brent_Oil,

    -- Median for Price_Dubai_Brent_Oil
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Dubai_Brent_Oil END) AS median_Price_Dubai_Brent_Oil,

    -- Median for Price_ExxonMobil
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_ExxonMobil END) AS median_Price_ExxonMobil,

    -- Median for Price_Shenhua
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Shenhua END) AS median_Price_Shenhua,

    -- Median for Price_All_Share
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_All_Share END) AS median_Price_All_Share,

    -- Median for Price_Mining
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Mining END) AS median_Price_Mining,

    -- Median for Price_LNG_Japan_Korea_Marker_PLATTS
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_LNG_Japan_Korea_Marker_PLATTS END) AS median_Price_LNG_Japan_Korea,

    -- Median for Price_ZAR_USD
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_ZAR_USD END) AS median_Price_ZAR_USD,

    -- Median for Price_Natural_Gas
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Natural_Gas END) AS median_Price_Natural_Gas,

    -- Median for Price_ICE
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_ICE END) AS median_Price_ICE,

    -- Median for Price_Dutch_TTF
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Dutch_TTF END) AS median_Price_Dutch_TTF,

    -- Median for Price_Indian_en_exg_rate
    AVG(CASE WHEN row_num = (total_count + 1) / 2 OR row_num = total_count / 2 + 1 THEN Price_Indian_en_exg_rate END) AS median_Price_Indian_en_exg_rate
FROM ordered_data;


/* FIND MODE*/
SELECT 
    -- Mode for Coal_RB_4800_FOB_London_Close_USD
    (SELECT Coal_RB_4800_FOB_London_Close_USD 
     FROM csv 
     GROUP BY Coal_RB_4800_FOB_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Coal_RB_4800,

    -- Mode for Coal_RB_5500_FOB_London_Close_USD
    (SELECT Coal_RB_5500_FOB_London_Close_USD 
     FROM csv 
     GROUP BY Coal_RB_5500_FOB_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Coal_RB_5500,

    -- Mode for Coal_RB_5700_FOB_London_Close_USD
    (SELECT Coal_RB_5700_FOB_London_Close_USD 
     FROM csv 
     GROUP BY Coal_RB_5700_FOB_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Coal_RB_5700,

    -- Mode for Coal_RB_6000_FOB_CurrentWeek_Avg_USD
    (SELECT Coal_RB_6000_FOB_CurrentWeek_Avg_USD 
     FROM csv 
     GROUP BY Coal_RB_6000_FOB_CurrentWeek_Avg_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Coal_RB_6000,

    -- Mode for Coal_India_5500_CFR_London_Close_USD
    (SELECT Coal_India_5500_CFR_London_Close_USD 
     FROM csv 
     GROUP BY Coal_India_5500_CFR_London_Close_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Coal_India_5500,

    -- Mode for Price_WTI
    (SELECT Price_WTI 
     FROM csv 
     GROUP BY Price_WTI 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_WTI,

    -- Mode for Price_Brent_Oil
    (SELECT Price_Brent_Oil 
     FROM csv 
     GROUP BY Price_Brent_Oil 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Brent_Oil,

    -- Mode for Price_Dubai_Brent_Oil
    (SELECT Price_Dubai_Brent_Oil 
     FROM csv 
     GROUP BY Price_Dubai_Brent_Oil 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Dubai_Brent_Oil,

    -- Mode for Price_ExxonMobil
    (SELECT Price_ExxonMobil 
     FROM csv 
     GROUP BY Price_ExxonMobil 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_ExxonMobil,

    -- Mode for Price_Shenhua
    (SELECT Price_Shenhua 
     FROM csv 
     GROUP BY Price_Shenhua 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Shenhua,

    -- Mode for Price_All_Share
    (SELECT Price_All_Share 
     FROM csv 
     GROUP BY Price_All_Share 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_All_Share,

    -- Mode for Price_Mining
    (SELECT Price_Mining 
     FROM csv 
     GROUP BY Price_Mining 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Mining,

    -- Mode for Price_LNG_Japan_Korea_Marker_PLATTS
    (SELECT Price_LNG_Japan_Korea_Marker_PLATTS 
     FROM csv 
     GROUP BY Price_LNG_Japan_Korea_Marker_PLATTS 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_LNG_Japan_Korea,

    -- Mode for Price_ZAR_USD
    (SELECT Price_ZAR_USD 
     FROM csv 
     GROUP BY Price_ZAR_USD 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_ZAR_USD,

    -- Mode for Price_Natural_Gas
    (SELECT Price_Natural_Gas 
     FROM csv 
     GROUP BY Price_Natural_Gas 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Natural_Gas,

    -- Mode for Price_ICE
    (SELECT Price_ICE 
     FROM csv 
     GROUP BY Price_ICE 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_ICE,

    -- Mode for Price_Dutch_TTF
    (SELECT Price_Dutch_TTF 
     FROM csv 
     GROUP BY Price_Dutch_TTF 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Dutch_TTF,

    -- Mode for Price_Indian_en_exg_rate
    (SELECT Price_Indian_en_exg_rate 
     FROM csv 
     GROUP BY Price_Indian_en_exg_rate 
     ORDER BY COUNT(*) DESC 
     LIMIT 1) AS mode_Price_Indian_en_exg_rate;


/*FIND VARIANCE*/
WITH means AS (
    SELECT 
        AVG(Coal_RB_4800_FOB_London_Close_USD) AS mean_Coal_RB_4800,
        AVG(Coal_RB_5500_FOB_London_Close_USD) AS mean_Coal_RB_5500,
        AVG(Coal_RB_5700_FOB_London_Close_USD) AS mean_Coal_RB_5700,
        AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS mean_Coal_RB_6000,
        AVG(Coal_India_5500_CFR_London_Close_USD) AS mean_Coal_India_5500,
        AVG(Price_WTI) AS mean_Price_WTI,
        AVG(Price_Brent_Oil) AS mean_Price_Brent_Oil,
        AVG(Price_Dubai_Brent_Oil) AS mean_Price_Dubai_Brent_Oil,
        AVG(Price_ExxonMobil) AS mean_Price_ExxonMobil,
        AVG(Price_Shenhua) AS mean_Price_Shenhua,
        AVG(Price_All_Share) AS mean_Price_All_Share,
        AVG(Price_Mining) AS mean_Price_Mining,
        AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS mean_Price_LNG_Japan_Korea,
        AVG(Price_ZAR_USD) AS mean_Price_ZAR_USD,
        AVG(Price_Natural_Gas) AS mean_Price_Natural_Gas,
        AVG(Price_ICE) AS mean_Price_ICE,
        AVG(Price_Dutch_TTF) AS mean_Price_Dutch_TTF,
        AVG(Price_Indian_en_exg_rate) AS mean_Price_Indian_en_exg_rate
    FROM csv
)
SELECT
    -- Variance for Coal_RB_4800_FOB_London_Close_USD
    AVG(POW(Coal_RB_4800_FOB_London_Close_USD - mean_Coal_RB_4800, 2)) AS variance_Coal_RB_4800,

    -- Variance for Coal_RB_5500_FOB_London_Close_USD
    AVG(POW(Coal_RB_5500_FOB_London_Close_USD - mean_Coal_RB_5500, 2)) AS variance_Coal_RB_5500,

    -- Variance for Coal_RB_5700_FOB_London_Close_USD
    AVG(POW(Coal_RB_5700_FOB_London_Close_USD - mean_Coal_RB_5700, 2)) AS variance_Coal_RB_5700,

    -- Variance for Coal_RB_6000_FOB_CurrentWeek_Avg_USD
    AVG(POW(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - mean_Coal_RB_6000, 2)) AS variance_Coal_RB_6000,

    -- Variance for Coal_India_5500_CFR_London_Close_USD
    AVG(POW(Coal_India_5500_CFR_London_Close_USD - mean_Coal_India_5500, 2)) AS variance_Coal_India_5500,

    -- Variance for Price_WTI
    AVG(POW(Price_WTI - mean_Price_WTI, 2)) AS variance_Price_WTI,

    -- Variance for Price_Brent_Oil
    AVG(POW(Price_Brent_Oil - mean_Price_Brent_Oil, 2)) AS variance_Price_Brent_Oil,

    -- Variance for Price_Dubai_Brent_Oil
    AVG(POW(Price_Dubai_Brent_Oil - mean_Price_Dubai_Brent_Oil, 2)) AS variance_Price_Dubai_Brent_Oil,

    -- Variance for Price_ExxonMobil
    AVG(POW(Price_ExxonMobil - mean_Price_ExxonMobil, 2)) AS variance_Price_ExxonMobil,

    -- Variance for Price_Shenhua
    AVG(POW(Price_Shenhua - mean_Price_Shenhua, 2)) AS variance_Price_Shenhua,

    -- Variance for Price_All_Share
    AVG(POW(Price_All_Share - mean_Price_All_Share, 2)) AS variance_Price_All_Share,

    -- Variance for Price_Mining
    AVG(POW(Price_Mining - mean_Price_Mining, 2)) AS variance_Price_Mining,

    -- Variance for Price_LNG_Japan_Korea_Marker_PLATTS
    AVG(POW(Price_LNG_Japan_Korea_Marker_PLATTS - mean_Price_LNG_Japan_Korea, 2)) AS variance_Price_LNG_Japan_Korea,

    -- Variance for Price_ZAR_USD
    AVG(POW(Price_ZAR_USD - mean_Price_ZAR_USD, 2)) AS variance_Price_ZAR_USD,

    -- Variance for Price_Natural_Gas
    AVG(POW(Price_Natural_Gas - mean_Price_Natural_Gas, 2)) AS variance_Price_Natural_Gas,

    -- Variance for Price_ICE
    AVG(POW(Price_ICE - mean_Price_ICE, 2)) AS variance_Price_ICE,

    -- Variance for Price_Dutch_TTF
    AVG(POW(Price_Dutch_TTF - mean_Price_Dutch_TTF, 2)) AS variance_Price_Dutch_TTF,

    -- Variance for Price_Indian_en_exg_rate
    AVG(POW(Price_Indian_en_exg_rate - mean_Price_Indian_en_exg_rate, 2)) AS variance_Price_Indian_en_exg_rate

FROM csv, means;


/*FIND STD DEV*/

SELECT
  STDDEV(Coal_RB_4800_FOB_London_Close_USD) AS stddev_Coal_RB_4800,
  STDDEV(Coal_RB_5500_FOB_London_Close_USD) AS stddev_Coal_RB_5500,
  STDDEV(Coal_RB_5700_FOB_London_Close_USD) AS stddev_Coal_RB_5700,
  STDDEV(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS stddev_Coal_RB_6000,
  STDDEV(Coal_India_5500_CFR_London_Close_USD) AS stddev_Coal_India_5500,
  STDDEV(Price_WTI) AS stddev_Price_WTI,
  STDDEV(Price_Brent_Oil) AS stddev_Price_Brent,
  STDDEV(Price_Dubai_Brent_Oil) AS stddev_Price_Dubai,
  STDDEV(Price_ExxonMobil) AS stddev_Price_Exxon,
  STDDEV(Price_Shenhua) AS stddev_Price_Shenhua,
  STDDEV(Price_All_Share) AS stddev_Price_All_Share,
  STDDEV(Price_Mining) AS stddev_Price_Mining,
  STDDEV(Price_LNG_Japan_Korea_Marker_PLATTS) AS stddev_Price_LNG,
  STDDEV(Price_ZAR_USD) AS stddev_Price_ZAR,
  STDDEV(Price_Natural_Gas) AS stddev_Price_Natural_Gas,
  STDDEV(Price_ICE) AS stddev_Price_ICE,
  STDDEV(Price_Dutch_TTF) AS stddev_Price_Dutch,
  STDDEV(Price_Indian_en_exg_rate) AS stddev_Price_Indian_exg
FROM csv;


/*FIND SKEWNESS*/
WITH Averages AS (
    SELECT 
        AVG(Coal_RB_4800_FOB_London_Close_USD) AS avg_Coal_RB_4800_FOB_London_Close_USD,
        AVG(Coal_RB_5500_FOB_London_Close_USD) AS avg_Coal_RB_5500_FOB_London_Close_USD,
        AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
        AVG(Coal_India_5500_CFR_London_Close_USD) AS avg_Coal_India_5500_CFR_London_Close_USD,
        AVG(Price_WTI) AS avg_Price_WTI,
        AVG(Price_Brent_Oil) AS avg_Price_Brent_Oil,
        AVG(Price_Dubai_Brent_Oil) AS avg_Price_Dubai_Brent_Oil,
        AVG(Price_ExxonMobil) AS avg_Price_ExxonMobil,
        AVG(Price_Shenhua) AS avg_Price_Shenhua,
        AVG(Price_All_Share) AS avg_Price_All_Share,
        AVG(Price_Mining) AS avg_Price_Mining,
        AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS avg_Price_LNG_Japan_Korea_Marker_PLATTS,
        AVG(Price_ZAR_USD) AS avg_Price_ZAR_USD,
        AVG(Price_Natural_Gas) AS avg_Price_Natural_Gas,
        AVG(Price_ICE) AS avg_Price_ICE,
        AVG(Price_Dutch_TTF) AS avg_Price_Dutch_TTF
    FROM csv
),
Skewness AS (
    SELECT
        (COUNT(*) * SUM(POWER(Coal_RB_4800_FOB_London_Close_USD - avg_Coal_RB_4800_FOB_London_Close_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD), 3)) AS Skewness_Coal_RB_4800_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(Coal_RB_5500_FOB_London_Close_USD - avg_Coal_RB_5500_FOB_London_Close_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD), 3)) AS Skewness_Coal_RB_5500_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD), 3)) AS Skewness_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,

        (COUNT(*) * SUM(POWER(Coal_India_5500_CFR_London_Close_USD - avg_Coal_India_5500_CFR_London_Close_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Coal_India_5500_CFR_London_Close_USD), 3)) AS Skewness_Coal_India_5500_CFR_London_Close_USD,

        (COUNT(*) * SUM(POWER(Price_WTI - avg_Price_WTI, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_WTI), 3)) AS Skewness_Price_WTI,

        (COUNT(*) * SUM(POWER(Price_Brent_Oil - avg_Price_Brent_Oil, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_Brent_Oil), 3)) AS Skewness_Price_Brent_Oil,

        (COUNT(*) * SUM(POWER(Price_Dubai_Brent_Oil - avg_Price_Dubai_Brent_Oil, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_Dubai_Brent_Oil), 3)) AS Skewness_Price_Dubai_Brent_Oil,

        (COUNT(*) * SUM(POWER(Price_ExxonMobil - avg_Price_ExxonMobil, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_ExxonMobil), 3)) AS Skewness_Price_ExxonMobil,

        (COUNT(*) * SUM(POWER(Price_Shenhua - avg_Price_Shenhua, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_Shenhua), 3)) AS Skewness_Price_Shenhua,

        (COUNT(*) * SUM(POWER(Price_All_Share - avg_Price_All_Share, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_All_Share), 3)) AS Skewness_Price_All_Share,

        (COUNT(*) * SUM(POWER(Price_Mining - avg_Price_Mining, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_Mining), 3)) AS Skewness_Price_Mining,

        (COUNT(*) * SUM(POWER(Price_LNG_Japan_Korea_Marker_PLATTS - avg_Price_LNG_Japan_Korea_Marker_PLATTS, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS), 3)) AS Skewness_Price_LNG_Japan_Korea_Marker_PLATTS,

        (COUNT(*) * SUM(POWER(Price_ZAR_USD - avg_Price_ZAR_USD, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_ZAR_USD), 3)) AS Skewness_Price_ZAR_USD,

        (COUNT(*) * SUM(POWER(Price_Natural_Gas - avg_Price_Natural_Gas, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_Natural_Gas), 3)) AS Skewness_Price_Natural_Gas,

        (COUNT(*) * SUM(POWER(Price_ICE - avg_Price_ICE, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_ICE), 3)) AS Skewness_Price_ICE,

        (COUNT(*) * SUM(POWER(Price_Dutch_TTF - avg_Price_Dutch_TTF, 3))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * POWER(STDDEV_POP(Price_Dutch_TTF), 3)) AS Skewness_Price_Dutch_TTF

    FROM csv, Averages
)
SELECT * FROM Skewness;


  /* FIND KURT*/

WITH Averages AS (
    SELECT
        AVG(Coal_RB_4800_FOB_London_Close_USD) AS avg_Coal_RB_4800_FOB_London_Close_USD,
        AVG(Coal_RB_5500_FOB_London_Close_USD) AS avg_Coal_RB_5500_FOB_London_Close_USD,
        AVG(Coal_RB_5700_FOB_London_Close_USD) AS avg_Coal_RB_5700_FOB_London_Close_USD,
        AVG(Coal_RB_6000_FOB_CurrentWeek_Avg_USD) AS avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,
        AVG(Coal_India_5500_CFR_London_Close_USD) AS avg_Coal_India_5500_CFR_London_Close_USD,
        AVG(Price_WTI) AS avg_Price_WTI,
        AVG(Price_Brent_Oil) AS avg_Price_Brent_Oil,
        AVG(Price_Dubai_Brent_Oil) AS avg_Price_Dubai_Brent_Oil,
        AVG(Price_ExxonMobil) AS avg_Price_ExxonMobil,
        AVG(Price_Shenhua) AS avg_Price_Shenhua,
        AVG(Price_All_Share) AS avg_Price_All_Share,
        AVG(Price_Mining) AS avg_Price_Mining,
        AVG(Price_LNG_Japan_Korea_Marker_PLATTS) AS avg_Price_LNG_Japan_Korea_Marker_PLATTS,
        AVG(Price_ZAR_USD) AS avg_Price_ZAR_USD,
        AVG(Price_Natural_Gas) AS avg_Price_Natural_Gas,
        AVG(Price_ICE) AS avg_Price_ICE,
        AVG(Price_Dutch_TTF) AS avg_Price_Dutch_TTF
    FROM csv
),
Kurtosis AS (
    SELECT
        COUNT(*) AS count_rows,

        -- Kurtosis Calculations for all price columns
        (COUNT(*) * SUM(POWER(Coal_RB_4800_FOB_London_Close_USD - avg_Coal_RB_4800_FOB_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Coal_RB_4800_FOB_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_4800_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(Coal_RB_5500_FOB_London_Close_USD - avg_Coal_RB_5500_FOB_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Coal_RB_5500_FOB_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_5500_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(Coal_RB_5700_FOB_London_Close_USD - avg_Coal_RB_5700_FOB_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Coal_RB_5700_FOB_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_5700_FOB_London_Close_USD,

        (COUNT(*) * SUM(POWER(Coal_RB_6000_FOB_CurrentWeek_Avg_USD - avg_Coal_RB_6000_FOB_CurrentWeek_Avg_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Coal_RB_6000_FOB_CurrentWeek_Avg_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_RB_6000_FOB_CurrentWeek_Avg_USD,

        (COUNT(*) * SUM(POWER(Coal_India_5500_CFR_London_Close_USD - avg_Coal_India_5500_CFR_London_Close_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Coal_India_5500_CFR_London_Close_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Coal_India_5500_CFR_London_Close_USD,

        (COUNT(*) * SUM(POWER(Price_WTI - avg_Price_WTI, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_WTI), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_WTI,

        (COUNT(*) * SUM(POWER(Price_Brent_Oil - avg_Price_Brent_Oil, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_Brent_Oil), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Brent_Oil,

        (COUNT(*) * SUM(POWER(Price_Dubai_Brent_Oil - avg_Price_Dubai_Brent_Oil, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_Dubai_Brent_Oil), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Dubai_Brent_Oil,

        (COUNT(*) * SUM(POWER(Price_ExxonMobil - avg_Price_ExxonMobil, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_ExxonMobil), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_ExxonMobil,

        (COUNT(*) * SUM(POWER(Price_Shenhua - avg_Price_Shenhua, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_Shenhua), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Shenhua,

        (COUNT(*) * SUM(POWER(Price_All_Share - avg_Price_All_Share, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_All_Share), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_All_Share,

        (COUNT(*) * SUM(POWER(Price_Mining - avg_Price_Mining, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_Mining), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Mining,

        (COUNT(*) * SUM(POWER(Price_LNG_Japan_Korea_Marker_PLATTS - avg_Price_LNG_Japan_Korea_Marker_PLATTS, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_LNG_Japan_Korea_Marker_PLATTS), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_LNG_Japan_Korea_Marker_PLATTS,

        (COUNT(*) * SUM(POWER(Price_ZAR_USD - avg_Price_ZAR_USD, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_ZAR_USD), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_ZAR_USD,

        (COUNT(*) * SUM(POWER(Price_Natural_Gas - avg_Price_Natural_Gas, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_Natural_Gas), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Natural_Gas,

        (COUNT(*) * SUM(POWER(Price_ICE - avg_Price_ICE, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_ICE), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_ICE,

        (COUNT(*) * SUM(POWER(Price_Dutch_TTF - avg_Price_Dutch_TTF, 4))) /
        ((COUNT(*) - 1) * (COUNT(*) - 2) * (COUNT(*) - 3) * POWER(STDDEV_POP(Price_Dutch_TTF), 4))
        - (3 * POWER(COUNT(*) - 1, 2) / ((COUNT(*) - 2) * (COUNT(*) - 3))) AS Kurtosis_Price_Dutch_TTF
    FROM csv, Averages
)
SELECT * FROM Kurtosis;





    


