*** Settings ***
Library     RequestsLibrary
Documentation    Afficher la liste des applications

*** Variables ***
${base_url}     http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}     /v1/applications?page=0&size=10
${bearerToken}=    Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk4NzgxODEsImlhdCI6MTY5OTg3Nzg4MSwianRpIjoiYTY2ZTcwNjgtYjBlMC00NDk2LWFjMDAtN2IwMTFhMTRjYTAzIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiNGYxZDJmY2QtNDU2MC00NzA1LTkyMjctOTY3MDdlOWQzZjdmIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI0ZjFkMmZjZC00NTYwLTQ3MDUtOTIyNy05NjcwN2U5ZDNmN2YiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.E0-WXZAmiRpBuzGmUyk8YhNJFupYcxhvUwzqMpwz2i7ANWv69Mfy-RUCxKOSExBo3Yv8Z7TedFgMD7RSB-Rgccj3N4j6nAOtV4RzpWYQiPRHCX_TLHtRBHxmR9yemrXFlpuqMYGeURDOsW-pX_b1d4KawN3KxsyGNmcIT5pjDNDN2PI7s1Q2x4h2-NTaDnGKhqxbWoyN0lW6Lu_Ebu0ItUx8SOF9kGczkKYbbnX1cQ_Tc_dMufav3XSqmLhOA7i-J56UQFyNVE5i56ZdZOlPoIJo3TxuCRCUV9go8EBTa9M-obsAiA-hPjCvFmzvQFcP-NNSSvWO0bhDtJxqOe2BPA

*** Test Cases ***
Parametres
    create session    ma_session    ${base_url}
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    get request    ma_session   ${endpoint}     headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}


