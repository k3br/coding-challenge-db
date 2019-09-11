alter table movies.movie_cast add constraint movie_cast_pk primary key (movie_cast_id);

--Foreign keys
alter table movies.movie_cast add constraint movie_cast_movies_fk foreign key (movie_id) references movies.movies (movie_id);
alter table movies.movie_cast add constraint movie_cast_actors_fk foreign key (actor_id) references movies.actors (actor_id);
