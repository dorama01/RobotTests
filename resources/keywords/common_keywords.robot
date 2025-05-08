*** Settings ***
Resource    ../resources/variables/variables_dev.robot
Resource    ../pageobjects/cdiscount_login_page_keywords.robot

*** Keywords ***
Given the user navigates to the login page
    Open Browser To Login Page

When the user logs in with valid credentials
    Login With Credentials    ${VALID_EMAIL}    ${VALID_PASSWORD}

When the user logs in with invalid credentials
    Login With Credentials    ${INVALID_EMAIL}    ${INVALID_PASSWORD}

Then the user should be redirected to their account page
    User Should Be Redirected To Account Page

Then an error message should be displayed
    Error Message Should Be Displayed

Then the chrome browser is closed
    Close Browser
