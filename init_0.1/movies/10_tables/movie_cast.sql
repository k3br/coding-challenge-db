CREATE TABLE movies.movie_cast
(
  movie_cast_id       numeric(12,0)   NOT NULL DEFAULT NEXTVAL('movies.seq_movie_cast_id'),
  movie_id            numeric(12,0)   NOT NULL,
  actor_id            numeric(12,0)   NOT NULL,
  role_name           varchar(50)             ,
  --System cols
  sys_tsmod           timestamp       NOT NULL DEFAULT CURRENT_TIMESTAMP,
  sys_user            varchar(20)     NOT NULL
);
--------------------------------------------------------------------------
COMMENT ON TABLE  movies.movie_cast IS 'Cross table of movies and actors (cast)';
--------------------------------------------------------------------------
COMMENT ON COLUMN movies.movie_cast.movie_cast_id   IS 'Cast id (SEQ_MOVIE_CAST_ID)'; 
COMMENT ON COLUMN movies.movie_cast.movie_id        IS 'Movie id (Reference to table movies)'; 
COMMENT ON COLUMN movies.movie_cast.actor_id        IS 'Actor id (Reference to table actor)'; 
COMMENT ON COLUMN movies.movie_cast.role_name       IS 'Role name of actor in movie'; 
--System cols
COMMENT ON COLUMN movies.movie_cast.sys_tsmod       IS 'Last modification time of record'; 
COMMENT ON COLUMN movies.movie_cast.sys_user        IS 'Last user that modified record'; 
