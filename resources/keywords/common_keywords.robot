*** Settings ***

Library  SeleniumLibrary
Resource   ../../resources/variables/variables_dev.robot
Resource   ../../resources/locators/login_page.robot

*** Keywords ***
Open Browser To Home Page
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Accept Cookies If Present

Close the Browser
    Close Browser

Accept Cookies If Present
    ${cookie_present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${ACCEPT_COOKIES_BUTTON}    5s
    Run Keyword If    ${cookie_present}    Click Button    ${ACCEPT_COOKIES_BUTTON}
