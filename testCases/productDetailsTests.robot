*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords/common_keywords.robot
Resource   ../resources/variables/variables_dev.robot
Resource   ../pageObjects/search_page_keywords.robot
Resource   ../pageObjects/product_details_page.robot

Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***
Verify Product Details Presence
    [Tags]    ProductPage
    Enter Search Term And Submit    ${SEARCH_TERMS}
    Click On First Product
    Verify Product Image Is Visible
    Verify Product Title Is Visible
    Verify Product Description Is Visible
    Verify Product Price Is Visible
    Verify Product Reviews Section Is Visible