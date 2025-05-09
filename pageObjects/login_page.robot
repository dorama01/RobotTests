*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/login_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***

Click On Sign In
    Wait Until Element Is Visible    ${SIGN_IN_LINK}    timeout=10s
    Click Element    ${SIGN_IN_LINK}

Wait For Login Page Redirection
    Wait Until Location Contains    /Account/LoginLight.html    timeout=10s

Enter Email And Continue
    Wait Until Element Is Visible    ${EMAIL_INPUT}    timeout=10s
    Input Text    ${EMAIL_INPUT}    ${EMAIL}
    Click Element    ${VALIDATE_EMAIL_BUTTON}
    Wait Until Element Is Visible    ${PASSWORD_INPUT}    timeout=10s

Navigate To Password Entry
    Click On Sign In
    Wait For Login Page Redirection
    Enter Email And Continue

Enter Password And Login
    Wait Until Element Is Visible    ${PASSWORD_INPUT}    timeout=10s
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Enter Incorrect Password
    Input Text    ${PASSWORD_INPUT}    ${WRONG_PASSWORD}
    Click Element    ${LOGIN_BUTTON}

Verify Successful Login
    Wait Until Location Is    ${ACCOUNT_HOME_URL}    timeout=10s
    Location Should Be    ${ACCOUNT_HOME_URL}

Verify Login Error Message
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    timeout=10s
    Element Text Should Be    ${ERROR_MESSAGE}    Le mot de passe ne correspond pas à l'adresse email que vous avez indiquée. Veuillez en saisir un nouveau.
