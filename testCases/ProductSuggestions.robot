*** Settings ***
Library    SeleniumLibrary
Resource   ../pageObjects/product_suggestions.robot
Suite Setup   Open Browser To Home Page
Suite Teardown   Close the Browser

*** Test Cases ***
Verify Product Suggestions Are Displayed
    [Tags]    ProductSuggestions
    Check Recommended Products Section Is Present