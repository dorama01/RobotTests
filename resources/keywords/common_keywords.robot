*** Settings ***

Library  SeleniumLibrary
Resource   ../../resources/variables/variables_dev.robot
Resource   ../../resources/locators/login_page.robot
Resource  ../../resources/locators/cart_page.robot
*** Keywords ***
Open Browser To Home Page
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Accept Cookies If Present

Open Browser To Home Page Without HTTPS
    Open Browser    ${BASE_URL_WITHOUT_HTTPS}    chrome
    Maximize Browser Window
    Accept Cookies If Present


Close the Browser
    Close Browser
Handle Captcha If Present
    ${is_present}=    Run Keyword And Return Status    Element Should Be Visible    ${CAPTCHA_CHECKBOX}
    Run Keyword If    ${is_present}    Click Element    ${CAPTCHA_CHECKBOX}

Accept Cookies If Present
    ${cookie_present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${ACCEPT_COOKIES_BUTTON}    5s
    Run Keyword If    ${cookie_present}    Click Button    ${ACCEPT_COOKIES_BUTTON}

