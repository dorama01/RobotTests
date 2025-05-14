*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators/accessibilite_page.robot
Resource   ../resources/variables/variables_dev.robot

*** Keywords ***
Click And Verify Footer Link
    [Arguments]    ${locator}    ${expected_url}
    Scroll Element Into View    ${locator}
    Click Element    ${locator}
    Wait Until Keyword Succeeds    10s    1s    Location Should Be    ${expected_url}
    Go Back