/*  Category:( MISC_1	图集_32	COS_64	中文_2_4_8)   */

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
       '#MISC'
from HISTORY
where GID not in (select GID from DOWNLOADS)
  and Category = 1;

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
       '#图集'
from HISTORY
where GID not in (select GID from DOWNLOADS)
  and Category = 32;

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
       '#COS'
from HISTORY
where GID not in (select GID from DOWNLOADS)
  and Category = 64;

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
       '#中文'
from HISTORY
where GID not in (select GID from DOWNLOADS)
  and Category in (2, 4, 8);

delete from HISTORY where CATEGORY in (1,2,4,8,32,64)





