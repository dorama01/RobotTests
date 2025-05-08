*** Settings ***
Resource    ../resources/locators/cdiscount_login_page.robot
Resource   ../resources/variables/variables_dev.robot
Library    SeleniumLibrary
*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Handle Cookie Banner
    wait Until Page Contains Element    ${EMAIL_FIELD}    timeout=10s
Enter Email And Continue
    [Arguments]    ${email}
    Input Text     ${EMAIL_FIELD}     ${email}
    Click Button   ${LOGIN_BUTTON_AFTER_EMAIL}
    Wait Until Page Contains Element    ${PASSWORD_FIELD}    timeout=10s

Enter Password And Submit
    [Arguments]    ${password}
    Input Text     ${PASSWORD_FIELD}     ${password}
    Click Button   ${LOGIN_BUTTON_AFTER_PASSWORD}
    Wait Until Page Contains Element    xpath=//body    timeout=10s

Login With Credentials
    [Arguments]    ${email}    ${password}
    Enter Email And Continue   ${email}
    Enter Password And Submit   ${password}

User Should Be Redirected To Account Page
    Wait Until Page Contains Element    ${ACCOUNT_PAGE_IDENTIFIER}    timeout=10s

Error Message Should Be Displayed
    Wait Until Page Contains Element    ${LOGIN_ERROR_MESSAGE}    timeout=10s


Handle Cookie Banner
    Wait Until Element Is Visible    ${COOKIE_ACCEPT_BUTTON}    timeout=10s
    Click Button    ${COOKIE_ACCEPT_BUTTON}
    Log    Cookie banner accepted