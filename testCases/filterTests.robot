*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../pageObjects/search_page_keywords.robot
Resource   ../pageObjects/sort_products.robot
Resource   ../pageObjects/filter_products.robot
Resource   ../resources/locators/filter_page.robot
Resource   ../resources/variables/variables_dev.robot

Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
Verify Product Prices Are Within Selected Filter Range
    [Tags]    Filter    Price
    Enter Search Term And Submit    ${SEARCH_TERMS}
    Select Price Filter Between 100 And 200
    Wait Until Page Contains Element    ${PRICE_SPAN}    timeout=10s
    Sleep   5s
    Reload Page
    ${prices}=    Get All Product Prices
    Should Prices Be In Range    ${prices}    100    200
    