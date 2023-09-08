-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER movie_db_starter_owner
WITH PASSWORD 'owner';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO movie_db_starter_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO movie_db_starter_owner;

CREATE USER movie_db_starter_appuser
WITH PASSWORD 'user';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO movie_db_starter_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO movie_db_starter_appuser;
