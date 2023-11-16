*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}=    /utilisateurs/2
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDAxNDk1NjQsImlhdCI6MTcwMDE0OTI2NCwianRpIjoiNDA5ZjgzMjgtNmJmYi00ODVjLTlmNzktNjQ0ODI1YzlhMGIwIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiY2ZiN2FiZTktN2I5My00MDZkLWJkYjYtYWU2MzhjYjVmNWVjIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiJjZmI3YWJlOS03YjkzLTQwNmQtYmRiNi1hZTYzOGNiNWY1ZWMiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.ZsBKgmNhDkztPKuy6UeAEQ81md_hbFz0yBma86ENi78-PSXyKdH11MbFICE-JkfTx2Ac4cCjTdyDChwE4J7QOQFvIza88uwUroeMd7qB6-uBTQLusUNv-1VG4pJ9DA5tnSvBWaVrv2LNDWy2NWnQkNzf6uo5XkJvcsfMRhxLhOrcLx1cXp9gwaM6HaLTuevALn0L2f35p1FSHrSD1eCGzYp1YopeIAFU06h4XXHsMPBrMWoBxfiL7mip7WaSYsaLoRf40eErDlUfpRyGLkQGD7R7rQTIlmWlBi8v1ZL6PYmHxuSfuA_EhB0IBSmAHoJWspfYbMol8tQU7zuUlLocww

*** Test Cases ***
Test Case
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary   customerName=fiacre
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    delete request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}



