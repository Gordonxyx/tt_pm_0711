{{ config(materialized='table') }}

WITH post AS (
    SELECT * 
    FROM 
    {{ref('stg_post')}}
),

author AS (
    SELECT *
    FROM 
    {{ref('stg_author')}}
)

SELECT 
    DISTINCT a."authorMeta.name" AS Author,
    a."authorMeta.nickName" AS Nickname,
    a."authorMeta.fans" AS Followers,
    a."authorMeta.video" AS VideosCount,
    CASE WHEN a."authorMeta.privateAccount" = TRUE THEN 'Private' ELSE 'Public' END AS AccountType,
    CASE WHEN a."authorMeta.verified" = TRUE THEN 'Verified' ELSE 'NotVerified' END AS AccountStatus,
    CASE WHEN a."authorMeta.ttSeller" = TRUE THEN 'Seller' ELSE 'NotSeller' END AS SellerStatus,
    p."videoMeta.coverUrl" AS PostURL,
    p."webVideoUrl" AS WebVideoURL,
    p."text" AS Caption,
    CASE WHEN p."isAd" = TRUE THEN 'Ads' ELSE 'NotAds' END AS Ads,
    CASE WHEN p."isMuted" = TRUE THEN 'Muted' ELSE 'NotMuted' END AS Mute,
    p."diggCount" AS Likes,
    p."shareCount" AS Shares,
    p."playCount" AS Views,
    p."commentCount" AS Comments,
    p."videoMeta.duration" AS Duration_Sec,
    p."createTimeISO" AS Created_AT
FROM author AS a
RIGHT JOIN post AS p
ON a."authorMeta.name" = p."authorMeta.name"
