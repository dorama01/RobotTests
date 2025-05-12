
*** Settings ***
Documentation    Test suite for shopping cart functionality.
Library          SeleniumLibrary
Resource         ../resources/keywords/common_keywords.robot
Resource         ../pageObjects/cart_page.robot
Resource         ../pageObjects/login_page.robot

Test Setup        Ouvrir Navigateur
Test Teardown    Fermer Navigateur

*** Test Cases ***
Show Empty Cart
  [Tags]    Cart    Empty
  Accepter Les Cookies Si Présent
  Hover Over Cart Icon
  Verify Empty Cart
