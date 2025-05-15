

*** Settings ***
Documentation     Test suite for verifying cart functionality after adding products.
Library           SeleniumLibrary
Resource          ../pageObjects/cart_page.robot
Resource          ../resources/keywords/common_keywords.robot

Suite Setup       Open Browser To Home Page
Suite Teardown    Close the Browser
*** Test Cases ***

Show Empty Cart
  [Tags]    Cart    Empty
  Hover Over Cart Icon
  Verify Empty Cart

Add Products And Verify Cart
  [Tags]    Add to Cart
    Add First N Products To Cart    3
    Hover Over Cart And Verify Items  3



