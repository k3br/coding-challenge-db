CREATE TABLE movies_admin.db_obj_version
(
  version_id        VARCHAR(10) NOT NULL,
  installation_date timestamp   NOT NULL
);
--------------------------------------------------------------------------
COMMENT ON TABLE  movies_admin.db_obj_version IS 'Version of Movies DB';
--------------------------------------------------------------------------
COMMENT ON COLUMN movies_admin.db_obj_version.version_id        IS 'Version ID'; 
COMMENT ON COLUMN movies_admin.db_obj_version.installation_date IS 'Installation date'; 
