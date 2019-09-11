CREATE TABLE movies.actors
(
  actor_id       numeric(12,0)   NOT NULL DEFAULT NEXTVAL('movies.seq_actor_id'),
  person_id      numeric(12,0)   NOT NULL,
  --System cols
  sys_tsmod      timestamp       NOT NULL DEFAULT CURRENT_TIMESTAMP,
  sys_user       varchar(20)     NOT NULL
);
--------------------------------------------------------------------------
COMMENT ON TABLE  movies.actors IS 'Table for identification of person as actor';
--------------------------------------------------------------------------
COMMENT ON COLUMN movies.actors.actor_id  IS 'Actor id (SEQ_ACTOR_ID)';
COMMENT ON COLUMN movies.actors.person_id IS 'Person id (Reference to table person)'; 
--System cols
COMMENT ON COLUMN movies.actors.sys_tsmod IS 'Last modification time of record';  
COMMENT ON COLUMN movies.actors.sys_user  IS 'Last user that modified record'; 
