CREATE TABLE movies.persons 
(
  person_id      numeric(12,0)   NOT NULL DEFAULT NEXTVAL('movies.seq_person_id'),
  first_name     varchar(250)    NOT NULL,
  last_name      varchar(4000)   NOT NULL,
  birth_date     date            NOT NULL, 
  --System cols
  sys_tsmod      timestamp       NOT NULL DEFAULT CURRENT_TIMESTAMP,
  sys_user       varchar(20)     NOT NULL
);
--------------------------------------------------------------
COMMENT ON TABLE  movies.persons IS 'Persons';
---------------------------------------------------------------
COMMENT ON COLUMN movies.persons.person_id    IS 'Person id (SEQ_PERSON_ID)'; 
COMMENT ON COLUMN movies.persons.first_name   IS 'First name of person'; 
COMMENT ON COLUMN movies.persons.last_name    IS 'Last name of person'; 
COMMENT ON COLUMN movies.persons.birth_date   IS 'Birth date of person';
--System cols
COMMENT ON COLUMN movies.persons.sys_tsmod    IS 'Last modification time of record'; 
COMMENT ON COLUMN movies.persons.sys_user     IS 'Last user that modified record'; 
