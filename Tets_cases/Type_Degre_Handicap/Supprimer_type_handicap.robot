*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api/type-departaments
${endpoint}=    /type-departaments
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk5NzQ5MzEsImlhdCI6MTY5OTk3NDYzMSwianRpIjoiZjc2MjM5N2QtNDJlZC00NmJkLTg1YTYtZjdiYTBjNDgwZGUxIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiN2MyMjY2Y2YtZmUwYy00MmZkLWI5NmMtMjhmODQzODMwZjM4IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI3YzIyNjZjZi1mZTBjLTQyZmQtYjk2Yy0yOGY4NDM4MzBmMzgiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.KG9KAxu09Gtace0HyRnUCPP8vLLgQgFiYng8LyA1zrIBbsHBDCSn7aObTrlYa2zJKRNs2azca918AHSrAtGfiVG89soLu8XgqjjeqZca38ND16tLVCcQd973O2j-V_TJ6cVqHVB2I2yalB2BtuyQNijtajBEXuWPV4aVDJayxgRk5igS6x6Tt1_T8IPctaNazDMcovTfXv_QNmUj05_74AvdLK2ddgIukYVU16KZTwfMFX7MM3wx4Qsfp43Z4kcN-hSpsaxhWrl70DSTNMXsjX0KkR718Pw47fc0YfUj0YPk6cIpMHoS5cR6dM86oV42HYvf18Z0kssR-Fl_BqR5NA

*** Test Cases ***
Test Case
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary   customerName=fiacre
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    delete request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}



