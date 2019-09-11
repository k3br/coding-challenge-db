start transaction;

--Initialize all schemas 
\ir movies/install_schema.sql;
\ir movies_admin/install_schema.sql;

-- Version of database objects
insert into movies_admin.db_obj_version(version_id, installation_date) values ('0.1', current_timestamp);

-- Commit transaction
commit;
