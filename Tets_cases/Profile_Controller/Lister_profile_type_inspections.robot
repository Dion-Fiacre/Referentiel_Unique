*** Settings ***
Library     RequestsLibrary
Documentation    Afficher la liste des applications

*** Variables ***
${base_url}     http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}     /profile/type-inspections
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDA0MDE3MzIsImlhdCI6MTcwMDQwMTQzMiwianRpIjoiYzMxNGY1ZmItZTkxMi00NGJkLTg4YWEtMjI2YWZiMzY5ZDEzIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiMzkxNGFkZmEtMWJiYy00YzBiLWE0M2ItYzI1NWI1MjVjNzY1IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiIzOTE0YWRmYS0xYmJjLTRjMGItYTQzYi1jMjU1YjUyNWM3NjUiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.OCr-8Q2-ydjhIx_iN5gx4Zytd2dL9R5XkLep8-XIUlp6HEsC7a_xAfeyilNzGf6C191SxY4_BN8Xax4GMwR3Aar75B_GyUXptKRZzX0o6cWvm-l8sXLXm1EZ2BUFCgnPRiPIm-WJbSskLFCloIxqzB1PpWQkowgvHRghwXQkwkIKKb81TijSKWUOGwRLgG6Y14qhRLYxO4Q7eCXkD3ZC-AXh5VjcmlJxmD03yU3b32zIf46PNrhfIbD8bYdTrHulGUmCOMqjOATuR2b1HRIsT6jPnxzd_9lRR9AGUWF34_CWclSi4Qg-5CTlvRTTYjYFheF4HT6fY1q7krvVeh53ag

*** Test Cases ***
Parametres
    create session    ma_session    ${base_url}
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    get request    ma_session   ${endpoint}     headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}


