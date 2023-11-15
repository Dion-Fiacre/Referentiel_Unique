*** Settings ***
Library    RequestsLibrary
Library    Collections
Documentation    Créer une nouvelle application

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api/v1/applications
${endpoint}=
${bearerToken}=    Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk4Nzk4NTAsImlhdCI6MTY5OTg3OTU1MCwianRpIjoiNzM5YTQ0YjctZWYwMS00N2FjLWExZWQtMTk1YjkxNzQ0NzE5IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiMDEyMTg1ZGQtOTVmZi00ZDMwLTg3NzQtOTM1Y2M4NTI5ZWFmIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiIwMTIxODVkZC05NWZmLTRkMzAtODc3NC05MzVjYzg1MjllYWYiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.G-1xi1xeCTwF4JFTNe78EzSbhn_ZuUAO0Dn57lhGZV5ZuPj0D41kOPjnFmpvRMAROWeZ_1J3MIetoq5rHZkLSkczAD63qxwa7y_7xYF2TplfTVzlktmanZ3Ju9afdTO_lBMxg-X4iLurTRbTPy9XQDnC4Oone-WzP5wSERNuPjwubKrF0tW6LPL_3j5YvcY3IPpzaeeiaOBVxFkweDpAybCnYVtSSIveoJAPTiAyTxOy1AZhdd_hKGAZu_VswX0mEfFusG67iXN72cSUK4ugUJm5WLyL0yboV3Y4l870n3-DfwsHE3xdV4qGXYo1ZIvskq1xuSBN3ZliWIBVgKsbjg

*** Test Cases ***
Test Case
    TokenAuthPost

*** Keywords ***
TokenAuthPost
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary    id=a0de5cf4-7bc0-438c-86d9-344deb4d2a19   code=string  libelle=string  description=string
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    Post Request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}
