*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}=    /type-tranche-age-eleves/2
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDAxNTAyNTAsImlhdCI6MTcwMDE0OTk1MCwianRpIjoiYTI0OGRjNTctMDhlZi00MTg2LThlZTctZmVmYTYzOGQyZGY5IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiNTdjYTVkZWQtOGI4ZC00ZGE3LWI5ZDMtZmM0Y2Y3MmFhOTdiIiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI1N2NhNWRlZC04YjhkLTRkYTctYjlkMy1mYzRjZjcyYWE5N2IiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.QaYkVQxhLwC82xwvBYMpKBY8EfSNs8JEp9OpCLp4XKUHhjt9tcgfOSNvz6ETnV2eTtnnLWnjK2rS4G02bjSUboYNpv9XapRR1haA7dvV3AgW1R_tgBcP04HgN7dILwLbHcUbDcqyNW7ujvzBonnkQdjYEMCjD5aU9I4DATluQtapFz2yA11lWO6XUfKuyaO7Pppcy1JfRgV6kL8L2FbHDv4zD5OzJYzBowiaLw9m1J9ZgB4mcc6J3bhaLFMDtt6AnptOXdWR_rl5x6Oj_v3ECAr5TKfOpSa7RFyaD9BLXIdbQDlTrWUsAecvSOVPJ1kNyUBe_8s7Ot6EUWTZaOK8FA

*** Test Cases ***
Test Case
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary   customerName=fiacre
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    delete request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}



