*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}=    http://sige-referentiel-service.dev.defisetstrategies.dev/api
${endpoint}=    /type-diplome-pedagogiques
${bearerToken}=    Bearer

*** Test Cases ***
Test Case
    Create Session    ma_session    ${base_url}
    ${body}=    Create Dictionary   customerName=fiacre
    ${header}=    Create Dictionary    Authorization=${bearerToken}    Content-Type=application/json
    ${response}=    delete request    ma_session    ${endpoint}    data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.text}



