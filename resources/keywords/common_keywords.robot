*** Settings ***

Library  SeleniumLibrary
Resource   ../../resources/variables/variables_dev.robot
Resource   ../../resources/locators/login_page.robot
Resource   ../../resources/locators/add_products_to_cart_page.robot

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


Handle Altcha If Present
    ${is_present}=    Run Keyword And Return Status    Element Should Be Visible    ${ALTCHA_CHECKBOX}
    Run Keyword If    ${is_present}    Click Element    ${ALTCHA_CHECKBOX}