--Create schema
CREATE SCHEMA movies;

-- Create sequences
\ir 00_sequences/seq_movie_id.sql
\ir 00_sequences/seq_actor_id.sql
\ir 00_sequences/seq_person_id.sql
\ir 00_sequences/seq_movie_cast_id.sql

-- Create tables
\ir 10_tables/movies.sql
\ir 10_tables/persons.sql
\ir 10_tables/actors.sql
\ir 10_tables/movie_cast.sql

-- Create constraints
\ir 20_constraints/persons.sql
\ir 20_constraints/movies.sql
\ir 20_constraints/actors.sql
\ir 20_constraints/movie_cast.sql
