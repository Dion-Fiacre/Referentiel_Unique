*** Settings ***
Library    RequestsLibrary
Library    Collections
Documentation    Créer un nouveau environnement

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api/v1/environnements
${endpoint}=
${bearerToken}=    Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk4ODY5OTYsImlhdCI6MTY5OTg4NjY5NiwianRpIjoiYjdkNjUwNmQtMWEwZC00Y2UxLWE2Y2EtOWU0ZWMzZTllY2YyIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiODQzMmNkM2EtZTM3OC00N2NhLWFmZDktN2Y1OTczOGFjN2U4IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI4NDMyY2QzYS1lMzc4LTQ3Y2EtYWZkOS03ZjU5NzM4YWM3ZTgiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.rJxkmoiC9G9si-ZH33IGlTsULLK2GOq1AJPAAMzeZrVnN9fe8j-dHLprW9U7H7wB-W3FJTxkohq3dqZRbCEAc_c8Sl77hrbe-qtMU1o1TNLCtfmg5rVfueHygWTzuGBxIkz4-7ggfefPI4G3qRR0qk7NnA7WGmvUMJrvfSsxfomfLmhN21CMmQALBXCOh5OsMqPUlMQrG8icre3jQ22RxMFA22wry8Xxg1D3JAHsw_zt5o-e26F208jjceCxFks2DXqnb-XDjAlIHuDcgqK5mqSlr72XXufBKO-_f8z7hklKNb4l6cNPAf0Kj-_L13THgK84s7op2XGCTaLTz-dS8A

*** Test Cases ***
Test Case
    TokenAuthPost

*** Keywords ***
TokenAuthPost
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary    code=test   libelle=test  description=test
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    Post Request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}
