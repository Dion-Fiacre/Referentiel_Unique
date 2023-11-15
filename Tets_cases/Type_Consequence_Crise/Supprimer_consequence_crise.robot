*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}=    /type-consequences-crises/1
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE2OTk5MjU5NzYsImlhdCI6MTY5OTkyNTY3NiwianRpIjoiMWU1MjcxMTAtYTkxZC00M2JiLThmYTAtNmVjMjcxZjQ5NDM5IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiNDc1YmU0MzgtZmFkZS00MTgzLWI3MmMtYTc2NTcwYWE1MjRlIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI0NzViZTQzOC1mYWRlLTQxODMtYjcyYy1hNzY1NzBhYTUyNGUiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.jnw1JpoYtqPQXdymjLCLDe3nftwmDiz9nJT9qENX0bzE_TbPv3mK-dEYcvQB6RKco1kYj5fMGMJcztESClEtqe90bYMYZplWT4jP8yrENsXq2YBwDYEAvbDquEQzADG0g6lmtlsToX-uehPTu_RdYnVk354W7nY5uNXJwvPJJbJAXiusc0-S7dz2i8U4a-2BmSuuV0u3jO3C4bFnfJNXnrWKZMcNoLAO_sr3a4dmpG4UvUe7afKlvTMj_GJrRSwZEsXhngZ5zICBHe2LjAgBz2y0XRIrI0axNf8ljoKgb6_Sd6gK1DmNjaRtBdCWL7mMd4ek6sjAVjKevjcOfz_Wtw

*** Test Cases ***
Test Case
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary   customerName=fiacre
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    delete request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}



