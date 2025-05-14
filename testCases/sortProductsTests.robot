*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource   ../resources/keywords/common_keywords.robot
Resource   ../pageObjects/sort_products.robot
Resource   ../pageObjects/search_page_keywords.robot
Resource   ../resources/variables/variables_dev.robot

Test Setup    Open Browser To Home Page
Test Teardown    Close the Browser

*** Test Cases ***

Verify Product Sorting Ascending And Descending
    [Tags]    Sort
    Enter Search Term And Submit    ${SEARCH_TERMS}
    sort_products.Click Sort Ascending
    Sleep    2s
    ${ascending_prices}=    sort_products.Get All Product Prices
    ${copy_of_prices}=    Collections.Copy List    ${ascending_prices}
    Collections.Sort List    ${copy_of_prices}
    Should Be Equal    ${ascending_prices}    ${copy_of_prices}

    sort_products.Click Sort Descending
    Sleep    2s
    ${descending_prices}=    sort_products.Get All Product Prices
    ${copy_of_descending}=    Collections.Copy List    ${descending_prices}
    Collections.Sort List    ${copy_of_descending}
    Collections.Reverse List    ${copy_of_descending}
    Should Be Equal    ${descending_prices}    ${copy_of_descending}

  
