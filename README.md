# Liquibase Rollback To Date Sql Action
Official GitHub Action to run Liquibase Rollback To Date Sql in your GitHub Action Workflow. For more information on how rollback to date sql works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Rollback To Date Sql
Generate the SQL to rollback changes made to the database based on the specific date
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/rollback-to-date-sql@v4.22.0
  with:
    # The root changelog file
    # string
    # Required
    changelogFile: ""

    # Date to rollback changes to
    # string
    # Required
    date: ""

    # The JDBC database connection URL
    # string
    # Required
    url: ""

    # 
    # string
    # Optional
    changeExecListener: ""

    # Fully-qualified class which specifies a ChangeExecListener
    # string
    # Optional
    changeExecListenerClass: ""

    # Path to a properties file for the ChangeExecListenerClass
    # string
    # Optional
    changeExecListenerPropertiesFile: ""

    # 
    # string
    # Optional
    changelogParameters: ""

    # Context string to use for filtering
    # string
    # Optional
    contexts: ""

    # 
    # string
    # Optional
    database: ""

    # The default catalog name to use for the database connection
    # string
    # Optional
    defaultCatalogName: ""

    # The default schema name to use for the database connection
    # string
    # Optional
    defaultSchemaName: ""

    # The JDBC driver class
    # string
    # Optional
    driver: ""

    # The JDBC driver properties file
    # string
    # Optional
    driverPropertiesFile: ""

    # Label expression to use for filtering
    # string
    # Optional
    labelFilter: ""

    # Control whether names of objects in the default catalog are fully qualified or not. If true they are. If false, only objects outside the default catalog are fully qualified
    # bool
    # Optional
    outputDefaultCatalog: ""

    # Control whether names of objects in the default schema are fully qualified or not. If true they are. If false, only objects outside the default schema are fully qualified
    # bool
    # Optional
    outputDefaultSchema: ""

    # Password to use to connect to the database
    # string
    # Optional
    password: ""

    # Rollback script to execute
    # string
    # Optional
    rollbackScript: ""

    # 
    # bool
    # Optional
    skipDatabaseStep: ""

    # Username to use to connect to the database
    # string
    # Optional
    username: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase rollback to date sql action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/rollback-to-date-sql@v4.22.0
    with:
      changelogFile: ""
      date: ""
      url: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
