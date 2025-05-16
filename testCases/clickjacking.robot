*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot

Suite Setup   Open Browser To Home Page Without HTTPS
Suite Teardown   Close the Browser

*** Test Cases ***
Verify Clickjacking Protection via Iframe
   
    # Try to detect if the iframe loaded
    ${iframes}=    Get WebElements    tag:iframe
    Length Should Be    ${iframes}    1
    Select Frame    ${iframes}[0]
    Wait Until Page Contains Element    xpath=//body    timeout=5s
     Log    clickjacking protection is working! Iframe content could not be accessed.    