*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../pageObjects/search_page_keywords.robot
Resource   ../resources/variables/variables_dev.robot

Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
Search Products By Keyword
    [Tags]    Search
    Enter Search Term And Submit    ${SEARCH_TERMS}
    Verify First Results Contain Search Term    ${SEARCH_TERMS}