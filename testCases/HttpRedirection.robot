*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot

Suite Setup   Open Browser To Home Page Without HTTPS
Suite Teardown   Close the Browser


*** Test Cases ***
Verify HTTP to HTTPS Redirection
    ${current_url}=    Get Location
    Should Start With    ${current_url}   ${BASE_URL}



    
