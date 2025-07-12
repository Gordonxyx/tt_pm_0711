{{ config(materialized='table') }}

WITH post AS (
    SELECT * 
    FROM 
    {{ref('stg_post')}}
),

music AS (
    SELECT *
    FROM 
    {{ref('stg_music')}}
)

SELECT 
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
    p."createTimeISO" AS Created_AT,
    m."musicMeta.musicName" AS MusicName,
    m."musicMeta.musicAlbum" AS MusicAlbum,
    m."musicMeta.musicAuthor" AS MusicAuthor,
    CASE WHEN m."musicMeta.musicOriginal" = TRUE THEN 'Original' ELSE 'NotOriginal' END AS MusicType
FROM music AS m
JOIN post AS p
ON p."text" = m."text"