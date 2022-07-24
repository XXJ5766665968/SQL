/*Category: Upload( MISC:1 ;IMAGE SET:32 ;COSPLAY:64;)*/
-- MYSQL中批量替换某个字段的部分数据
UPDATE QUICK_SEARCH set name=replace(name, 'uploader',  'COS');
-- DELETE  FROM DOWNLOAD_DIRNAME where GID !=0;
UPDATE FILTER set Text=replace(TEXT, 'uploader:', '');

--  下載&收藏
UPDATE DOWNLOADS
set STATE='3'
where LABEL not like '%@%'
   or LABEL is Null;

UPDATE DOWNLOADS
set STATE='0'
where LABEL like '%@%';

--
insert into DOWNLOADS(GID, TOKEN, TITLE, TITLE_JPN, THUMB,
                      CATEGORY, POSTED, UPLOADER, RATING,
                      SIMPLE_LANGUAGE, TIME, STATE, LEGACY,
                      LABEL)
select GID,
       TOKEN,
       TITLE,
       TITLE_JPN,
       THUMB,
       CATEGORY,
       POSTED,
       UPLOADER,
       RATING,
       SIMPLE_LANGUAGE,
       TIME,
       3,
       0,
       'MISC'
from LOCAL_FAVORITES
where Category = 1;


insert into DOWNLOADS(GID, TOKEN, TITLE, TITLE_JPN, THUMB,
                      CATEGORY, POSTED, UPLOADER, RATING,
                      SIMPLE_LANGUAGE, TIME, STATE, LEGACY,
                      LABEL)
select GID,
       TOKEN,
       TITLE,
       TITLE_JPN,
       THUMB,
       CATEGORY,
       POSTED,
       UPLOADER,
       RATING,
       SIMPLE_LANGUAGE,
       TIME,
       3,
       0,
       'IMAGESET'
from LOCAL_FAVORITES
where Category = 32;

insert into DOWNLOADS(GID, TOKEN, TITLE, TITLE_JPN, THUMB,
                      CATEGORY, POSTED, UPLOADER, RATING,
                      SIMPLE_LANGUAGE, TIME, STATE, LEGACY,
                      LABEL)
select GID,
       TOKEN,
       TITLE,
       TITLE_JPN,
       THUMB,
       CATEGORY,
       POSTED,
       UPLOADER,
       RATING,
       SIMPLE_LANGUAGE,
       TIME,
       3,
       0,
       'COSPLAY'
from LOCAL_FAVORITES
where Category = 64;






