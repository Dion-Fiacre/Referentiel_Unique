*** Settings ***
Library     RequestsLibrary
Documentation    Afficher la liste des applications

*** Variables ***
${base_url}     http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}     /profile/type-bacs
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDAxNTUyMjUsImlhdCI6MTcwMDE1NDkyNSwianRpIjoiMDAyOThkYmEtNmIxNS00NWE1LTgwZWUtNzJjZmFmZWY1NjY4IiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiYzZlMWM1YmItNGVlMS00ZDVmLTgyYjEtN2NkMDQwMmQyNzI3IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiJjNmUxYzViYi00ZWUxLTRkNWYtODJiMS03Y2QwNDAyZDI3MjciLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.PRHDvlwUak3-dKLTOZ0muR2Gmc5FUKSv0oeS9hORJKf8FY01McgOVzlPJBRKNXP9nK-Mi8rBTcLOkHdq8bDgG4ZA54iSvUUZKOOcSez2wouS1T5kVzWgQk_EmVZF4vIpCjtJMljCUaBi79KQhfM0XYTl5oD2IymID3WUmML8LIRc4LT2__YkP0DAqvrx1RGMHaOUSxqcIcE6O6Kt4nzC5VHbgUPiXoQi8EUy6IfPGsA5Q2if66p2An0Va0ofUZwbKLzR_9dOoakZnZcu1fHTZZi_3se57Vlqw2rPkWs3vBlWJ1F5_o3vn4iFhdK_UrQ4Z5X-po30vJiFnPIUtpteJA

*** Test Cases ***
Parametres
    create session    ma_session    ${base_url}
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    get request    ma_session   ${endpoint}     headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}

