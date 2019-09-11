alter table movies.actors add constraint actors_pk primary key (actor_id);

--Foreign keys
alter table movies.actors add constraint actors_persons_fk foreign key (person_id) references movies.persons (person_id);
