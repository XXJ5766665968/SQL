-- MYSQL中批量替换某个字段的部分数据
UPDATE QUICK_SEARCH set name=replace(name, 'uploader',  'COS');
-- DELETE  FROM DOWNLOAD_DIRNAME where GID !=0;
UPDATE FILTER set Text=replace(TEXT, 'uploader:', '');
UPDATE DOWNLOADS
set STATE='0'
where LABEL  like '%#%'
   or LABEL is Null;
UPDATE DOWNLOADS
set STATE='3'
where LABEL not like '%#%';
--
select UPLOADER,count(UPLOADER) from DOWNLOADS group by
                                                    UPLOADER;
select Title,count() from DOWNLOADS
group by
    Title;
SELECT SUM(CASE
               WHEN CATEGORY = '1' THEN 1
               ELSE 0 END) AS MISC_1,
       SUM(CASE
               WHEN CATEGORY = '32' THEN 1
               ELSE 0 END) AS 图集_32,
       SUM(CASE
               WHEN CATEGORY = '64' THEN 1
               ELSE 0 END) AS COS_64,
       SUM(CASE
               WHEN CATEGORY = '2' and '4' and '8' THEN 1
               ELSE 0 END) AS 中文_2_4_8
FROM HISTORY






