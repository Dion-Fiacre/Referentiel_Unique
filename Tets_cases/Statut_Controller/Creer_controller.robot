*** Settings ***
Library    RequestsLibrary
Library    Collections
Documentation    Créer une nouvelle application

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api/v1/statuts
${endpoint}=
${bearerToken}=    Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk4OTAwMzYsImlhdCI6MTY5OTg4OTczNiwianRpIjoiYjdlNzFhZTItYzE4Ni00NDlhLWJmNDgtNDMwMTVlYzRmZDQ4IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiMGU4MDhhY2EtYzYzOC00NzdiLTk2ZDItYWU4MTlkNWUxYTI1IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiIwZTgwOGFjYS1jNjM4LTQ3N2ItOTZkMi1hZTgxOWQ1ZTFhMjUiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.oYfDk-Lq1kI17DgXaypJDrO-72NtCpvLjC8_kiW02iRPsWETHN71XukElcFDejnRrBrB726YJkJYlpajMikItfXTABS5hr2SjbdW0cF1f1cMtj8EKq46sEMZp9ozQiK1urgR4edEejxe8X_ICZsLExqCy9W2divOG9kHNQnf-r9QxTcR8wyuIWvtXiTeMGgUtY1OJrDUe2zS9gN2khtWDe9cx4LVOSrvTVecR_tM2pJUeC1yJE92uc5WFR-mLEbpGms_Xj-E7tHcBjw_N7RHHPuqqh3rz1bEwRU_hYdDlHMJY3eyNDdVuvqb2V2KWEVA0MYPdI1ZzfDEK2A9eH5Gmg

*** Test Cases ***
Test Case
    TokenAuthPost

*** Keywords ***
TokenAuthPost
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary    code=string  libelle=string  description=string
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    Post Request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}
