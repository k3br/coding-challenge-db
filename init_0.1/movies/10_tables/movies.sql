CREATE TABLE movies.movies
(
  movie_id       numeric(12,0)   NOT NULL DEFAULT NEXTVAL('movies.seq_movie_id'),
  title          varchar(250)    NOT NULL,
  description    varchar(4000)   NOT NULL,
  release_date   date                    , 
  duration       numeric(4,0)    NOT NULL, 
  --System cols
  sys_tsmod      timestamp       NOT NULL DEFAULT CURRENT_TIMESTAMP,
  sys_user       varchar(20)     NOT NULL
);
--------------------------------------------------------------
COMMENT ON TABLE  movies.movies IS 'Movies table';
---------------------------------------------------------------
COMMENT ON COLUMN movies.movies.movie_id     IS 'Movie id (SEQ_MOVIE_ID)'; 
COMMENT ON COLUMN movies.movies.title        IS 'Title of movie'; 
COMMENT ON COLUMN movies.movies.description  IS 'Description of movie'; 
COMMENT ON COLUMN movies.movies.release_date IS 'Release date of movie';
COMMENT ON COLUMN movies.movies.duration     IS 'Duration of movie [minutes]'; 
--System cols
COMMENT ON COLUMN movies.movies.sys_tsmod    IS 'Last modification time of record'; 
COMMENT ON COLUMN movies.movies.sys_user     IS 'Last user that modified record'; 
