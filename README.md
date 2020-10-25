# cloud-status-check
Check to see if all services in a cloud are operational.

## Azure Checker
Right now, the checker just checks if all services in Azure are up. This is a console application.

To run the application:
1. `go build cloudstatuscheck.go`

2. `cloudstatuscheck --azure`