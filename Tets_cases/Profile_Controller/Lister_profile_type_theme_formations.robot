*** Settings ***
Library     RequestsLibrary
Documentation    Afficher la liste des applications

*** Variables ***
${base_url}     http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}     /profile/type-theme-formations
${bearerToken}=    Bearer   eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDUENBalAxM3lKbGdoSXJZYkp0QnBQc1NZeVBNMHRSaGpNdHJVUkh1TXJ3In0.eyJleHAiOjE3MDA0MTA4MzIsImlhdCI6MTcwMDQxMDUzMiwianRpIjoiNDUzNDQ3Y2QtZTFkOS00M2I0LWJmMmItMTQ1OGRlODE0MDRjIiwiaXNzIjoiaHR0cHM6Ly9rZXljbG9hay5kZXYuZGVmaXNldHN0cmF0ZWdpZXMuZGV2L3JlYWxtcy9zaWdlbWVuYSIsImF1ZCI6WyJhY2NvdW50IiwiYXhlbG9yLWRldi10ZXN0Il0sInN1YiI6IjJhMDAyZmRiLTkzMzEtNDc2Zi05YzFjLWE2MDQ2NDBiNmIyMyIsInR5cCI6IkJlYXJlciIsImF6cCI6InBvcnRhaWwtYmFja29mZmljZS1kZXYiLCJzZXNzaW9uX3N0YXRlIjoiNzZjNmQ1ZmUtMmZhNS00ZjZiLWE2N2EtNWI5NjFlMDhlN2Q0IiwiYWNyIjoiMSIsImFsbG93ZWQtb3JpZ2lucyI6WyIqIl0sInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsImRlZmF1bHQtcm9sZXMtc2lnZW1lbmEiLCJ1bWFfYXV0aG9yaXphdGlvbiIsInJvbGUucmgiXX0sInJlc291cmNlX2FjY2VzcyI6eyJhY2NvdW50Ijp7InJvbGVzIjpbIm1hbmFnZS1hY2NvdW50IiwibWFuYWdlLWFjY291bnQtbGlua3MiLCJ2aWV3LXByb2ZpbGUiXX0sImF4ZWxvci1kZXYtdGVzdCI6eyJyb2xlcyI6WyJBZG1pbiIsInJvbGUucmgiXX19LCJzY29wZSI6InByb2ZpbGUgZW1haWwiLCJzaWQiOiI3NmM2ZDVmZS0yZmE1LTRmNmItYTY3YS01Yjk2MWUwOGU3ZDQiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsIm5hbWUiOiJFdGllbiBHaGlzbGFpbiBHaGlzbGFpbiIsInByZWZlcnJlZF91c2VybmFtZSI6IjAxODA2NnciLCJnaXZlbl9uYW1lIjoiRXRpZW4gR2hpc2xhaW4iLCJmYW1pbHlfbmFtZSI6IkdoaXNsYWluIiwiZW1haWwiOiJnaGlzbGFpbmV0aWVuQGdtYWlsLmNvbSJ9.D2bm-lkrs8JGYOd-3_ahhBAtqfh4fmHWufIr_qUScIqSSk6vVTu_c5l_ClBiDdyZD9E-COZcJVfLRjPIaJDWZbh3mLAyKZuliwY4js8jA0pckPtts39QIqwigz3lNEGCi9ksm4OeV0fa8dtdEA0qXQx-flYHVxkSycaDCzKelD1e6ia5X1pDq-OvSXzut6nx6zaopnAW62GTh5vdTUKBIsSvAVUqTcEakAJ5hNNG2Ehvr6pU2sRXabupO11RtWynAn-yCtpT4MOpsGuym3Cm3-QRT13xrX0pAg-k0Q4X2C-AOELglYLVwggStaodVP_ZYN-skM5FaLKjBTDTFQr8yQ

*** Test Cases ***
Parametres
    create session    ma_session    ${base_url}
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    get request    ma_session   ${endpoint}     headers=${header}

    log to console    ${response.status_code}
    log to console    ${response.content}
    log to console    ${response.headers}


