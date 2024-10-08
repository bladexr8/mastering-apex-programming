## Apex Streaming Logs

Suggested Debug Log Settings for Apex Code Troubleshooting:

- **NONE**: NBA, Validation, Workflow, Callout, Visualforce, Wave
- **INFO**: Database, Apex Profiling
- **DEBUG**: System
- **FINE**: Apex Code

Set Up Log Streaming in Terminal:

`$ sfdx force:apex:log:tail --color`

Set Up Log Streaming in Terminal with a custom DEV_DEBUG Log Level:

`$ sfdx force:apex:log:tail --color -d DEV_DEBUG`

Filter Log Stream to only show System.Debug Statements:

`$ sfdx force:apex:log:tail --color -d DEV_DEBUG | grep USER_DEBUG`

