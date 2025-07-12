{{ config(materialized='table') }}

WITH author_performance AS (
    SELECT *
    FROM {{ref('int_post_author')}}
)


SELECT 
    *,
    (LIKES + SHARES + COMMENTS)/VIEWS AS Engagement_Rate,
    LIKES/VIEWS AS Like_Rate,
    SHARES/VIEWS AS Share_Rate,
    COMMENTS/VIEWS AS Comment_Rate,
    CASE WHEN CAPTION LIKE '%labubu%' OR CAPTION LIKE '%THEMONSTERS' THEN 1 ELSE 0 END AS is_labubu,
    CASE WHEN CAPTION LIKE '%skullpanda%' THEN 1 ELSE 0 END AS is_skullpanda,
    CASE WHEN CAPTION LIKE '%crybaby%' THEN 1 ELSE 0 END AS is_crybaby,
    CASE WHEN CAPTION LIKE '%hirono%' THEN 1 ELSE 0 END AS is_hirono,
    CASE WHEN CAPTION LIKE '%unbox%' OR CAPTION LIKE '%open' THEN 1 ELSE 0 END AS is_unboxing,
    CASE WHEN CAPTION LIKE '%blindbox%' THEN 1 ELSE 0 END AS is_blindbox,
    CASE WHEN CAPTION LIKE '%must%' OR CAPTION LIKE '%recommend' THEN 1 ELSE 0 END AS is_recommendation,
    CASE WHEN CAPTION LIKE '%cute%' THEN 1 ELSE 0 END AS is_cute
FROM author_performance