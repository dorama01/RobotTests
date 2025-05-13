*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/variables/variables_dev.robot

Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
Desktop View Test
    Set Window Size    1920    1080
    Sleep    2
    Page Should Contain Element    xpath=//header

Tablet View Test
    Set Window Size    768    1024
    Sleep    2
    Page Should Contain Element    xpath=//header

Mobile View Test
    Set Window Size    375    667
    Sleep    2
    Page Should Contain Element    xpath=//header
