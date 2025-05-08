

*** Settings ***

Resource    ../resources/keywords/common_keywords.robot
Library    SeleniumLibrary

Suite Teardown  Close All Browsers

*** Test Cases ***
Valid Login
    [Tags]    smoke
    Given the user navigates to the login page
    When the user logs in with valid credentials
    Then the user should be redirected to their account page
    Then the chrome browser is closed


Invalid Login
    [Tags]    regression
    Given the user navigates to the login page
    When the user logs in with invalid credentials
    Then an error message should be displayed 
    Then the chrome browser is closed