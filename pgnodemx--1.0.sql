/* contrib/pgnodemx/pgnodemx--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pgnodemx" to load this file. \quit

CREATE FUNCTION cgroup_mode()
RETURNS TEXT
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_mode'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_path
(
  OUT controller TEXT,
  OUT path TEXT
)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_path'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_process_count()
RETURNS INT4
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_process_count'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_scalar_bigint(TEXT)
RETURNS BIGINT
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_scalar_bigint'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_scalar_float8(TEXT)
RETURNS FLOAT8
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_scalar_float8'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_scalar_text(TEXT)
RETURNS TEXT
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_scalar_text'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_setof_bigint(TEXT)
RETURNS SETOF BIGINT
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_setof_bigint'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_setof_text(TEXT)
RETURNS SETOF TEXT
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_setof_text'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_setof_kv
(
  IN filename TEXT,
  OUT key TEXT,
  OUT val BIGINT
)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_setof_kv'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

CREATE FUNCTION cgroup_setof_nkv
(
  IN filename TEXT,
  OUT key TEXT,
  OUT subkey TEXT,
  OUT avg10 FLOAT8
)
RETURNS SETOF record
AS 'MODULE_PATHNAME', 'pgnodemx_cgroup_setof_nkv'
LANGUAGE C STABLE STRICT PARALLEL RESTRICTED;

