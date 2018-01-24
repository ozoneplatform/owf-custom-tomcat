## H2 (embedded, in-memory / file)

Configuration file: `$TOMCAT_HOME/lib/config/ozone-framework_h2.yml`

Windows Usage:
```
start.bat [/dev] [/init]
  /init   Pre-populate the database with the initial data (only use on the first launch!)
  /dev    Start in `development` mode
```

## PostgreSQL

__IMPORTANT:__ To use PostgreSQL, the driver JAR must be copied from `$BUNDLE_ROOT/drivers/postgresql-*.jar` to the
`$TOMCAT_HOME/lib/` directory.

Configuration file: `$TOMCAT_HOME/lib/config/ozone-framework_postgresql.yml`

Usage:
```
start-pg.bat [/dev] [/init]
  /init   Pre-populate the database with the initial data (only use on the first launch!)
  /dev    Start in `development` mode
```

## Linux: single script

__IMPORTANT:__ To use any database (other than H2), the driver JAR must be copied from `$BUNDLE_ROOT/drivers/postgresql-*.jar` to the `$TOMCAT_HOME/lib/` directory.

Configuration files will be located at: `$TOMCAT_HOME/lib/config/`
Linux Usage:
```
./start.sh [dev] [init] [db [--mysql | --h2 | --pg | --oracle] ]
  init   Pre-populate the database with the initial data (only use on the first launch!)
  dev    Start in `development` mode
  db	 Takes an additional parameter for type of database to be used:  [--mysql | --h2 | --pg | --oracle]
```
