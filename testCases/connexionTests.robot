*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../pageObjects/login_page.robot

Test Setup       Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
Login With Valid Credentials
    [Tags]    HappyPath
    Navigate To Password Entry
    Enter Password And Login
    Verify Successful Login

Login With Incorrect Password
    [Tags]    Negative
    Navigate To Password Entry
    Enter Incorrect Password
    Verify Login Error Message
