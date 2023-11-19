*** Settings ***
Library     RequestsLibrary
Documentation    Afficher la liste des applications

*** Variables ***
${base_url}     http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}     /profile/type-statut-matrimoniaux
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDA0MTA3MjcsImlhdCI6MTcwMDQxMDQyNywianRpIjoiM2I1N2FkODctMzBhZS00ODQwLTlkMDctZmEwOTZkNzVjZjIzIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiNDQ4NTcwMzAtMDQ3NS00YjViLWJhYjEtZTNjMmJlMmNiYTY3IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI0NDg1NzAzMC0wNDc1LTRiNWItYmFiMS1lM2MyYmUyY2JhNjciLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.KdkPag0JLvvOvNhIGdJdCxvo-If9V6Vs5cfc2Pht3Z3GeMcbcqMBfHrNsT--zrG-KsH7uFLNajweayBWC0j9LCprsL-5msyzIxEjzmN6NMYJZ4HnC1pGpG-PEuMRLpUtj1YI1VXCjf3NG3PGYpYS5_P5Kg3k1rdVxio2l-T64QAtLLq6dfeqdbFe9lr010enPJJe7evr6XypwrDrrj6iZFR8NB5-0pmuTNo4qn2qPYU667UDFbncRWrDeNKTpmNL-eB1iM6aXUArCP8yQ91xEkGJQLo9X3niuf9SjwelhwGOsDMRQKBhsN-uDdn7u8UA8Ol0W5mJO0q_TdtkojF8gQ

*** Test Cases ***
Parametres
    create session    ma_session    ${base_url}
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    get request    ma_session   ${endpoint}     headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}


