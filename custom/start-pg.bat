@ECHO OFF
SETLOCAL


SET GRAILS_ENV=production

SET CONFIG_PATH="classpath:/config/ozone-framework_postgresql.yml"

SET AUTO_USER=testAdmin1


:parseOptions
IF NOT "%1"=="" (
    IF "%1"=="/dev" (
        SET GRAILS_ENV=development
    )
    IF "%1"=="/init" (
        SET INIT_DB=true
    )
    SHIFT
    GOTO :parseOptions
)


SET JAVA_OPTS=%JAVA_OPTS% -Dgrails.env=%GRAILS_ENV%
SET JAVA_OPTS=%JAVA_OPTS% -Dspring.config.location=%CONFIG_PATH%

IF "%INIT_DB%"=="true" (
  SET JAVA_OPTS=%JAVA_OPTS% -Dowf.db.init=true
)

IF "%GRAILS_ENV%"=="development" (
  SET JAVA_OPTS=%JAVA_OPTS% -Duser=%AUTO_USER%
)


bin\catalina.bat run

