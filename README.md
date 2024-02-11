# Nginx with backend configuration file
## Problem
Where a DNS is not available; only IP addresses.
## Solution
Use a Lambda to query 1+n DNS names and insert the resulting IP addresses into the backend file. Re-start the containers.
