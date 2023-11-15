*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}=    /type-dispositif-besoin-specifiques/1
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk5ODMwMTksImlhdCI6MTY5OTk4MjcxOSwianRpIjoiYjVmMjg5MTMtZDVkNC00ZTI2LWE2ZWUtNThlZDU5ODhmOWY2IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiNTY2OWI3NDAtYWYzMi00OWI5LWEyMWQtNjFkMTdiNGJlZWJlIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI1NjY5Yjc0MC1hZjMyLTQ5YjktYTIxZC02MWQxN2I0YmVlYmUiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.dEs7ukL8lHEwqEmfsP_1QbqEsFH4mWuTJRia8xVbCujVhO-q6WRdzaf_xtMTwgQcYA0VRRBDst3kl0k1v9tvqnqi_gB-66uA9iadH4-YoUaZtZ8xgzEwkLyEvgFtnB7YNbZl7lY2Ws3LF8qmvHvl5jtGhIMRB0UrfdI0_RvQGj9Gp8YWVvSTrIrS18RAMiHHC4OGKGx2s24Ygbu6Rl7r_sNFY4gvLKLxlMe_skNYZZaPhb_Wl-7TjslBndqi-ZhhPG6BwTu7EJ7W_KaWNpbMiYq1AZJbjB24B4vPyNGjnqh0IUP5xWPPs_8gt2gAXg8lp7l7tUb2hbmoNPqypYHjeg

*** Test Cases ***
Test Case
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary   customerName=fiacre
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    delete request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}



