
*** Settings ***
Documentation    Test suite for shopping cart functionality.
Library          SeleniumLibrary
Resource         ../resources/keywords/common_keywords.robot
Resource         ../pageObjects/cart_page.robot
Resource         ../pageObjects/login_page.robot

Test Setup        Open Browser To Home Page
Test Teardown      Close the Browser

*** Test Cases ***
Show Empty Cart
  [Tags]    Cart    Empty
  Hover Over Cart Icon
  Verify Empty Cart
