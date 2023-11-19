*** Settings ***
Library     RequestsLibrary
Documentation    Afficher la liste des applications

*** Variables ***
${base_url}     http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}     /profile/type-categorie-violences
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDAxNTYxMzgsImlhdCI6MTcwMDE1NTgzOCwianRpIjoiNTM0YTI1NDEtODM2OC00YmIyLTkxZmEtZTNmNTRkMDg4M2Q4IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiOTRlYzZlNzgtZWMzZS00ZGFmLTk4NjMtZWVhOTlhNGUxNDVjIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI5NGVjNmU3OC1lYzNlLTRkYWYtOTg2My1lZWE5OWE0ZTE0NWMiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.u9v4W--MTeNtlqyQe_ZobEcTyXPNaCYLLa01tw9hZ93STO_C1uCWoql3DSEKi9Idf8iggNsOcFqu10IH4R-5plE6nlrrjpVgj9IkSpvqkkxQvAV-UGY8ktkIGxshTugMgCXaDDcGbS6q9jTL3xR00aEZ5Cab5iKWcKzxKV5nEV3CnY-3Sq-uUpJrpMOsKsFJ6Jm-P9iRmdwZW_XJZurnDJhL3KDe8A8xkvpinORvQdgLj7vUqkccfM5FbuF6wz-bF2sCu5cdf_ZmvTiz-uRs6d7N3mNeDeCUXe3ihPE4Gpzd0qKMegQbIXsKJwj7wu7asAw0Md4U2HIQMWwOpDMH6w

*** Test Cases ***
Parametres
    create session    ma_session    ${base_url}
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    get request    ma_session   ${endpoint}     headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}


