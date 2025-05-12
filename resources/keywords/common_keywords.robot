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
    Wait Until Element Is Visible    ${ACCEPT_COOKIES_BUTTON}    timeout=15s
    Click Button    ${ACCEPT_COOKIES_BUTTON}