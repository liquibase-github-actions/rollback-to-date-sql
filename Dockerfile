# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.19.1
COPY rollback_to_date_sql.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
